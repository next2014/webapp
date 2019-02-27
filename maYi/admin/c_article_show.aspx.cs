using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class c_article_show : System.Web.UI.Page
{
    public static string news;
    public string name, author, source, clicks, start, Contents;
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
    private void Date()
    {
        if (!string.IsNullOrEmpty(Request.QueryString["Id"]))
        {
            DAL.SQLHelper.GetExecute("update jz_Workplace set delivery=delivery+1 where Id='" + Request.QueryString["Id"] + "'");
            DataTable dt = DAL.SQLHelper.GetDtBySql("select * from jz_Workplace where Id=" + Request.QueryString["Id"] + "");
            name = dt.Rows[0]["title"].ToString();
            author = dt.Rows[0]["abstract"].ToString();
            source = dt.Rows[0]["source"].ToString();
            clicks = dt.Rows[0]["delivery"].ToString();
            start = dt.Rows[0]["time"].ToString();
            Contents = dt.Rows[0]["Contents"].ToString();
        }
    }

}