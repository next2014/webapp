using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class c_part_show : System.Web.UI.Page
{
    public static string news;
    public string Name, Cityid, Time, Salary, Type, Info, Number, Sex, Description, Billing, Address, Contenttext, Lxfs, Collection, Jztime;
    //public string Array1, Array2, Array3, Array4, Array5, Array6, Array7, Array8, Array9, Array10, Array11, Array12, Array13, Array14, Array15, Array16, Array17, Array18, Array19, Array20, Array21;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Session["userName"] != null)
            {
                DataTable dt = DAL.SQLHelper.GetDtBySql("select * from jz_Zjg where username='" + Session["userName"] + "' and Cancellation='F' and accept='1' and Reply='未回复' order by zjg_Id desc");
                if (dt.Rows.Count > 0)
                {
                    news = "<a style=\"padding-top:40px;\"><i class=\"yun_footer_msg_n\"><span id=\"tzmsgNum\">" + dt.Rows.Count + "</span></i></a>";
                }
                else
                {
                    news = "";
                }
            }

            Date();
            //worktime();
        }
    }

    //protected void worktime()
    //{
    //    if (!string.IsNullOrEmpty(Request.QueryString["Id"]))
    //    {
    //        //string E = "0101,0201,0301,0401,0501,0601,0701,0102,0202,0302,0402,0502,0602,0702,0103,0203,0303,0403,0503,0603,0703";
    //        DataTable dt = DAL.SQLHelper.GetDtBySql("select * from qy_part where Id=" + Request.QueryString["Id"] + "");
    //        string s = dt.Rows[0]["worktime"].ToString();
    //        string[] sArray = s.Split(',');
    //        for (int j = 0; j < sArray.Length; j++)
    //        {
    //            if (sArray[j] == "0101") { Array1 = "<i></i>"; }
    //            if (sArray[j] == "0201") { Array2 = "<i></i>"; }
    //            if (sArray[j] == "0301") { Array3 = "<i></i>"; }
    //            if (sArray[j] == "0401") { Array4 = "<i></i>"; }
    //            if (sArray[j] == "0501") { Array5 = "<i></i>"; }
    //            if (sArray[j] == "0601") { Array6 = "<i></i>"; }
    //            if (sArray[j] == "0701") { Array7 = "<i></i>"; }
    //            if (sArray[j] == "0102") { Array8 = "<i></i>"; }
    //            if (sArray[j] == "0202") { Array9 = "<i></i>"; }
    //            if (sArray[j] == "0302") { Array10 = "<i></i>"; }
    //            if (sArray[j] == "0402") { Array11 = "<i></i>"; }
    //            if (sArray[j] == "0502") { Array12 = "<i></i>"; }
    //            if (sArray[j] == "0602") { Array13 = "<i></i>"; }
    //            if (sArray[j] == "0702") { Array14 = "<i></i>"; }
    //            if (sArray[j] == "0103") { Array15 = "<i></i>"; }
    //            if (sArray[j] == "0203") { Array16 = "<i></i>"; }
    //            if (sArray[j] == "0303") { Array17 = "<i></i>"; }
    //            if (sArray[j] == "0403") { Array18 = "<i></i>"; }
    //            if (sArray[j] == "0503") { Array19 = "<i></i>"; }
    //            if (sArray[j] == "0603") { Array20 = "<i></i>"; }
    //            if (sArray[j] == "0703") { Array21 = "<i></i>"; } 
    //        }
    //    }
    //}

    protected void Date()
    {
        if (!string.IsNullOrEmpty(Request.QueryString["Id"]))                  
        {
            DataTable dt = DAL.SQLHelper.GetDtBySql("select * from qy_part where Id=" + Request.QueryString["Id"] + "");
            Name = dt.Rows[0]["name"].ToString();
            DataTable dtA = DAL.SQLHelper.GetDtBySql("select name from city_cache where Id=" + dt.Rows[0]["cityid"].ToString() + "");
            DataTable dtB = DAL.SQLHelper.GetDtBySql("select name from city_cache where Id=" + dt.Rows[0]["three_cityid"].ToString() + "");
            Cityid = dtA.Rows[0][0].ToString() + "-" + dtB.Rows[0][0].ToString();
            Time = dt.Rows[0]["time"].ToString();
            Salary = dt.Rows[0]["salary_typetext"].ToString();
            Type=dt.Rows[0]["type"].ToString();
            DataTable dtC = DAL.SQLHelper.GetDtBySql("select name from qy_info where Id=" + dt.Rows[0]["G_Id"].ToString() + "");
            Info = dtC.Rows[0][0].ToString();
            Number = dt.Rows[0]["number"].ToString();
            Sex = dt.Rows[0]["sex"].ToString();
            if (dt.Rows[0]["descriptiontext"].ToString() == "长期招聘") 
            {
                Description = "长期招聘";
                Jztime = dt.Rows[0]["descriptionsdate"].ToString() + " - 长期";
            }
            else 
            {
                Description = dt.Rows[0]["descriptionedate"].ToString();
                Jztime = dt.Rows[0]["descriptionsdate"].ToString() + " - " + dt.Rows[0]["descriptionedate"].ToString();
            }
            Billing = dt.Rows[0]["billing_cycle"].ToString();
            Address = dt.Rows[0]["address"].ToString();
            Contenttext = dt.Rows[0]["contenttext"].ToString();
            
            string time = DateTime.Now.ToString("yyyy-MM-dd");

            DataTable dt4 = DAL.SQLHelper.GetDtBySql("select * from jz_Zjg where username='" + Session["userName"] + "' and zw_Id=" + Request.QueryString["Id"] + " and zwlx='2' ");
            if (dt4.Rows.Count > 0)
            {
                tdjl.Text = "已报名";
                tdjl.Enabled = false;
                Lxfs = " <div><div class=\"wap_title\"><span>联系方式</span></div><div>联 系 人  ： " + dt.Rows[0]["linkman"].ToString() + "</div><div>联系电话：" + dt.Rows[0]["linktel"].ToString() + "</div></div>";
            }
            else
            {
                Lxfs = "";
            }

            DataTable dt2 = DAL.SQLHelper.GetDtBySql("select * from jz_manager where username='" + Session["userName"] + "'");
            if (dt2.Rows.Count > 0)
            {
                if (!string.IsNullOrEmpty(Request.QueryString["Collection"]))
                {
                    if (dt2.Rows[0]["number"].ToString() != "2")
                    {
                        if (Request.QueryString["Collection"] == "0")
                        {
                            DataTable dt5 = DAL.SQLHelper.GetDtBySql("select isnull(max(Id)+1,0) from jz_Collection  ");
                            string C = dt5.Rows[0][0].ToString();
                            DAL.SQLHelper.GetExecute("insert into jz_Collection (Id,username,P_Id,Cancellation,Collection,time,zwlx) values (" + C + ",'" + Session["userName"] + "'," + Request.QueryString["Id"] + ",'F','1','" + time + "','2')");
                        }
                        else 
                        {
                            DAL.SQLHelper.GetExecute("update jz_Collection set Collection='" + Request.QueryString["Collection"] + "' where P_Id='" + Request.QueryString["Id"] + "' and username='" + Session["userName"] + "' and zwlx='2' ");
                        }
                    }
                    else
                    {
                        //弹框 企业无法收藏职位
                        Response.Write("<script>alert('企业用户无法收藏职位!');</script>");
                    }
                }
            }

            if (Session["userName"] != null)
            {
                DataTable dt6 = DAL.SQLHelper.GetDtBySql("select * from jz_Collection where P_Id=" + Request.QueryString["Id"] + " and Cancellation='F' and zwlx='2' and  username='" + Session["userName"] + "'");
                if (dt6.Rows.Count > 0)
                {
                    if (dt6.Rows[0]["Collection"].ToString() == "1")
                    {
                        Collection = "<a href=\"c_part_show.aspx?Id=" + dt.Rows[0]["Id"].ToString() + "&Collection=2\"><i class=\"iconfont_ysc\"></i><span class=\"yun_job_footer_s yun_job_footer_s_y\">已收藏</span></a>";
                    }
                    else
                    {
                        Collection = "<a href=\"c_part_show.aspx?Id=" + dt.Rows[0]["Id"].ToString() + "&Collection=1\"><i class=\"iconfont_sc\"></i><span class=\"yun_job_footer_s\">收藏</span></a>";
                    }
                }
                else
                {
                    Collection = "<a href=\"c_part_show.aspx?Id=" + dt.Rows[0]["Id"].ToString() + "&Collection=0\"><i class=\"iconfont_sc\"></i><span class=\"yun_job_footer_s\">收藏</span></a>";
                }
            }
            else
            {
                Collection = "<a href=\"c_login.aspx\"  onclick=\"return confirm('登录后才可以收藏,确定登录？');\"><i class=\"iconfont_sc\"></i><span class=\"yun_job_footer_s\">收藏</span></a>";
            }

        }


    }
    protected void tdjl_Click(object sender, EventArgs e)
    {
         DataTable dt2 = DAL.SQLHelper.GetDtBySql("select * from jz_manager where username='" + Session["userName"] + "'");
         if (dt2.Rows.Count > 0)
         {
             if (tdjl.Text == "我要报名")
             {
                 if (dt2.Rows[0]["number"].ToString() != "2")
                 {
                     if (!string.IsNullOrEmpty(Request.QueryString["Id"]))
                     {
                         string time = DateTime.Now.ToString("yyyy-MM-dd");
                         //简历投递+1
                         string Id = Request.QueryString["Id"];
                         string sql = "update qy_part set delivery=delivery+1 where Id='" + Id + "'";
                         DAL.SQLHelper.GetExecute(sql);

                         //申请记录
                         DataTable dt3 = DAL.SQLHelper.GetDtBySql("select isnull(max(zjg_Id)+1,0) from jz_Zjg");
                         string A = dt3.Rows[0][0].ToString();
                         string sqlb = "insert into jz_Zjg (zjg_Id,zw_Id,username,Cancellation,time,see,zwlx,accept,Reply) values (" + A + "," + Id + "," + Session["userName"] + ",'F','" + time + "','F','2','0','未回复')";
                         DAL.SQLHelper.GetExecute(sqlb);

                         Response.Write("<script type='text/javascript'>alert('报名成功!');window.location='c_part_show.aspx?Id=" + Request.QueryString["Id"]+"';</script>");
                     }
                 }
                 else
                 {
                     //弹框 企业用户无法报名
                     Response.Write("<script>alert('企业用户无法报名!');</script>");
                 }
             }
             else 
             {
                 Response.Write("<script type='text/javascript'>alert('你已报名过，不能再报名了!')</script>");
                 return;
             }
         }
         else 
         {
             Response.Write("<script>alert('请登录后在报名!');window.location='c_login.aspx';</script>"); 
         }
    }
}