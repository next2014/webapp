using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class m_collecRecord1 : System.Web.UI.Page
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
            DAL.SQLHelper.GetExecute("update jz_follow set follow='2' where Id=" + Request.QueryString["del"] + "");
        }

        if (Session["userName"].ToString() == null)
        {
            Response.Redirect("c_login.aspx");
        }
        DataTable dt = DAL.SQLHelper.GetDtBySql("select * from jz_follow where username='" + Session["userName"].ToString() + "' and Cancellation='F' and follow='1'");
        if (dt.Rows.Count > 0)
        {
            display = "display:none";
            string A = "";
            for (int i = 0; i < dt.Rows.Count; i++)
            {
                DataTable dt2 = DAL.SQLHelper.GetDtBySql("select * from qy_info where Id=" + dt.Rows[i]["G_Id"].ToString() + "");
                DataTable dt3 = DAL.SQLHelper.GetDtBySql("select * from qy_job where G_Id=" + dt.Rows[i]["G_Id"].ToString() + " and audits='1' ");
                string C = "";
                if (dt3.Rows.Count > 0)
                {
                    string D = "";
                    for (int j = 0; j < dt3.Rows.Count; j++)
                    {
                        D = "<a href=\"c_job_view.aspx?Id=" + dt3.Rows[j]["Id"].ToString() + "\" target=\"_bank\">" + dt3.Rows[j]["name"].ToString() + "</a>";
                        if (j > 0)
                        {
                            C = C + "," + D;
                        }
                        else
                        {
                            C = D;
                        }
                    }

                }
                string B = "";
                B = "<div class=\"wap_member_post_list\"><div class=\"com_member_hr\"><div class=\"com_member_hr_name\"><a href=\"c_company_show.aspx?Id=" + dt2.Rows[0]["Id"].ToString() + "\" class=\"wap_member_com_name  com_member_hr_cblue\">" + dt2.Rows[0]["name"].ToString() + "</a></div><div class=\"user_member_box\"><div class=\"com_member_hr_p1\">" + C + "&nbsp;<a href=\"c_company_show.aspx?Id=" + dt2.Rows[0]["Id"].ToString() + "\" class=\"gz_job_n\">共" + dt3.Rows.Count + "个职位&gt;&gt;</a></div><div class=\"com_member_hr_p1\"><span class=\"member_c9\">关注时间：</span>" + dt.Rows[i]["time"].ToString() + "</div></div><div class=\"com_member_hr_cz\"><a href=\"m_collecRecord1.aspx?del=" + dt.Rows[i]["Id"].ToString() + "\" onclick=\"return confirm('是否取消收藏?');\" class=\"yun_member_hr_bth\">取消关注</a><a href=\"c_company_show.aspx?Id=" + dt2.Rows[0]["Id"].ToString() + "\" class=\"yun_member_hr_bth\">查看详情</a></div></div></div>";
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