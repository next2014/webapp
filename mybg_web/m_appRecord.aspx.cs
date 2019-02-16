using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class m_appRecord : System.Web.UI.Page
{
    public static string news;
    public static string display, record;
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
        }
    }

    protected void Date()
    {
        if (!string.IsNullOrEmpty(Request.QueryString["del"]))
        {
            DAL.SQLHelper.GetExecute("update jz_Zjg set Cancellation='T' where zjg_Id=" + Request.QueryString["del"] + "");
        }

        if (Session["userName"].ToString() == null)
        {
            Response.Redirect("c_login.aspx");
        }
        DataTable dt = DAL.SQLHelper.GetDtBySql("select * from jz_Zjg where username='" + Session["userName"].ToString() + "' and Cancellation='F' order by zjg_Id desc");
        if (dt.Rows.Count > 0)
        {
            display = "display:none";
            string A = "";
            for (int i = 0; i < dt.Rows.Count; i++)
            {
                string C = "";
                if (dt.Rows[i]["see"].ToString() == "F")
                {
                    C = "企业未查看";
                }
                else
                {
                    C = "企业已查看";
                }
                DataTable dt2 = DAL.SQLHelper.GetDtBySql("select * from qy_part where Id=" + dt.Rows[i]["zw_Id"].ToString() + " ");
                string D = "c_part_show.aspx";
                if (dt.Rows[i]["zwlx"].ToString() == "1")
                {
                     dt2 = DAL.SQLHelper.GetDtBySql("select * from qy_job where Id=" + dt.Rows[i]["zw_Id"].ToString() + " ");
                     D = "c_job_view.aspx";
                }
                DataTable dt3 = DAL.SQLHelper.GetDtBySql("select * from qy_info where Id=" + dt2.Rows[0]["G_Id"].ToString() + " ");
                DataTable dtA = DAL.SQLHelper.GetDtBySql("select name from city_cache where Id=" + dt3.Rows[0]["cityid"].ToString() + " ");
                string B = "";
                B = "<div class=\"com_member_hr\"><div class=\"com_member_hr_name\"><a href=\""+D+"?Id=" + dt2.Rows[0]["Id"].ToString() + "\" class=\"wap_member_com_name  com_member_hr_cblue\">" + dt2.Rows[0]["name"].ToString() + "</a><span class=\"com_member_hr_date\"><span class=\"wap_member_post_list_zt ap_member_post_list_zt_gq\">" + C + "</span></span></div><div class=\"user_member_box\"><div class=\"com_member_hr_p1\">" + dt3.Rows[0]["name"].ToString() + "&nbsp;&nbsp;<span class=\"member_c9\">[" + dtA.Rows[0][0].ToString() + "]</span></div><div class=\"com_member_hr_p1\"><span class=\"member_c9\">申请时间：</span>" + dt.Rows[i]["time"].ToString() + "</div></div><div class=\"com_member_hr_cz\"><a href=\"m_appRecord.aspx?del=" + dt.Rows[i]["zjg_Id"].ToString() + "\" onclick=\"return confirm('确定删除?');\" class=\"yun_member_hr_bth\">删除</a><a href=\"c_job_view.aspx?Id=" + dt2.Rows[0]["Id"].ToString() + "\" class=\"yun_member_hr_bth\">查看详情</a></div></div>";
                if (i > 0)
                {
                    A = A + B;
                }
                else
                {
                    A = B;
                }
            }
            record = A;
        }
        else
        {
            display = "display:block";
        }
    }
    
}