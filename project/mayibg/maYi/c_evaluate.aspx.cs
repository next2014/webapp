using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class c_evaluate : System.Web.UI.Page
{
    public static string news;
    public static string yunset;
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
            //给button1添加客户端事件
            Button1.Attributes.Add("OnClick", "return UserAddVerify()");
            Date();
        }
    }

    protected void Date()
    {
        if (!string.IsNullOrEmpty(Request.QueryString["Id"]))
        {
            string sql = "select * from m_info where Id='" + Request.QueryString["Id"] + "'";
            DataTable dt = DAL.SQLHelper.GetDtBySql(sql);
            if (dt.Rows.Count > 0)
            {
                content.Value = dt.Rows[0]["conten"].ToString();                               //自我评价

            }
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        string Content = content.Value;


        if (Session["userName"] == null)
        {
            Response.Redirect("c_login.aspx");
        }

        if (!string.IsNullOrEmpty(Request.QueryString["Id"]))
        {
            //修改
            string sql = "update m_info set conten='" + Content + "'";
            sql += " where Id='" + Request.QueryString["Id"] + "' ";
            DAL.SQLHelper.GetExecute(sql);
            Response.Redirect("resume.aspx?Id=" + Request.QueryString["JId"] + "");

        }
        else
        {
        }
    }
    
}