using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class m_collecRecord : System.Web.UI.Page
{
    public static string news;
    public static string display, record;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Session["userName"] != null)
            {
                DataTable dt = DAL.SQLHelper.GetDtBySql("select * from jz_Zjg where username='" + Session["userName"] + "' and Cancellation='F' and zwlx='1' and accept='1' and Reply='未回复' order by zjg_Id desc");
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
            DAL.SQLHelper.GetExecute("update jz_Collection set Collection='2' where Id=" + Request.QueryString["del"] + "");
        }

        if (Session["userName"] == null)
        {
            Response.Redirect("c_login.aspx");
        }
        DataTable dt = DAL.SQLHelper.GetDtBySql("select * from jz_Collection where username='" + Session["userName"].ToString() + "' and Cancellation='F' and Collection='1'");
        if (dt.Rows.Count > 0)
        {
            display = "display:none";
            string A = "";
            for (int i = 0; i < dt.Rows.Count; i++)
            {
                DataTable dt2 = DAL.SQLHelper.GetDtBySql("select * from qy_part where Id=" + dt.Rows[i]["P_Id"].ToString() + " ");
                string C = "c_part_show.aspx";
                if (dt.Rows[i]["zwlx"].ToString() == "1")
                {
                   dt2 = DAL.SQLHelper.GetDtBySql("select * from qy_job where Id=" + dt.Rows[i]["P_Id"].ToString() + " ");
                   C = "c_job_view.aspx";
                }
                DataTable dt3 = DAL.SQLHelper.GetDtBySql("select * from qy_info where Id=" + dt2.Rows[0]["G_Id"].ToString() + " ");
                string B = "";
                B = "<div class=\"com_member_hr\"><div class=\"com_member_hr_name\"><a href=\"" + C + "?Id=" + dt2.Rows[0]["Id"].ToString() + "\" class=\"wap_member_com_name  com_member_hr_cblue\">" + dt2.Rows[0]["name"].ToString() + "</a></div><div class=\"user_member_box\"><aside>" + dt3.Rows[0]["name"].ToString() + "</aside><div class=\"com_member_hr_p1\"><span class=\"member_c9\">收藏时间：</span>" + dt.Rows[i]["time"].ToString() + "</div></div><div class=\"com_member_hr_cz\"><a href=\"m_collecRecord.aspx?del=" + dt.Rows[i]["Id"].ToString() + "\" onclick=\"return confirm('是否取消收藏?');\" class=\"yun_member_hr_bth\">取消收藏</a> <a href=\""+C+"?Id=" + dt2.Rows[0]["Id"].ToString() + "\" class=\"yun_member_hr_bth\">查看详情</a></div></div>";
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
            record = "";
            display = "display:block";
        }
    }
    
}