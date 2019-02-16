using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class yz_moblie : System.Web.UI.Page
{
    public static string news;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Session["userName"] != null)
            {
                DataTable dtz = DAL.SQLHelper.GetDtBySql("select * from jz_Zjg where username='" + Session["userName"] + "' and Cancellation='F' and accept='1' and Reply='未回复' order by zjg_Id desc");
                if (dtz.Rows.Count > 0)
                {
                    news = "<a style=\"padding-top:40px;\"><i class=\"yun_footer_msg_n\"><span id=\"tzmsgNum\">" + dtz.Rows.Count + "</span></i></a>";
                }
                else
                {
                    news = "";
                }
            }
            DataTable dt = DAL.SQLHelper.GetDtBySql("select * from m_info where  username='" + Session["userName"] + "' ");
            moblieval.Value=dt.Rows[0]["telphone"].ToString();
        }
    }
}