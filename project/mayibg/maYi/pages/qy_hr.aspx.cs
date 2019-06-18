using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class pages_qy_hr : System.Web.UI.Page
{
    public static string news;
    public static string display;
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
        //删除
        if (!string.IsNullOrEmpty(Request.QueryString["Id"]) && !string.IsNullOrEmpty(Request.QueryString["sc"]))
        {
            DAL.SQLHelper.GetExecute("update jz_Zjg set Cancellation='T' where zjg_Id=" + Request.QueryString["Id"] + " ");
            Response.Write("<script type='text/javascript'>alert('删除成功!')</script>");
        }

        //面试
        if (!string.IsNullOrEmpty(Request.QueryString["Id"]) && !string.IsNullOrEmpty(Request.QueryString["ms"]))
        {
            //邀请
            if (Request.QueryString["ms"] == "1")
            {
                DAL.SQLHelper.GetExecute("update jz_Zjg set accept='1' where zjg_Id=" + Request.QueryString["Id"] + " ");
            }
            else    //拒绝
            {
                DAL.SQLHelper.GetExecute("update jz_Zjg set accept='2' where zjg_Id=" + Request.QueryString["Id"] + " ");
            }
            
        }

        DataTable dt = DAL.SQLHelper.GetDtBySql("select * from jz_Zjg where zw_Id in (select Id from qy_job where G_Id=(select Id from qy_info where username='" + Session["userName"] + "')) and Cancellation='F'  order by see,zjg_Id desc");
        if (dt.Rows.Count > 0)
        {
            string A = "";
            for (int i = 0; i < dt.Rows.Count; i++)
            {
                DataTable dt2 = DAL.SQLHelper.GetDtBySql("select * from m_info where username='" + dt.Rows[i]["username"].ToString() + "' ");
                DataTable dt3 = DAL.SQLHelper.GetDtBySql("select * from m_resume where J_Id='" + dt2.Rows[0]["Id"].ToString() + "'");
                DataTable dt4 = DAL.SQLHelper.GetDtBySql("select * from qy_part where Id='" + dt.Rows[i]["zw_Id"].ToString() + "'");
                if (dt.Rows[i]["zwlx"].ToString() == "1")
                {
                     dt4 = DAL.SQLHelper.GetDtBySql("select * from qy_job where Id='" + dt.Rows[i]["zw_Id"].ToString() + "'");
                }
                string C = "<div class=\"yun_member_bth\"><a href=\"javascript:void(0)\" onclick=\"isdel(&#39;qy_hr.aspx?Id=" + dt.Rows[i]["zjg_Id"].ToString() + "&sc=1&#39;)\"  class=\"yun_member_sub  yun_member_bth1\">删除</a><a href=\"javascript:void(0)\" onclick=\"isty('确定要拒绝？', 'qy_hr.aspx?Id=" + dt.Rows[i]["zjg_Id"].ToString() + "&ms=2')\" class=\"yun_member_sub  yun_member_bth1\">拒绝面试</a><a href=\"qy_invite1.aspx?Id=" + dt.Rows[i]["zjg_Id"].ToString() + "\" class=\"yun_member_sub  yun_member_bth2 sq_resume\"> 邀请面试</a></div>";
                if (dt.Rows[i]["accept"].ToString() == "1")
                {
                    C = "<div class=\"yun_member_bth\"><a href=\"javascript:void(0)\" onclick=\"isdel(&#39;qy_hr.aspx?Id=" + dt.Rows[i]["zjg_Id"].ToString() + "&sc=1&#39;)\" class=\"yun_member_sub  yun_member_bth1\">删除</a><span class=\"job_hr_bth_bj\">已邀请</span></div>";
                }
                else if (dt.Rows[i]["accept"].ToString() == "2")
                {
                    C = "<div class=\"yun_member_bth\"><a href=\"javascript:void(0)\" onclick=\"isdel(&#39;qy_hr.aspx?Id=" + dt.Rows[i]["zjg_Id"].ToString() + "&sc=1&#39;)\" class=\"yun_member_sub  yun_member_bth1\">删除</a><span class=\"job_hr_bth_bj\">已拒绝</span></div>";
                }
                string D = "未查看";
                string F = "<i class=\"hr_rusume_new\">新</i>";
                if (dt.Rows[i]["see"].ToString() != "F")
                {
                    D = "已查看";
                    F = "";
                }
                string B = " <div class=\"com_member_hr\"><div class=\"com_member_hr_name\"><a href=\"../c_resume_show.aspx?Id=" + dt3.Rows[0]["Id"].ToString() + "&ck=" + dt.Rows[i]["zjg_Id"].ToString() + "\" class=\"wap_member_com_name com_member_hr_cblue\">" + dt2.Rows[0]["name"].ToString() + " "+F+"</a><a href=\"../c_resume_show.aspx?Id=" + dt3.Rows[0]["Id"].ToString() + "&ck=" + dt.Rows[i]["zjg_Id"].ToString() + "\" class=\"wap_member_com_lokr\">查看简历</a><span class=\"com_member_hr_date\"></span></div><div class=\"com_member_user_box\"><div class=\"com_member_hr_tj\"><div class=\"com_member_hr_p1\"><span class=\"member_c9\">性别：</span>" + dt2.Rows[0]["sex"].ToString() + " &nbsp;&nbsp;&nbsp;<span class=\"member_c9\">经验：</span><span>" + dt2.Rows[0]["exp"].ToString() + "</span> &nbsp;&nbsp;&nbsp;<span class=\"member_c9\">学历：</span><span>" + dt2.Rows[0]["edu"].ToString() + "</span></div><div class=\"com_member_hr_p1\"><span class=\"member_c9\">意向职位：</span><em style=\"color:#C00\">" + dt3.Rows[0]["hy"].ToString() + "</em></div></div><div class=\"com_member_hr_p1\"><span class=\"member_c9\">申请职位：</span>" + dt4.Rows[0]["name"].ToString() + "</div><div class=\"com_member_hr_p1\"><span class=\"member_c9\">申请日期：</span>" + dt.Rows[i]["time"].ToString() + "</div><div class=\"com_member_hr_p5\">状态：<span class=\"wap_member_post_list_zt\">" + D + " </span></div></div>" + C + "</div>";
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
            display = "<div class=\"wap_member_no\"><div class=\"wap_member_no_p1\">目前暂无申请职位的人才~ 您可以主动邀请人才哦！<div><a class=\"wap_member_no_submit\" href=\"qy_resume.aspx\">搜索人才</a></div></div></div>";
        }
    }
}