using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class pages_qy_resume : System.Web.UI.Page
{
    public static string news;
    public static string notice, hotSearch;
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
            Notice();
        }
    }

    protected void Notice()
    {
        string sql = "select * from m_resume  where  name like '%" + Request.QueryString["keyword"] + "%' ";
        if (!string.IsNullOrEmpty(Request.QueryString["city"]))
        {
            sql += " and  city_classid="+ Request.QueryString["city"]+"";
        }
        if (!string.IsNullOrEmpty(Request.QueryString["post"]))
        {
            sql += " and  job_classid=" + Request.QueryString["post"] + "";
        }
        if (!string.IsNullOrEmpty(Request.QueryString["exp"]))
        {
            sql += " and J_Id in (select Id from m_info where exp='" + Request.QueryString["exp"] + "') ";
        }
        if (!string.IsNullOrEmpty(Request.QueryString["hy"]))
        {
            sql += " and  hy='" + Request.QueryString["hy"] + "'";
        }
        if (!string.IsNullOrEmpty(Request.QueryString["edu"]))
        {
            sql += " and J_Id in (select Id from m_info where edu='" + Request.QueryString["edu"] + "') ";
        } 
        if (!string.IsNullOrEmpty(Request.QueryString["report"]))
        {
            sql += " and  report='" + Request.QueryString["report"] + "'";
        }
        if (!string.IsNullOrEmpty(Request.QueryString["uptime"]))                  // 更新日期筛选条件
        {
            if (Request.QueryString["uptime"] == "1")
            {
                sql += " and  time='" + DateTime.Now.ToString("yyyy-MM-dd") + "'  ";
            }
            else
            {
                string A = Request.QueryString["uptime"];
                sql += " and  time>='" + DateTime.Now.AddDays(-Int32.Parse(A)).ToShortDateString() + "'  ";
            }
        }
        if (!string.IsNullOrEmpty(Request.QueryString["minsalary"]))
        {
            if (!string.IsNullOrEmpty(Request.QueryString["maxsalary"]))
            {
                sql += " and  salary='" + Request.QueryString["minsalary"] + "-" + Request.QueryString["maxsalary"] + "以上/月'  ";
            }
            else
            {
                sql += " and  salary='" + Request.QueryString["minsalary"] + "以上/月'  ";
            }

        }

        DataTable dt = DAL.SQLHelper.GetDtBySql(sql);
        if (dt.Rows.Count > 0)
        {
            string A = "";
            for (int i = 0; i < dt.Rows.Count; i++)
            {
                DataTable dt1 = DAL.SQLHelper.GetDtBySql("select * from m_info where Id=" + dt.Rows[i]["J_Id"].ToString() + "");
                string Name = dt1.Rows[0]["name"].ToString();
                string src1 = "";
                string src2 = "";
                if (dt1.Rows[0]["sex"].ToString() == "男")
                {
                    Name = Name[0] + "先生";
                    src1 = "../images/14947989259.PNG";
                    src2 = "user_tj_xb";
                }
                else
                {
                    Name = Name[0] + "女士";
                    src1 = "../images/14922051316.PNG";
                    src2 = "user_tj_xg";
                }
                if (dt1.Rows[0]["preview"].ToString() != "")
                {
                    src1 = "../" + dt1.Rows[0]["preview"].ToString();
                }
                DataTable dtA = DAL.SQLHelper.GetDtBySql("select name from city_cache where Id=" + dt.Rows[i]["city_classid"].ToString() + "");
                string B = "<div class=\"yun_resume_list\"><a href=\"qy_resume_show.aspx?Id=" + dt.Rows[i]["Id"].ToString() + "\"><div class=\"yun_resume_info\"><div class=\"yun_resume_photo\"><div class=\"yun_resume_photo_c\"><img src=\"" + src1 + "\"><span class=\"" + src2 + "\"></span></div></div><div class=\"yun_resume_info_box\"><span class=\"yun_resume_info_name\">" + Name + "<span class=\"yun_resume_info_time\"><span>" + dt.Rows[i]["time"].ToString() + "</span></span></div><div class=\"yun_resume_info_x\"><span class=\"yunwap_job_info_s yunwap_job_xl\">" + dt1.Rows[0]["edu"].ToString() + "学历</span><span class=\"yunwap_job_info_s yunwap_job_jy\">" + dt1.Rows[0]["exp"].ToString() + "经验</span></div><div class=\"yun_resume_want\">TA 想找<font color=\"#3366cc\">" + dt.Rows[i]["hy"].ToString() + "</font>工作</div></div><div class=\"yun_resume_yxbox\"><div class=\"yun_resume_yxbox_t\">期望城市：" + dtA.Rows[0][0].ToString() + "</div><div class=\"yun_resume_yxxz\">意向薪资：<span class=\"yun_resume_yxxz_n\">￥" + dt.Rows[i]["salary"].ToString() + " </span></div><span class=\"yun_resume_xz\">详情</span></div></a></div>";
                if (i > 0)
                {
                    A = A + B;
                }
                else
                {
                    A = B;
                }
            }
            notice = A;
        }
    }
    
}