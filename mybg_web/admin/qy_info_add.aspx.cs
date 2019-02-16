using System;
using System.Collections.Generic;
using System.Data;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin_qy_info_add : System.Web.UI.Page
{
    public string Id,Src,Src2,rz;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            Date();
        }
    }
    private void Date()
    {
        if (!string.IsNullOrEmpty(Request.QueryString["tg"]))
        {
            DAL.SQLHelper.GetExecute("update qy_info set qualifications='1' where Id='" + Request.QueryString["tg"] + "'");
            Response.Write("<script>alert('已通过!');</script>");
        }

        if (!string.IsNullOrEmpty(Request.QueryString["jj"]))
        {
            DAL.SQLHelper.GetExecute("update qy_info set qualifications='0' where Id='" + Request.QueryString["jj"] + "'");
            Response.Write("<script>alert('已拒绝!');</script>");
        }

        if (!string.IsNullOrEmpty(Request.QueryString["Id"]))
        {
            Id = Request.QueryString["Id"];
            DataTable dt2 = DAL.SQLHelper.GetDtBySql("select * from qy_info where Id=" + Request.QueryString["Id"] + "");
            name.InnerText = dt2.Rows[0]["name"].ToString();                            //企业全称
            hy.InnerText = dt2.Rows[0]["hy"].ToString();                                //从事行业
            pr.InnerText = dt2.Rows[0]["pr"].ToString();                                //企业性质
            mun.InnerText = dt2.Rows[0]["mun"].ToString();                               //企业规模
            DataTable dtA = DAL.SQLHelper.GetDtBySql("select name from city_cache where Id='" + dt2.Rows[0]["provinceid"].ToString() + "' ");
            DataTable dtB = DAL.SQLHelper.GetDtBySql("select name from city_cache where Id='" + dt2.Rows[0]["cityid"].ToString() + "' ");
            DataTable dtC = DAL.SQLHelper.GetDtBySql("select name from city_cache where Id='" + dt2.Rows[0]["three_cityid"].ToString() + "' ");
            provinceid.InnerText = dtA.Rows[0][0].ToString() + " " + dtB.Rows[0][0].ToString() + " " + dtC.Rows[0][0].ToString();

            address.InnerText = dt2.Rows[0]["address"].ToString();                           //公司地址
            linkman.InnerText = dt2.Rows[0]["linkman"].ToString();                         //联系人
            linktel.InnerText = dt2.Rows[0]["linktel"].ToString();                          //联系手机
            linkphone.InnerText = dt2.Rows[0]["linkphone"].ToString();                     //固定电话
            contentshow.InnerText = dt2.Rows[0]["content"].ToString();                           //企业简介
            welfareshow.InnerText = dt2.Rows[0]["welfareshow"].ToString();             //公司福利
            linkmail.InnerText = dt2.Rows[0]["linkmail"].ToString();                       //企业邮箱
            website.InnerText = dt2.Rows[0]["website"].ToString();                         //企业网址
            linkjob.InnerText = dt2.Rows[0]["linkjob"].ToString();                       //联系人职位
            linkqq.InnerText = dt2.Rows[0]["linkqq"].ToString();                         //联系人QQ
            busstops.InnerText = dt2.Rows[0]["busstops"].ToString();                      //公交站点
            sdate.InnerText = dt2.Rows[0]["sdate"].ToString();                            //创办时间
            money.InnerText = dt2.Rows[0]["money"].ToString()+"万";                            //注册资金
            time.InnerText = dt2.Rows[0]["time"].ToString();                            //注册资金
            recommend.InnerText = "否";                                                  //推荐职业
            if (dt2.Rows[0]["recommend"].ToString() == "1")
            {
                recommend.InnerText = "是";
            }
            Src = "../images/detailnoimg.png";
            if (dt2.Rows[0]["preview"].ToString() != "") 
            {
                Src = "../"+dt2.Rows[0]["preview"].ToString();
            }
            if (dt2.Rows[0]["qualificationssrc"].ToString() != "")
            {
                Src2 = "../" + dt2.Rows[0]["qualificationssrc"].ToString();
            }
            if (dt2.Rows[0]["qualifications"].ToString() == "1") 
            { 
                rz="已认证";
            }else
            {
                rz = "未认证";
            }
        }
        
    }

}