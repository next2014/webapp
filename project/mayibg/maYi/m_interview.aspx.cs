using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class m_interview : System.Web.UI.Page
{
    public static string news;
    public static string display;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            //是否登录
            if (Session["userName"] == null)
            {
                Response.Redirect("c_login.aspx");
            }
            else 
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
        }
    }

    protected void Date()
    { 
        DataTable dt = DAL.SQLHelper.GetDtBySql("select * from jz_Zjg where username='" + Session["userName"].ToString() + "' and Cancellation='F' and accept='1' order by zjg_Id desc");
        if (dt.Rows.Count > 0)
        {
            string A = "";
            for (int i = 0; i < dt.Rows.Count; i++)
            {
                DataTable dt2 = DAL.SQLHelper.GetDtBySql("select * from qy_part where Id='" + dt.Rows[i]["zw_Id"].ToString() + "' ");
                if (dt.Rows[i]["zwlx"].ToString() == "1") 
                {
                    dt2 = DAL.SQLHelper.GetDtBySql("select * from qy_job where Id='" + dt.Rows[i]["zw_Id"].ToString() + "' ");
                }
                DataTable dt3 = DAL.SQLHelper.GetDtBySql("select * from qy_info where Id='" + dt2.Rows[0]["G_Id"].ToString() + "' ");
                string C = "";
                if (dt.Rows[i]["Reply"].ToString() == "未回复") 
                {
                    C = "<i class=\"wap_member_in_msg_nolook\"></i>";
                }
                string Src = "images/14906489056.PNG";
                if (dt3.Rows[0]["preview"].ToString() != "") 
                {
                    Src = dt3.Rows[0]["preview"].ToString();
                }
                string B = "<div class=\"wap_member_in_msg  wap_member_msg_after\">"+C+"<div class=\"wap_member_in_msg_comlogo\"><img src=\""+Src+"\"></div><a href=\"m_interview1.aspx?Id="+dt.Rows[i]["zjg_Id"].ToString()+"\" class=\"wap_member_link\"><span class=\"wap_member_msg_name\">"+dt3.Rows[0]["name"].ToString()+"</span><div class=\"wap_member_msg_ms\">邀请您面试 "+ dt2.Rows[0]["name"].ToString()+" 的职位</div><div class=\"wap_member_msg_mstime\">"+dt.Rows[i]["Intertime"].ToString()+"</div></a></div>";
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
            display = " <div class=\"wap_member_no\"><div class=\"wap_member_no_p1\">目前您暂未收到面试通知<div><a class=\"wap_member_no_submit\" href=\"position.aspx\">搜索职位</a></div></div></div>";
        }
    }
}