using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class c_resumeson : System.Web.UI.Page
{
    public static string news;
    public static string wexperience, Uwexperience, Return;
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
            WexperienceA();
        }
    }

    protected void WexperienceA()
    {
        if (!string.IsNullOrEmpty(Request.QueryString["Id"]))
        {
            if (!string.IsNullOrEmpty(Request.QueryString["EId"]))
            {
                DAL.SQLHelper.GetExecute("delete from c_resumeson where J_Id='" + Request.QueryString["Id"] + "' and E_Id='" + Request.QueryString["EId"] + "'");
            }

            DataTable dt = DAL.SQLHelper.GetDtBySql("select * from c_resumeson where J_Id='" + Request.QueryString["Id"] + "'");
            if (dt.Rows.Count > 0)
            {
                string A = "";
                for (int i = 0; i < dt.Rows.Count; i++)
                {
                    string B = "<div class=\"add_resume_box\"><ul class=\"add_resume_list\"><li><span class=\"add_resume_list_name\">单位名称：</span>" + dt.Rows[i]["name"].ToString() + "</li><li><span class=\"add_resume_list_name\">工作时间：</span>" + dt.Rows[i]["sdate"].ToString() + " 至 " + dt.Rows[i]["edate"].ToString() + "</li><li><span class=\"add_resume_list_name\">担任职位：</span>" + dt.Rows[i]["title"].ToString() + "</li><li><span class=\"add_resume_list_name\">工作内容：</span>" + dt.Rows[i]["conten"].ToString() + "</li></ul><div class=\"add_resume_cz\"><a class=\"add_resume_cz_bth add_resume_cz_bth_line\" href=\"c_addresumeson.aspx?Id=" + Request.QueryString["Id"] + "&EId=" + dt.Rows[i]["E_Id"].ToString() + "\">修改</a><a class=\"add_resume_cz_bth\" href=\"javascript:void(0);\" onclick=\"isdel('c_resumeson.aspx?Id=" + Request.QueryString["Id"] + "&EId=" + dt.Rows[i]["E_Id"].ToString() + "')\">删除</a></div></div>";
                    if (i > 0)
                    {
                        A = A + B;
                    }
                    else
                    {
                        A = B;
                    }
                }
                wexperience = A;
            }
            else 
            {
                wexperience = "";
            }
            Uwexperience = "c_addresumeson.aspx?Id=" + Request.QueryString["Id"] + "";
            Return = "resume.aspx?Id=" + Request.QueryString["Id"] + "";
        }
    }
    
}