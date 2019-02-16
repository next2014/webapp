using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class c_company : System.Web.UI.Page
{
    public static string news;
    public static string notice, hotSearch;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            Notice();
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
        }
    }

    protected void Notice()
    {
        string sql = "select * from qy_info where  name like '%" + Request.QueryString["keyword"] + "%' and qualifications='1' ";
        if (!string.IsNullOrEmpty(Request.QueryString["mun"]))
        {
            sql += " and mun='" + Request.QueryString["mun"] + "' ";
        }
        if (!string.IsNullOrEmpty(Request.QueryString["pr"]))
        {
            sql += " and pr='" + Request.QueryString["pr"] + "' ";
        }
        if (!string.IsNullOrEmpty(Request.QueryString["hy"]))
        {
            sql += " and hy='" + Request.QueryString["hy"] + "' ";
        }
        if (!string.IsNullOrEmpty(Request.QueryString["pro"]))                  // 区域筛选条件
        {
            if (!string.IsNullOrEmpty(Request.QueryString["three"]))
            {
                if (Request.QueryString["three"] == "1")
                {
                    sql += " and  cityid='" + Request.QueryString["city"] + "'  ";
                }
                else
                {
                    sql += " and  three_cityid='" + Request.QueryString["three"] + "'  ";
                }
            }
            else
            {
                sql += " and  provinceid='" + Request.QueryString["pro"] + "'  ";
            }

        }
        DataTable dt = DAL.SQLHelper.GetDtBySql(sql);
        if (dt.Rows.Count > 0)
        {
            string A = "";
            for (int i = 0; i < dt.Rows.Count; i++)
            {
                DataTable dtA = DAL.SQLHelper.GetDtBySql("select name from city_cache where Id=" + dt.Rows[i]["provinceid"].ToString() + " ");
                DataTable dtB = DAL.SQLHelper.GetDtBySql("select name from city_cache where Id=" + dt.Rows[i]["cityid"].ToString() + " ");
                string B = "<div class=\"com_list_box\"><a href=\"c_company_show.aspx?Id=" + dt.Rows[i]["Id"].ToString() + "\" class=\"job_list\"><div class=\"com_list_t_box\"><div class=\"com_list_logo_box\"><img src=\"" + dt.Rows[i]["preview"].ToString() + "\"></div><div class=\"com_list_box_c\"><h3>" + dt.Rows[i]["name"].ToString() + "</h3></div><div class=\"com_list_box_js\"><span class=\"com_list_box_js_s\"><i class=\"com_list_box_js_icon com_list_box_js_icon_map\"></i>" + dtA.Rows[0][0].ToString() + "-" + dtB.Rows[0][0].ToString() + "</span><span class=\"com_list_box_js_s com_list_box_js_s_hy\"><i class=\"com_list_box_js_icon com_list_box_js_icon_hy\"></i>" + dt.Rows[i]["pr"].ToString() + "</span></div></div></a><div class=\"com_list_box_joblist\">";
                DataTable dt2 = DAL.SQLHelper.GetDtBySql("select * from qy_job where  audits='1' and  G_Id=" + dt.Rows[i]["Id"].ToString() + "");
                string C = "";
                if (dt2.Rows.Count > 0)
                {
                    for (int j = 0; j < dt2.Rows.Count; j++)
                    {
                        string D = "<a href=\"c_job_view.aspx?Id=" + dt2.Rows[j]["Id"].ToString() + "\" class=\"com_list_box_joblist_a\">" + dt2.Rows[j]["name"].ToString() + "</a>";
                        if (j > 0)
                        {
                            C = C + D;
                        }
                        else
                        {
                            C = D;
                        }
                    }
                }
                B += C + "<span class=\"com_list_box_jobzs\">共<em class=\"com_list_box_jobncor\">" + dt2.Rows.Count + "</em>个职位</span></div></div>";
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
        else
        {
            notice = "";
        }
    }
    
}