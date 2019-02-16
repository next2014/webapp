using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class pages_qy_invite : System.Web.UI.Page
{
    public static string news;
    public static string display;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            Date();
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

    protected void Date()
    {
        //删除
        if (!string.IsNullOrEmpty(Request.QueryString["Id"]) && !string.IsNullOrEmpty(Request.QueryString["sc"]))
        {
            DAL.SQLHelper.GetExecute("update jz_Zjg set Cancellation='T' where zw_Id=" + Request.QueryString["Id"] + " ");
        }


        DataTable dt = DAL.SQLHelper.GetDtBySql("select * from jz_Zjg where zw_Id in (select Id from qy_part where G_Id=(select Id from qy_info where username='" + Session["userName"] + "')) and Cancellation='F' and accept='1' order by Interviewdate desc");
        if (dt.Rows.Count > 0)
        {
             string A = "";
             for (int i = 0; i < dt.Rows.Count; i++)
             {
                 if (dt.Rows[i]["Reply"].ToString() == "已同意") 
                 {
                     DAL.SQLHelper.GetExecute("update jz_Zjg set Reply='已完成' where zjg_Id=" + dt.Rows[i]["zjg_Id"].ToString() + " ");
                 }

                 DataTable dt2 = DAL.SQLHelper.GetDtBySql("select * from m_info where username='" + dt.Rows[i]["username"].ToString() + "' ");
                 DataTable dt3 = DAL.SQLHelper.GetDtBySql("select * from m_resume where J_Id='" + dt2.Rows[0]["Id"].ToString() + "'");
                 DataTable dt4 = DAL.SQLHelper.GetDtBySql("select * from qy_part where Id='" + dt.Rows[i]["zw_Id"].ToString() + "'");
                 if (dt.Rows[i]["zwlx"].ToString() == "1") 
                 {
                     dt4 = DAL.SQLHelper.GetDtBySql("select * from qy_job where Id='" + dt.Rows[i]["zw_Id"].ToString() + "'");
                 }
                 
                 DataTable dt5 = DAL.SQLHelper.GetDtBySql("select * from qy_info where Id=" + dt4.Rows[0]["G_Id"].ToString() + " ");

                 string C = "";
                 if (dt.Rows[i]["Conten"].ToString() != "") 
                 {
                     C = "<div class=\"com_member_hr_p1\"><span class=\"member_c9\">面试备注：</span>" + dt.Rows[i]["Conten"].ToString() + "</div>";
                 }

                 string B = "<div class=\"com_member_hr\"><div class=\"com_member_hr_name\"> <a href=\"../c_resume_show.aspx?Id=" + dt3.Rows[0]["Id"].ToString() + "\" class=\"wap_member_com_name com_member_hr_cblue\">" + dt2.Rows[0]["name"].ToString() + "</a> <span class=\"com_member_hr_date\"><span class=\"wap_member_post_list_zt ap_member_post_list_zt_zt\">" + dt.Rows[i]["Reply"].ToString() + "</span> </span> </div><div class=\"com_member_user_box\"><div class=\"com_member_hr_tj\"><div class=\"com_member_hr_p1\"> <span class=\"member_c9\">性别：</span>" + dt2.Rows[0]["sex"].ToString() + " &nbsp;&nbsp;&nbsp; <span class=\"member_c9\">经验：</span>" + dt2.Rows[0]["exp"].ToString() + " &nbsp;&nbsp;&nbsp; <span class=\"member_c9\">学历：</span>" + dt2.Rows[0]["edu"].ToString() + "<div class=\"com_member_hr_p1\"> <span class=\"member_c9\">意向职位：</span>" + dt3.Rows[0]["hy"].ToString() + "</div></div></div><div class=\"com_member_hr_p1\"> <span class=\"member_c9\"> 面试职位：</span>" + dt4.Rows[0]["name"].ToString() + "</div><div class=\"com_member_hr_p1\"> <span class=\"member_c9\"> 联&nbsp;&nbsp;系&nbsp;&nbsp;人：</span>" + dt5.Rows[0]["linkman"].ToString() + "</div><div class=\"com_member_hr_p1\"> <span class=\"member_c9\"> 联系电话：</span>" + dt5.Rows[0]["linktel"].ToString() + "</div><div class=\"com_member_hr_p1\"> <span class=\"member_c9\">邀请时间：</span>" + dt.Rows[i]["Interviewdate"].ToString() + "</div><div class=\"com_member_hr_p1\"> <span class=\"member_c9\">面试时间：</span>" + dt.Rows[i]["Intertime"].ToString() + "</div><div class=\"com_member_hr_p1\"> <span class=\"member_c9\">面试地址：</span>" + dt5.Rows[0]["address"].ToString() + "</div>" + C + "</div><div class=\"com_member_hr_cz\"> <a href=\"javascript:void(0)\" onclick=\"layer_del('确定要删除？','qy_invite.aspx?Id=" + dt.Rows[i]["zjg_Id"].ToString() + "&sc='1')\" class=\"yun_member_hr_bth\">删除</a> <a href=\"../c_resume_show.aspx?Id=" + dt2.Rows[0]["Id"].ToString() + "\" class=\"yun_member_hr_bth\">简历详细</a> </div></div>";
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
            display = "<div class=\"wap_member_no\">没有查询到您的邀请记录哦！<div><a class=\"wap_member_no_submit\" href=\"qy_resume.aspx\">搜索简历</a></div></div>";
        }
    }
}