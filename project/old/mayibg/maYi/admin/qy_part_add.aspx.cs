using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin_qy_job_add : System.Web.UI.Page
{
    public string Id;
    //public string Array1, Array2, Array3, Array4, Array5, Array6, Array7, Array8, Array9, Array10, Array11, Array12, Array13, Array14, Array15, Array16, Array17, Array18, Array19, Array20, Array21;
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
            DAL.SQLHelper.GetExecute("update qy_part set audits='1' where Id='" + Request.QueryString["tg"] + "'");
            Response.Write("<script>alert('已通过!');</script>");
        }

        if (!string.IsNullOrEmpty(Request.QueryString["jj"]))
        {
            DAL.SQLHelper.GetExecute("update qy_part set audits='2' where Id='" + Request.QueryString["jj"] + "'");
            Response.Write("<script>alert('已拒绝!');</script>");
        }

        if (!string.IsNullOrEmpty(Request.QueryString["Id"]))
        {
            Id = Request.QueryString["Id"];
            DataTable dt2 = DAL.SQLHelper.GetDtBySql("select * from qy_part where Id=" + Request.QueryString["Id"] + "");
            name.InnerText = dt2.Rows[0]["name"].ToString();                            //职位名称
            type.InnerText = dt2.Rows[0]["type"].ToString();                         //工作类型
            number.InnerText = dt2.Rows[0]["number"].ToString();                     //招聘人数
            sex.InnerText = dt2.Rows[0]["sex"].ToString();                      //性别要求
            salary_typetext.InnerText = dt2.Rows[0]["salary_typetext"].ToString();                       //兼职薪水
            billing_cycle.InnerText = dt2.Rows[0]["billing_cycle"].ToString();                                 //结算周期
            DataTable dtA = DAL.SQLHelper.GetDtBySql("select name from city_cache where Id='" + dt2.Rows[0]["provinceid"].ToString() + "' ");
            DataTable dtB = DAL.SQLHelper.GetDtBySql("select name from city_cache where Id='" + dt2.Rows[0]["cityid"].ToString() + "' ");
            DataTable dtC = DAL.SQLHelper.GetDtBySql("select name from city_cache where Id='" + dt2.Rows[0]["three_cityid"].ToString() + "' ");
            cityid.InnerText = dtA.Rows[0][0].ToString() + " " + dtB.Rows[0][0].ToString() + " " + dtC.Rows[0][0].ToString();                         //工作区域
            address.InnerText = dt2.Rows[0]["address"].ToString();                               //详细地址
            linkman.InnerText = dt2.Rows[0]["linkman"].ToString();                         //联系人
            linktel.InnerText = dt2.Rows[0]["linktel"].ToString();                               //联系手机
            time.InnerText = dt2.Rows[0]["time"].ToString();                               //时间
            
            audits.InnerText = "否";                                                     //审核码
            if (dt2.Rows[0]["audits"].ToString() == "1")
            {
                audits.InnerText = "是";
            }
            delivery.InnerText = dt2.Rows[0]["delivery"].ToString();                     //投递次数
            recommend.InnerText = "否";                                                  //推荐职位
            if (dt2.Rows[0]["recommend"].ToString() == "1")
            {
                recommend.InnerText = "是";
            }
            nottop.InnerText = "否";                                                     //置顶
            if (dt2.Rows[0]["nottop"].ToString() == "1") 
            {
                nottop.InnerText = "是"; 
            }
            if (dt2.Rows[0]["descriptiontext"].ToString() == "长期招聘")                 //有效期    
            {
                descriptiontext.InnerText = dt2.Rows[0]["descriptiontext"].ToString();
            }
            else 
            {
                descriptiontext.InnerText = dt2.Rows[0]["descriptionsdate"].ToString() + "-" + dt2.Rows[0]["descriptionedate"].ToString();
            }                                          
            contentshow.InnerText = dt2.Rows[0]["contenttext"].ToString();               //职位描述

            //string s = dt2.Rows[0]["worktime"].ToString();
            //string[] sArray = s.Split(',');
            //for (int j = 0; j < sArray.Length; j++)
            //{
            //    if (sArray[j] == "0101") { Array1 = "<i></i>"; }
            //    if (sArray[j] == "0201") { Array2 = "<i></i>"; }
            //    if (sArray[j] == "0301") { Array3 = "<i></i>"; }
            //    if (sArray[j] == "0401") { Array4 = "<i></i>"; }
            //    if (sArray[j] == "0501") { Array5 = "<i></i>"; }
            //    if (sArray[j] == "0601") { Array6 = "<i></i>"; }
            //    if (sArray[j] == "0701") { Array7 = "<i></i>"; }
            //    if (sArray[j] == "0102") { Array8 = "<i></i>"; }
            //    if (sArray[j] == "0202") { Array9 = "<i></i>"; }
            //    if (sArray[j] == "0302") { Array10 = "<i></i>"; }
            //    if (sArray[j] == "0402") { Array11 = "<i></i>"; }
            //    if (sArray[j] == "0502") { Array12 = "<i></i>"; }
            //    if (sArray[j] == "0602") { Array13 = "<i></i>"; }
            //    if (sArray[j] == "0702") { Array14 = "<i></i>"; }
            //    if (sArray[j] == "0103") { Array15 = "<i></i>"; }
            //    if (sArray[j] == "0203") { Array16 = "<i></i>"; }
            //    if (sArray[j] == "0303") { Array17 = "<i></i>"; }
            //    if (sArray[j] == "0403") { Array18 = "<i></i>"; }
            //    if (sArray[j] == "0503") { Array19 = "<i></i>"; }
            //    if (sArray[j] == "0603") { Array20 = "<i></i>"; }
            //    if (sArray[j] == "0703") { Array21 = "<i></i>"; }
            //}
        }
    }
}