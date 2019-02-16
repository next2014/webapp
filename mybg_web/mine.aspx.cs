using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class mine : System.Web.UI.Page
{
    public static string name, src, news, newsa, yz_idcard;
    public int apply, Collection,Interview;
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
                DataTable dtZ = DAL.SQLHelper.GetDtBySql("select * from jz_Zjg where username='" + Session["userName"] + "' and Cancellation='F' and accept='1' and Reply='未回复' order by zjg_Id desc");
                if (dtZ.Rows.Count > 0)
                {
                    newsa = "<i class=\"yun_com_membersysnews_n\" id=\"sysmsgnum\">" + dtZ.Rows.Count + "</i>";
                    news = "<a style=\"padding-top:40px;\"><i class=\"yun_footer_msg_n\"><span id=\"tzmsgNum\">" + dtZ.Rows.Count + "</span></i></a>";
                }
                else
                {
                    newsa = "";
                    news = "";
                }


                //是否有简历
                DataTable dt2 = DAL.SQLHelper.GetDtBySql("select * from jz_manager where username='" + Session["userName"].ToString() + "'");
                if (dt2.Rows[0]["number"].ToString() == "2") 
                {
                    Response.Redirect("pages/qy_mine.aspx");
                }
                string sql = "select * from m_info where username='" + Session["userName"].ToString() + "'";
                DataTable dt = DAL.SQLHelper.GetDtBySql(sql);
                if (dt.Rows.Count == 0)
                {
                    //Response.Redirect("m_addresume.aspx");
                    Response.Redirect("m_addresume.aspx");
                }
                else
                {
                    src = "images/14947989259.PNG";
                    if (dt.Rows[0]["sex"].ToString() == "女")
                    {
                        src = "images/14922051316.PNG";
                    }
                    if (dt.Rows[0]["preview"].ToString() != "") 
                    {
                        src = dt.Rows[0]["preview"].ToString();
                    }
                    yz_idcard = "未实名";
                    if (dt.Rows[0]["yz_idcard"].ToString() == "1") 
                    {
                        yz_idcard = "已实名";
                    }
                    else if (dt.Rows[0]["yz_idcard"].ToString() == "2") 
                    {
                        yz_idcard = "实名认证中";
                    }

                }
            }
            Date();
        }
    }

    protected void Date()
    {
        name = Session["userName"].ToString();
        DataTable dt = DAL.SQLHelper.GetDtBySql("select * from jz_Zjg where username='" + name + "' and Cancellation='F'");
        apply = dt.Rows.Count;
        DataTable dt2 = DAL.SQLHelper.GetDtBySql("select * from jz_Collection where username='" + name + "' and Cancellation='F' and Collection='1' ");
        Collection = dt2.Rows.Count;
        DataTable dt3 = DAL.SQLHelper.GetDtBySql("select * from jz_Zjg where username='" + name + "' and Cancellation='F'  and accept='1' ");
        Interview = dt3.Rows.Count;
    }
}