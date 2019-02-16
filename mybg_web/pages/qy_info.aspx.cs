using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class pages_qy_info : System.Web.UI.Page
{
    public static string news;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Session["userName"] != null)
            {
                DataTable dtA = DAL.SQLHelper.GetDtBySql("select * from jz_Zjg where zw_Id in (select Id from qy_job where G_Id=(select Id from qy_info where username='" + Session["userName"] + "')) and Cancellation='F' and zwlx='1' and see='F' order by zjg_Id desc");
                DataTable dtB = DAL.SQLHelper.GetDtBySql("select * from jz_Zjg where zw_Id in (select Id from qy_job where G_Id=(select Id from qy_info where username='" + Session["userName"] + "')) and Cancellation='F' and zwlx='1' and  Reply='已同意' order by zjg_Id desc");
                DataTable dtC = DAL.SQLHelper.GetDtBySql("select * from jz_Zjg where zw_Id in (select Id from qy_part where G_Id=(select Id from qy_info where username='" + Session["userName"] + "')) and Cancellation='F' and zwlx='2' and see='F' order by zjg_Id desc");
                DataTable dtD = DAL.SQLHelper.GetDtBySql("select * from jz_Zjg where zw_Id in (select Id from qy_part where G_Id=(select Id from qy_info where username='" + Session["userName"] + "')) and Cancellation='F' and zwlx='2' and  Reply='已同意' order by zjg_Id desc");
                int A = dtA.Rows.Count + dtB.Rows.Count + dtC.Rows.Count + dtD.Rows.Count;
                if (A > 0)
                {
                    news = "<a style=\"padding-top:40px;\"><i class=\"yun_footer_msg_n\"><span id=\"tzmsgNum\">" + A + "</span></i></a>";
                }
                else
                {
                    news = "";
                }
            }
            Date();
        }
    }

    protected void Date()
    {
        DataTable dt = DAL.SQLHelper.GetDtBySql("select * from qy_info where username='" + Session["userName"] + "' ");
        if (dt.Rows.Count > 0)
        {
            Ida.Value=dt.Rows[0]["Id"].ToString();
            name.Value = dt.Rows[0]["name"].ToString();                          //企业全称
            hyPicker.InnerText = dt.Rows[0]["hy"].ToString();                  //从事行业
            hy.Value = dt.Rows[0]["hy"].ToString();                            //从事行业
            prComPicker.InnerText = dt.Rows[0]["pr"].ToString();                 //企业性质
            pr.Value = dt.Rows[0]["pr"].ToString();                              //企业性质
            munComPicker.InnerText = dt.Rows[0]["mun"].ToString();                  //企业规模
            mun.Value = dt.Rows[0]["mun"].ToString();                               //企业规模
            DataTable dtA = DAL.SQLHelper.GetDtBySql("select name from city_cache where Id='" + dt.Rows[0]["provinceid"].ToString() + "' ");
            DataTable dtB = DAL.SQLHelper.GetDtBySql("select name from city_cache where Id='" + dt.Rows[0]["cityid"].ToString() + "' ");
            DataTable dtC = DAL.SQLHelper.GetDtBySql("select name from city_cache where Id='" + dt.Rows[0]["three_cityid"].ToString() + "' ");
            cityPicker.InnerText = dtA.Rows[0][0].ToString() + " " + dtB.Rows[0][0].ToString() + " " + dtC.Rows[0][0].ToString();
            provinceid.Value = dt.Rows[0]["provinceid"].ToString();                       //所在地
            cityid.Value = dt.Rows[0]["cityid"].ToString();
            three_cityid.Value = dt.Rows[0]["three_cityid"].ToString();

            address.Value = dt.Rows[0]["address"].ToString();                           //公司地址
            linkman.Value = dt.Rows[0]["linkman"].ToString();                         //联系人
            linktel.Value = dt.Rows[0]["linktel"].ToString();                          //联系手机
            linkphone.Value = dt.Rows[0]["linkphone"].ToString();                     //固定电话
            content.Value = dt.Rows[0]["content"].ToString();                           //企业简介
            welfareshow.InnerText = dt.Rows[0]["welfareshow"].ToString();             //公司福利
            linkmail.Value = dt.Rows[0]["linkmail"].ToString();                       //企业邮箱
            //preview.Value = dt.Rows[0]["preview"].ToString();                         //公司二维码
            website.Value = dt.Rows[0]["website"].ToString();                         //企业网址
            linkjob.Value = dt.Rows[0]["linkjob"].ToString();                       //联系人职位
            linkqq.Value = dt.Rows[0]["linkqq"].ToString();                         //联系人QQ
            busstops.Value = dt.Rows[0]["busstops"].ToString();                      //公交站点
            sdatePicker.InnerText = dt.Rows[0]["sdate"].ToString();                  //创办时间
            sdate.Value = dt.Rows[0]["sdate"].ToString();                            //创办时间
            money.Value = dt.Rows[0]["money"].ToString();                            //注册资金
        }

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string ID = Ida.Value;
        string Name = name.Value;                             //企业全称
        string Hy = hy.Value;                                     //从事行业
        string Pr = pr.Value;                                     //企业性质
        string Mun = mun.Value;                                   //企业规模
        string Provinceid = provinceid.Value;                       //所在地
        string Cityid = cityid.Value;
        string Three_cityid = three_cityid.Value;
        string Address = address.Value;                       //公司地址
        string Linkman = linkman.Value;                     //联系人
        string Linktel = linktel.Value;                       //联系手机
        string Linkphone = linkphone.Value;                   //固定电话
        string Content = content.Value;                     //企业简介

        //string Welfareshow = welfareshow.InnerText;         //公司福利
        string Welfareshow = welfare.Value;                 //公司福利
        string Linkmail = linkmail.Value;                   //企业邮箱
        //string Preview = preview.Value;                     //公司二维码
        string Website = website.Value;                     //企业网址
        string Linkjob = linkjob.Value;                     //联系人职位
        string Linkqq = linkqq.Value;                       //联系人QQ
        string Busstops = busstops.Value;                   //公交站点
        string Sdate = sdate.Value;                         //创办时间
        string Money = money.Value;                         //注册资金
        string time = DateTime.Now.ToString("yyyy-MM-dd");          //当前时间

        if (!string.IsNullOrEmpty(ID))
        {
            string sql = "update qy_info set name='" + Name + "',hy='" + Hy + "',pr='" + Pr + "',mun='" + Mun + "',provinceid='" + Provinceid + "',address='" + Address + "',linkman='" + Linkman + "',linktel='" + Linktel + "',linkphone='" + Linkphone + "',content='" + Content + "',welfareshow='" + Welfareshow + "',";
            sql += " linkmail='" + Linkmail + "',website='" + Website + "',linkjob='" + Linkjob + "',linkqq='" + Linkqq + "',busstops='" + Busstops + "',sdate='" + Sdate + "',money='" + Money + "',time='" + time + "',cityid='" + Cityid + "',three_cityid='" + Three_cityid + "' where Id='" + ID + "' ";
            DAL.SQLHelper.GetExecute(sql);
        }
        else
        {
            DataTable dt = DAL.SQLHelper.GetDtBySql("select isnull(max(Id)+1,0) from qy_info");
            string A = dt.Rows[0][0].ToString();
            string sql = "insert into qy_info (Id,username,name,hy,pr,mun,provinceid,address,linkman,linktel,linkphone,content,welfareshow,linkmail,website,linkjob,linkqq,busstops,sdate,money,time,recommend,cityid,three_cityid,qualifications) values ";
            sql += " ('" + A + "','" + Session["userName"] + "','" + Name + "','" + Hy + "','" + Pr + "','" + Mun + "','" + Provinceid + "','" + Address + "','" + Linkman + "','" + Linktel + "','" + Linkphone + "','" + Content + "','" + Welfareshow + "','" + Linkmail + "','" + Website + "','" + Linkjob + "','" + Linkqq + "','" + Busstops + "','" + Sdate + "','" + Money + "','" + time + "','0','" + Cityid + "','" + Three_cityid + "','0')";
            DAL.SQLHelper.GetExecute(sql);
        }

        //回到主页
        Response.Redirect("qy_mine.aspx");
    }
    
}