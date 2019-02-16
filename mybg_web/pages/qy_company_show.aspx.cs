using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class qy_company_show : System.Web.UI.Page
{
    public static string news;
    public static string Titlea, category, region, Nature, scale, picture, address, introduction, recruit, welfareshow, linkman;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            Notice();
            Recruit();
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
        }
    }

    //企业信息
    protected void Notice()
    {
        if (!string.IsNullOrEmpty(Request.QueryString["Id"]))
        {
            string sql = "select * from qy_info where Id=" + Request.QueryString["Id"] + "";
            DataTable dt = DAL.SQLHelper.GetDtBySql(sql);
            if (dt.Rows.Count > 0)
            {
                Titlea = dt.Rows[0]["name"].ToString();
                category = dt.Rows[0]["hy"].ToString();
                DataTable dta = DAL.SQLHelper.GetDtBySql("select name from city_cache where Id='"+dt.Rows[0]["provinceid"].ToString() + "'");
                DataTable dtb = DAL.SQLHelper.GetDtBySql("select name from city_cache where Id='"+dt.Rows[0]["cityid"].ToString() + "'");
                region =dta.Rows[0][0].ToString()+"-"+dtb.Rows[0][0].ToString();

                Nature = dt.Rows[0]["pr"].ToString();
                scale = dt.Rows[0]["mun"].ToString();
                picture = dt.Rows[0]["preview"].ToString();
                address = dt.Rows[0]["address"].ToString();
                introduction = dt.Rows[0]["content"].ToString();

                string s = dt.Rows[0]["welfareshow"].ToString();
                string[] sArray = s.Split(',');
                for (int j = 0; j < sArray.Length; j++)
                {
                    string C = "<span class=\"com_show_fl_s\">" + sArray[j] + "</span>";
                    if (j > 0)
                    {
                        welfareshow = welfareshow + C;
                    }
                    else
                    {
                        welfareshow = C;
                    }
                }

            }

            if (Session["userName"] != null)
            {
                DataTable dt2 = DAL.SQLHelper.GetDtBySql("select * from jz_follow where userName=" + Session["userName"].ToString() + " and G_Id=" + Request.QueryString["Id"] + " and Cancellation='F' and follow='1'");
                if (dt2.Rows.Count > 0)
                {
                    Button1.Text = "取消关注";
                }

                DataTable dt3 = DAL.SQLHelper.GetDtBySql("select * from jz_manager where username='" + Session["userName"] + "'");
                if (dt3.Rows.Count > 0)
                {
                    if (dt3.Rows[0]["number"].ToString() == "2")
                    {
                        linkman = " <ul class=\"com_post_msg com_post_msg_touch\"><li><i class=\"com_post_msg_touch_icon iconfont_jobshow_teluser\"></i>联&nbsp;系&nbsp;人：" + dt.Rows[0]["linkman"].ToString() + "</li><li class=\"com_post_msg_tel\"><i class=\"com_post_msg_touch_icon iconfont_jobshow_telip\"></i>联系手机：<a href=\"tel:" + dt.Rows[0]["linktel"].ToString() + "\" class=\"com_post_msg_tel_n\">" + dt.Rows[0]["linktel"].ToString() + "<span class=\"com_post_tel_bd\"><i class=\"com_post_sj iconfont\"></i><div class=\"com_post_tel_bd_p\">拨打</div></span></a></li></ul>";
                    }
                    else
                    {
                        linkman = "<div class=\"com_post_login\"><i class=\"com_post_tel iconfont\"></i>企业没有公开联系信息！ </div>";
                    }
                }
            }
        }
    }

    protected void Recruit()
    {
        if (!string.IsNullOrEmpty(Request.QueryString["Id"]))
        {
            DataTable dt = DAL.SQLHelper.GetDtBySql("select * from qy_job where G_Id=" + Request.QueryString["Id"] + " and audits='1' ");
            if (dt.Rows.Count > 0)
            {
                string A = "";
                for (int i = 0; i < dt.Rows.Count; i++)
                {
                    DataTable dtA = DAL.SQLHelper.GetDtBySql("select name from city_cache where Id=" + dt.Rows[i]["provinceid"].ToString()  + "");
                    DataTable dtB = DAL.SQLHelper.GetDtBySql("select name from city_cache where Id=" + dt.Rows[i]["cityid"].ToString() + "");
                    string B = "<div class=\"com_show_joblist\"><a href=\"qy_job_view.aspx?Id=" + dt.Rows[i]["Id"].ToString() + "\" class=\"job_list\"><h3><font color=\"red\">" + dt.Rows[i]["name"].ToString() + "</font></h3><aside class=\"job_qy_name\"><strong style=\"color: #ff6a6a; font-weight: normal\">￥" + dt.Rows[i]["salary"].ToString() + "</strong></aside><div class=\"com_show_jiobc\"><span class=\"com_show_city\"><i class=\"com_show_city_icon\"></i>" + dtA.Rows[0][0].ToString() + "-" + dtB.Rows[0][0].ToString() + "</span></div><aside class=\"job_pay\"><span class=\"job_t_date job_t_date_t\">" + dt.Rows[i]["time"].ToString() + "</span></aside></a></div>";
                    if (i > 0)
                    {
                        A = A + B;
                    }
                    else
                    {
                        A = B;
                    }
                    recruit = A;
                }
            }
            else 
            {
                recruit = "<div class=\"evaluate_pj_no\"><i class=\"evaluate_pj_no_icon\"></i>该企业还没有发布职位信息! </div>";
            }
        }
    }

    //关注企业
    protected void Button1_Click(object sender, EventArgs e)
    {
        //判断是否登录
        if (Session["userName"] == null)
        {
            Response.Write("<script>alert('未登录，关注不了!');window.location='../c_login.aspx';</script>");
        }
        else
        {
            if (!string.IsNullOrEmpty(Request.QueryString["Id"]))
            {
                DataTable dt3 = DAL.SQLHelper.GetDtBySql("select * from jz_manager where username='" + Session["userName"] + "'");
                if (dt3.Rows[0]["number"].ToString() != "2")
                {
                    string time = DateTime.Now.ToString("yyyy-MM-dd");      //当前时间
                    string userName = Session["userName"].ToString();
                    if (Button1.Text == "关注企业")
                    {
                        DataTable dt2 = DAL.SQLHelper.GetDtBySql("select * from jz_follow where userName=" + userName + " and follow='1' and Cancellation='F' ");
                        if (dt2.Rows.Count > 0)
                        {
                            string sql = "update jz_follow set follow='1',time='" + time + "' where userName=" + userName + " and G_Id=" + Request.QueryString["Id"] + "";
                            DAL.SQLHelper.GetExecute(sql);
                        }
                        else
                        {
                            DataTable dt = DAL.SQLHelper.GetDtBySql("select isnull(max(Id)+1,0) from jz_follow");
                            string A = dt.Rows[0][0].ToString();
                            string sql = "insert into jz_follow (Id,username,G_Id,Cancellation,time,follow) values (" + A + "," + userName + "," + Request.QueryString["Id"] + ",'F','" + time + "','1')";
                            DAL.SQLHelper.GetExecute(sql);
                        }
                        Response.Write("<script>alert('关注企业成功!');location.href='c_company_show.aspx?Id=" + Request.QueryString["Id"] + "';</script>");
                    }
                    else
                    {
                        string sql = "update jz_follow set follow='2',time='" + time + "' where userName=" + userName + " and G_Id=" + Request.QueryString["Id"] + "";
                        DAL.SQLHelper.GetExecute(sql);
                        Response.Write("<script>alert('取消关注成功!');location.href='c_company_show.aspx?Id=" + Request.QueryString["Id"] + "';</script>");
                    }
                }
                else 
                {
                    Response.Write("<script type='text/javascript'>alert('企业账号不能关注企业!')</script>");
                }
            }
        }
    }
    
}