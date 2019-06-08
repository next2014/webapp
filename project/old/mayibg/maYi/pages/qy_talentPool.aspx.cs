using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class pages_qy_talentPool : System.Web.UI.Page
{
    public static string news;
    public string display;
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
        DataTable dt = DAL.SQLHelper.GetDtBySql("select * from jz_R_Collection where username='" + Session["userName"] + "' and Cancellation='F' order by Id desc ");
        if (dt.Rows.Count > 0)
        {
            string A = "";
            for (int i = 0; i < dt.Rows.Count; i++)
            {
                DataTable dt2 = DAL.SQLHelper.GetDtBySql("select * from m_info where username='" + Session["userName"] + "' ");
                DataTable dt3 = DAL.SQLHelper.GetDtBySql("select * from m_resume where Id='" + dt.Rows[i]["J_Id"].ToString() + "' ");
                string ageA = dt2.Rows[0]["birthday"].ToString();
                ageA = ageA.Substring(0, 4);
                int age = int.Parse(DateTime.Now.ToString("yyyy")) - int.Parse(ageA);           //年龄
                string B = "<div class=\"com_member_hr\"><div class=\"com_member_hr_name\"><a href=\"qy_resume_show.aspx?Id=" + dt2.Rows[0]["Id"].ToString() + "\" class=\"wap_member_com_name  com_member_hr_cblue\">" + dt2.Rows[0]["name"].ToString() + "</a></div>";
                B += "<div class=\"com_member_user_box\"><div class=\"com_member_hr_tj\"><div class=\"com_member_hr_p1\"><span class=\"member_c9\">年龄：</span> " + age + " ";
                B += "<span class=\"member_c9\">经验：</span>" + dt2.Rows[0]["exp"].ToString() + "<span class=\"member_c9\">学历：</span>" + dt2.Rows[0]["edu"].ToString() + "<div class=\"com_member_hr_p1\"><span class=\"member_c9\">意向职位：</span>" + dt3.Rows[0]["hy"].ToString() + "</div></div></div><div class=\"com_member_hr_p1\"><span class=\"member_c9\">收藏日期：" + dt.Rows[i]["time"].ToString() + "</span></div>";
                B += "<div class=\"com_member_hr_cz\"><em class=\"user_size\"><a href=\"javascript:void(0)\" onclick=\"isty('确定要删除？','qy_talentPool.aspx?Id=" + dt.Rows[i]["Id"].ToString() + "')\" class=\"yun_member_hr_bth\">删除</a><a href=\"qy_invite1.aspx?JId=" + dt.Rows[i]["Id"].ToString() + "\" class=\"yun_member_hr_bth sq_resume\"> 邀请面试</a></em></div></div></div>";
                if (i > 0)
                {
                    A = A + B;
                }
                else 
                {
                    A = B;
                }
            }
            display = A;
        }
        else 
        {
            display = "<div class=\"wap_member_no\">您还未收藏任何简历哟~赶快去看看吧！<div><a class=\"wap_member_no_submit\" href=\"qy_resume.aspx\">搜索简历</a></div></div>";
        }

    }
}