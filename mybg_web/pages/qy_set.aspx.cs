using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class pages_qy_set : System.Web.UI.Page
{
    public static string news;
    public string Name, comcert, moblie, email,Src;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {

            if (!string.IsNullOrEmpty(Request.QueryString["tc"]))
            {
                Session.Abandon();
                Response.Redirect("../c_login.aspx");
            }
            //是否登录
            if (Session["userName"] == null)
            {
                Response.Redirect("../c_login.aspx");
            }
            else
            {
                DataTable dtA = DAL.SQLHelper.GetDtBySql("select * from jz_Zjg where zw_Id in (select Id from qy_job where G_Id=(select Id from qy_info where username='" + Session["userName"] + "')) and Cancellation='F' and zwlx='1' and see='F' order by zjg_Id desc");
                DataTable dtB = DAL.SQLHelper.GetDtBySql("select * from jz_Zjg where zw_Id in (select Id from qy_job where G_Id=(select Id from qy_info where username='" + Session["userName"] + "')) and Cancellation='F' and zwlx='1' and  Reply='已同意' order by zjg_Id desc");
                DataTable dtC = DAL.SQLHelper.GetDtBySql("select * from jz_Zjg where zw_Id in (select Id from qy_part where G_Id=(select Id from qy_info where username='" + Session["userName"] + "')) and Cancellation='F' and zwlx='2' and see='F' order by zjg_Id desc");
                DataTable dtD = DAL.SQLHelper.GetDtBySql("select * from jz_Zjg where zw_Id in (select Id from qy_part where G_Id=(select Id from qy_info where username='" + Session["userName"] + "')) and Cancellation='F' and zwlx='2' and  Reply='已同意' order by zjg_Id desc");
                int A = dtA.Rows.Count + dtB.Rows.Count + dtC.Rows.Count + dtD.Rows.Count;
                if (A > 0)
                {
                    news = "<a style=\"padding-top:40px;\"><i class=\"yun_footer_msg_n\"><span id=\"tzmsgNum\">" + A + "</span></i></a>";
                }
                else
                {
                    news = "";
                }
                Name = Session["userName"].ToString();
            }
            Date();
        }
    }

    protected void Date()
    {
        string sql = "select * from qy_info where username='" + Session["userName"] + "'";
        DataTable dt = DAL.SQLHelper.GetDtBySql(sql);
        if (dt.Rows.Count > 0)
        {
            comcert = "未认证";
            if (dt.Rows[0]["qualifications"].ToString() == "1")
            {
                comcert = "已认证";
            }
            else if (dt.Rows[0]["qualifications"].ToString() == "2")
            {
                comcert = "认证中";
            }
            else if (dt.Rows[0]["qualifications"].ToString() == "0" && dt.Rows[0]["qualificationssrc"].ToString() != "")
            {
                comcert = "认证失败,请重新认证";
            }
            Src = dt.Rows[0]["preview"].ToString();
            moblie = "（未绑定）" + dt.Rows[0]["linktel"].ToString();
            email = "（未绑定）" + dt.Rows[0]["Linkmail"].ToString();
        }
        else
        {
            Response.Redirect("qy_info.aspx");
        }
        

    }
}