using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class pages_qy_news : System.Web.UI.Page
{
    public static string news;
    public string display, display2;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            //是否登录
            if (Session["userName"] == null)
            {
                Response.Redirect("~/c_login.aspx");
            }
            Date();
        }
    }
    protected void Date()
    {
        DataTable dt = DAL.SQLHelper.GetDtBySql("select * from jz_Zjg where zw_Id in (select Id from qy_part where G_Id=(select Id from qy_info where username='" + Session["userName"] + "')) and Cancellation='F' and zwlx='2' and see='F' order by zjg_Id desc");
        DataTable dtB = DAL.SQLHelper.GetDtBySql("select * from jz_Zjg where zw_Id in (select Id from qy_job where G_Id=(select Id from qy_info where username='" + Session["userName"] + "')) and Cancellation='F' and zwlx='1' and see='F' order by zjg_Id desc");
        int B = dt.Rows.Count + dtB.Rows.Count;
        if (dt.Rows.Count > 0)
        {
            DataTable dt1 = DAL.SQLHelper.GetDtBySql("select * from m_info where username='"+dt.Rows[0]["username"].ToString() +"' ");
            DataTable dt2 = DAL.SQLHelper.GetDtBySql("select * from qy_part where Id='" + dt.Rows[0]["zw_Id"].ToString() + "' ");
            display = "<div class=\"synews_box_p\">用户 "+dt1.Rows[0]["name"].ToString()+" 申请了 "+dt2.Rows[0]["name"].ToString()+" 职位！</div><span class=\"synews_box_time\">"+dt.Rows[0]["time"].ToString()+"</span><i class=\"synews_box_n\">"+B+"</i>";
        }
        else if (dtB.Rows.Count > 0) 
        {
            DataTable dt1 = DAL.SQLHelper.GetDtBySql("select * from m_info where username='" + dtB.Rows[0]["username"].ToString() + "' ");
            DataTable dt2 = DAL.SQLHelper.GetDtBySql("select * from qy_job where Id='" + dtB.Rows[0]["zw_Id"].ToString() + "' ");
            display = "<div class=\"synews_box_p\">用户 " + dt1.Rows[0]["name"].ToString() + " 申请了 " + dt2.Rows[0]["name"].ToString() + " 职位！</div><span class=\"synews_box_time\">" + dt.Rows[0]["time"].ToString() + "</span><i class=\"synews_box_n\">" + B + "</i>";
        }
        else
        {
            display = "<div class=\"synews_box_p\">暂无新的用户申请职位！</div>";
        }

        DataTable dtA = DAL.SQLHelper.GetDtBySql("select * from jz_Zjg where zw_Id in (select Id from qy_part where G_Id=(select Id from qy_info where username='" + Session["userName"] + "')) and Cancellation='F' and zwlx='2' and  Reply='已同意'  order by zjg_Id desc");
        DataTable dtC = DAL.SQLHelper.GetDtBySql("select * from jz_Zjg where zw_Id in (select Id from qy_job where G_Id=(select Id from qy_info where username='" + Session["userName"] + "')) and Cancellation='F' and zwlx='1' and  Reply='已同意'  order by zjg_Id desc");
        int C = dtA.Rows.Count + dtC.Rows.Count;
        if (dtA.Rows.Count > 0)
        {
            DataTable dt1 = DAL.SQLHelper.GetDtBySql("select * from m_info where username='" + dtA.Rows[0]["username"].ToString() + "' ");
            display2 = "<div class=\"synews_box_p\">用户 " + dt1.Rows[0]["name"].ToString() + " 同意了您的邀请面试！</div><span class=\"synews_box_time\">" + dtA.Rows[0]["time"].ToString() + "</span><i class=\"synews_box_n\">" + C + "</i>";
        }
        else if(dtC.Rows.Count>0)
        {
            DataTable dt1 = DAL.SQLHelper.GetDtBySql("select * from m_info where username='" + dtC.Rows[0]["username"].ToString() + "' ");
            display2 = "<div class=\"synews_box_p\">用户 " + dt1.Rows[0]["name"].ToString() + " 同意了您的邀请面试！</div><span class=\"synews_box_time\">" + dtC.Rows[0]["time"].ToString() + "</span><i class=\"synews_box_n\">" + C + "</i>";
        }
        else
        {
            display2 = "<div class=\"synews_box_p\">暂无消息 !</div>";
        }
        int A = C + B;
        if ( A> 0)
        {
            news = "<a style=\"padding-top:40px;\"><i class=\"yun_footer_msg_n\"><span id=\"tzmsgNum\">" + A + "</span></i></a>";
        }
        else 
        {
            news = "";
        }
    }
}