using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class m_accountSet : System.Web.UI.Page
{
    public static string news;
    public string Name, Src, yzidcard;
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
            if (!string.IsNullOrEmpty(Request.QueryString["tc"]))
            {
                Session.Abandon();
                Server.Transfer("c_login.aspx");
            }
            Date();
        }
    }

    protected void Date()
    {
        if (Session["userName"] != null)
        {
            Name = Session["userName"].ToString();
            DataTable dt = DAL.SQLHelper.GetDtBySql("select * from m_info where username='" + Name + "'");
            Src = "images/14947989259.PNG";
            if (dt.Rows[0]["sex"].ToString() == "女") 
            {
                Src = "images/14922051316.PNG";
            }
            if (dt.Rows[0]["preview"].ToString() != "") 
            {
                Src = dt.Rows[0]["preview"].ToString();
            }

            yzidcard = "未实名";
            if (dt.Rows[0]["yz_idcard"].ToString() == "1")
            {
                yzidcard = "已实名";
            }
            else if (dt.Rows[0]["yz_idcard"].ToString() == "2")
            {
                yzidcard = "实名认证中";
            }
            else if (dt.Rows[0]["yz_idcard"].ToString() == "0" && dt.Rows[0]["yz_idcardsrc"].ToString() != "")
            {
                yzidcard = "实名认证失败,请重新认证";
            }

        }

    }

    protected void lk1_Click(object sender, EventArgs e)
    {
        Session["userName"] = "";
        Server.Transfer("c_login.aspx");
    }
}