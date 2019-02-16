using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class m_news : System.Web.UI.Page
{
    public string display, news;
    protected void Page_Load(object sender, EventArgs e)
    {
        //是否登录
        if (Session["userName"] == null)
        {
            Response.Redirect("c_login.aspx");
        }
        Date();
    }

    protected void Date()
    {
        DataTable dt = DAL.SQLHelper.GetDtBySql("select * from jz_Zjg where username='" + Session["userName"] + "' and Cancellation='F' and accept='1' and Reply='未回复' order by zjg_Id desc");
        if (dt.Rows.Count > 0)
        {
            news = "<a style=\"padding-top:40px;\"><i class=\"yun_footer_msg_n\"><span id=\"tzmsgNum\">" + dt.Rows.Count + "</span></i></a>";
            DataTable dt1 = DAL.SQLHelper.GetDtBySql("select * from qy_info where Id=(select G_Id from qy_job where Id='" + dt.Rows[0]["zw_Id"].ToString() + "') ");
            display = "<div class=\"synews_box_p\">" + dt1.Rows[0]["name"].ToString() + " 邀请您面试 !</div><span class=\"synews_box_time\">" + dt.Rows[0]["time"].ToString() + "</span><i class=\"synews_box_n\">" + dt.Rows.Count + "</i>";
        }
        else
        {
            display = "<div class=\"synews_box_p\">暂无公司邀请您面试！</div>";
        }

        
    }
}