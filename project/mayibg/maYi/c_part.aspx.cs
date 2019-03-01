using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class c_part : System.Web.UI.Page
{
    public static string news;
    public string part;
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
        string sql = "select * from qy_part where audits='1' and  name like '%" + Request.QueryString["keyword"] + "%' ";
        if (!string.IsNullOrEmpty(Request.QueryString["type"]))                  //筛选条件
        {
            sql += " and  type='" + Request.QueryString["type"] + "' ";
        }
        if (!string.IsNullOrEmpty(Request.QueryString["cycle"]))                  //筛选条件
        {
            sql += " and  billing_cycle='" + Request.QueryString["cycle"] + "' ";
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
        sql += " order by Id desc ";           
        DataTable dt = DAL.SQLHelper.GetDtBySql(sql);
        if (dt.Rows.Count > 0) 
        {
            string A = "";
            for (int i = 0; i < dt.Rows.Count; i++) 
            {
                DataTable dtA = DAL.SQLHelper.GetDtBySql("select name from city_cache where Id="+dt.Rows[i]["cityid"].ToString()+"");
                DataTable dtB = DAL.SQLHelper.GetDtBySql("select name from city_cache where Id=" + dt.Rows[i]["three_cityid"].ToString() + "");
                DataTable dtC = DAL.SQLHelper.GetDtBySql("select name from qy_info where Id=" + dt.Rows[i]["G_Id"].ToString() + "");
                string B = " <li class=\"part_box_list\"><a href=\"c_part_show.aspx?Id=" + dt.Rows[i]["Id"].ToString() + "\"><div class=\"part_box_list_pd\"><span class=\"part_box_jobdate\">" + dt.Rows[i]["time"].ToString() + "</span><div class=\"part_box_list_bm\">报名</div><div class=\"part_box_jobname\">" + dt.Rows[i]["name"].ToString() + "</div><div class=\"part_box_jobp\"><span class=\"part_box_jobcity\"><i class=\"part_box_jobiconcity\"></i>" + dtA.Rows[0][0].ToString() + "-" + dtB.Rows[0][0].ToString() + "-" + dtC.Rows[0][0].ToString() + "</span></div><div class=\"part_box_jobxz_box\"><span class=\"part_box_jobxz\"><i class=\"part_box_jobxz_fh\">￥</i>" + dt.Rows[i]["salary_typetext"].ToString() + "</span><div class=\"Part_jsfs\">" + dt.Rows[i]["billing_cycle"].ToString() + "</div></div></div></a></li>";
                if (i > 0)
                {
                    A = A + B;
                }
                else
                {
                    A = B;
                }
            }
            part = A;

        }
        else
        {
            part = "";
        }

    }
}