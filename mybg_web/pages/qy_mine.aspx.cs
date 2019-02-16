using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class pages_qy_mine : System.Web.UI.Page
{
    public static string news;
    public string name, preview, Src, newa, comcert;
    public int RCollection, Application, recruit;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            //是否登录
            if (Session["userName"] == null)
            {
                Response.Redirect("~/c_login.aspx");
            }
            else
            {
                if (Session["userName"] != null)
                {
                    DataTable dtA = DAL.SQLHelper.GetDtBySql("select * from jz_Zjg where zw_Id in (select Id from qy_job where G_Id=(select Id from qy_info where username='" + Session["userName"] + "')) and Cancellation='F' and zwlx='1' and see='F' order by zjg_Id desc");
                    DataTable dtB = DAL.SQLHelper.GetDtBySql("select * from jz_Zjg where zw_Id in (select Id from qy_job where G_Id=(select Id from qy_info where username='" + Session["userName"] + "')) and Cancellation='F' and zwlx='1' and  Reply='已同意' order by zjg_Id desc");
                    DataTable dtC = DAL.SQLHelper.GetDtBySql("select * from jz_Zjg where zw_Id in (select Id from qy_part where G_Id=(select Id from qy_info where username='" + Session["userName"] + "')) and Cancellation='F' and zwlx='2' and see='F' order by zjg_Id desc");
                    DataTable dtD = DAL.SQLHelper.GetDtBySql("select * from jz_Zjg where zw_Id in (select Id from qy_part where G_Id=(select Id from qy_info where username='" + Session["userName"] + "')) and Cancellation='F' and zwlx='2' and  Reply='已同意' order by zjg_Id desc");
                    int A = dtA.Rows.Count + dtB.Rows.Count + dtC.Rows.Count + dtD.Rows.Count;
                    if (A > 0)
                    {
                        newa = "<i class=\"yun_com_membersysnews_n\" id=\"sysmsgnum\">" + A + "</i>";
                        news = "<a style=\"padding-top:40px;\"><i class=\"yun_footer_msg_n\"><span id=\"tzmsgNum\">" + A + "</span></i></a>";
                    }
                    else
                    {
                        newa = "";
                        news = "";
                    }
                }
            }
            Date();
        }
    }
    protected void Date()
    {
        DataTable dt = DAL.SQLHelper.GetDtBySql("select * from qy_info where username='" + Session["userName"].ToString() + "'");
        if (dt.Rows.Count > 0)
        {
            name = dt.Rows[0]["name"].ToString();
            preview = "../c_company_show.aspx?Id=" + dt.Rows[0]["Id"].ToString() + "";
            Src = "images/14906489056.PNG";
            if (dt.Rows[0]["preview"].ToString() != "")
            {
                Src = dt.Rows[0]["preview"].ToString();
            }
            comcert = "未认证";
            if (dt.Rows[0]["qualifications"].ToString() == "1")
            {
                comcert = "已认证";
            }
            else if (dt.Rows[0]["qualifications"].ToString() == "2")
            {
                comcert = "认证中";
            }

        }
        else
        {
            Response.Redirect("qy_info.aspx");
        }

        DataTable dt2 = DAL.SQLHelper.GetDtBySql("select * from jz_R_Collection where username='" + Session["userName"] + "' and Cancellation='F' and Collection='1' ");
        RCollection = dt2.Rows.Count;

        DataTable dt3 = DAL.SQLHelper.GetDtBySql("select * from jz_Zjg where zw_Id in (select Id from qy_job where G_Id=(select Id from qy_info where username='" + Session["userName"] + "')) and Cancellation='F' and see='F' ");
        Application = dt3.Rows.Count;

        DataTable dt4 = DAL.SQLHelper.GetDtBySql("select * from qy_part where G_Id=(select Id from qy_info where username='" + Session["userName"] + "') and audits='1' ");
        recruit = dt4.Rows.Count;

    }
}