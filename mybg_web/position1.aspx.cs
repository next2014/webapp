using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class position1 : System.Web.UI.Page
{
    public static string notice;
    public static string news;
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
        string sql = "select * from qy_job where audits='1' ";
        if (!string.IsNullOrEmpty(Request.QueryString["Recommend"]))            //是否推荐职位
        {
            sql += " and recommend='1'";
        }
        if (!string.IsNullOrEmpty(Request.QueryString["keyword"]))                  //筛选条件
        {
            sql += " and  name like '%" + Request.QueryString["keyword"] + "%'";
        }
        sql += " order by nottop desc ";                                         //置顶排序
        DataTable dt = DAL.SQLHelper.GetDtBySql(sql);
        if (dt.Rows.Count > 0)
        {
            string A = "";
            string D = "";
            for (int i = 0; i < dt.Rows.Count; i++)
            {
                DataTable dt2 = DAL.SQLHelper.GetDtBySql("select * from qy_info where Id='"+dt.Rows[i]["G_Id"].ToString()+"' ");
                string s = dt2.Rows[0]["welfareshow"].ToString();
                if (!string.IsNullOrEmpty(s))
                {
                    string[] sArray = s.Split(',');
                    string E = "";
                    for (int j = 0; j < sArray.Length; j++)
                    {
                        string C = "<span class=\"yunwap_jobfl\">" + sArray[j] + "</span>";
                        if (j > 0)
                        {
                            E = E + C;
                        }
                        else
                        {
                            E = C;
                        }
                    }
                    D = "<div class=\"yunwap_jobfl_box\">" + E + "</div>";
                }
                else
                {
                    D = "<div class=\"yunwap_jobcom_info\">" + dt2.Rows[0]["pr"].ToString() + "<span class=\"yunwap_jobcom_info_line\">|</span>" + dt2.Rows[0]["mun"].ToString() + "<span class=\"yunwap_jobcom_info_line\">|</span>" + dt2.Rows[0]["hy"].ToString() + "</div>";
                }
                string F = "";
                if (!string.IsNullOrEmpty(Request.QueryString["Recommend"]))
                {
                    F = "<i class=\"yun_wap_tj\">推荐</i>";
                }
                else
                {
                    F = "";
                }
                DataTable dtA = DAL.SQLHelper.GetDtBySql("select name from city_cache where Id='" + dt.Rows[i]["provinceid"].ToString() + "' ");
                DataTable dtB = DAL.SQLHelper.GetDtBySql("select name from city_cache where Id='" + dt.Rows[i]["cityid"].ToString() + "' ");
                string B = "<div class=\"job_list_box\">" + F + "<a href=\"c_job_view.aspx?Id=" + dt.Rows[i]["Id"].ToString() + "\"><div class=\"yunwap_jobname\"><h3>" + dt.Rows[i]["name"].ToString() + "</h3><span class=\"yunwap_jobtime\">" + dt.Rows[i]["time"].ToString() + "</span></div><div class=\"yunwap_job_info\"><span class=\"yunwap_job_info_s yunwap_job_city\">" + dtA.Rows[0][0].ToString() + "-" + dtB.Rows[0][0].ToString() + "</span> <span class=\"yunwap_job_info_s yunwap_job_xl\">" + dt.Rows[i]["edu"].ToString() + "学历</span> <span class=\"yunwap_job_info_s yunwap_job_jy\">" + dt.Rows[i]["exp"].ToString() + "经验</span> </div><div class=\"yunwap_jobxz\">￥" + dt.Rows[i]["salary"].ToString() + " <span class=\"yunwap_job_sq\">申请</span></div></a><div class=\"yunwap_jobcom\"><a href=\"c_company_show.aspx?Id=" + dt.Rows[i]["G_Id"].ToString() + "\"><div class=\"yunwap_jobcomlogo\"><img src=\"" + dt2.Rows[0]["preview"].ToString() + "\" width=\"40\" height=\"40\"></div><div class=\"yunwap_jobcom_name\">" + dt2.Rows[0]["name"].ToString() + " </div>" + D + "</a></div></div>";
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