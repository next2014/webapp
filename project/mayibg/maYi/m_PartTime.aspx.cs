using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class m_PartTime : System.Web.UI.Page
{
    public static string news;
    public string display;
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
        //删除
        if (!string.IsNullOrEmpty(Request.QueryString["Id"]) && !string.IsNullOrEmpty(Request.QueryString["sc"]))
        {
            DAL.SQLHelper.GetExecute("update jz_Zjg set Cancellation='T' where zjg_Id=" + Request.QueryString["Id"] + " ");
            Response.Write("<script type='text/javascript'>alert('删除成功!')</script>");
        }

        DataTable dt = DAL.SQLHelper.GetDtBySql("select * from jz_Zjg where username='" + Session["userName"] + "' and Cancellation='F' and zwlx='2' ");
        if (dt.Rows.Count > 0)
        {
            string A = "";
            for (int i = 0; i < dt.Rows.Count; i++)
            {
                string C = "未查看";
                if(dt.Rows[i]["see"].ToString()=="T")
                {
                    C = "已查看";
                }
                DataTable dt2 = DAL.SQLHelper.GetDtBySql("select * from qy_part where Id="+dt.Rows[i]["zw_Id"].ToString()+" ");
                DataTable dt3 = DAL.SQLHelper.GetDtBySql("select * from qy_info where Id=" + dt2.Rows[0]["G_Id"].ToString() + " ");
                DataTable dtA = DAL.SQLHelper.GetDtBySql("select name from city_cache where Id=" + dt3.Rows[0]["cityid"].ToString() + " ");
                string B = "<div class=\"wap_member_post_list\"><div class=\"com_member_hr\"><div class=\"com_member_hr_name\">";
                B += "<a href=\"c_part_show.aspx?Id="+dt.Rows[i]["zw_Id"].ToString()+"\" class=\"wap_member_com_name  com_member_hr_cblue\">兼职</a>";
                B += " <span class=\"com_member_hr_date\"><span class=\"wap_member_post_list_zt ap_member_post_list_zt_gq\">"+C+"</span></span></div>";
                B += " <div class=\"user_member_box\"><div class=\"com_member_hr_p1\">"+dt3.Rows[0]["name"].ToString()+"&nbsp;&nbsp;<span class=\"member_c9\">["+dtA.Rows[0][0].ToString()+"]</span></div>";
                B += "<div class=\"com_member_hr_p1\"><span class=\"member_c9\">报名时间：</span>"+dt.Rows[i]["time"].ToString()+"</div>";
                B += "<div class=\"com_member_hr_p1\"><span class=\"member_c9\">联系电话：</span><a href=\"tel:" + dt3.Rows[0]["linktel"].ToString() + "\" style=\"color:#288ee0\">" + dt3.Rows[0]["linktel"].ToString() + "</a></div></div>";
                B += "<div class=\"com_member_hr_cz\"><a href=\"javascript:void(0)\" onclick=\"isdel(&#39;m_PartTime.aspx?Id="+dt.Rows[i]["zjg_Id"].ToString()+"&sc=1&#39;)\"  class=\"yun_member_hr_bth\">删除</a>";
                B += "<a href=\"c_part_show.aspx?Id=" + dt.Rows[i]["zw_Id"].ToString() + "\" class=\"yun_member_hr_bth\">查看详情</a></div></div></div>";
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
            display = "<div class=\"wap_member_no\"><div class=\"wap_member_no_p1\"><div>暂无报名记录</div><div><a class=\"wap_member_no_search\" href=\"c_part.aspx\">去搜索相关职位</a></div></div></div>";
        }
    }
}