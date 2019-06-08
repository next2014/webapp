using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class m_interview1 : System.Web.UI.Page
{
    public static string news;
    public static string ZwId,Zw,QyId,Qymc,Mssj,Lxr,Lxdh,Lxdz,display;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            Date();
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
        }
    }

    protected void Date()
    {
        if (!string.IsNullOrEmpty(Request.QueryString["Id"]))
        {
            //同意面试
            if (!string.IsNullOrEmpty(Request.QueryString["ty"]))
            {
                DAL.SQLHelper.GetExecute("update jz_Zjg set Reply='已同意' where zjg_Id=" + Request.QueryString["Id"] + " ");
                Response.Write("<script type='text/javascript'>alert('你已同意面试!')</script>");
            }

            //删除
            if (!string.IsNullOrEmpty(Request.QueryString["sc"]))
            {
                DAL.SQLHelper.GetExecute("update jz_Zjg set Cancellation='T' where zjg_Id=" + Request.QueryString["Id"] + " ");
                Response.Write("<script type='text/javascript'>alert('删除成功!')</script>");
            }

            DataTable dt = DAL.SQLHelper.GetDtBySql("select * from jz_Zjg where zjg_Id=" + Request.QueryString["Id"] + " ");
            DataTable dt2 = DAL.SQLHelper.GetDtBySql("select * from qy_part where Id='" + dt.Rows[0]["zw_Id"].ToString() + "' ");
            ZwId = "c_part_show.aspx?Id=" + dt.Rows[0]["zw_Id"].ToString();
            if (dt.Rows[0]["zwlx"].ToString() == "1")
            {
                dt2 = DAL.SQLHelper.GetDtBySql("select * from qy_job where Id='" + dt.Rows[0]["zw_Id"].ToString() + "' ");
                ZwId = "c_job_view.aspx?Id=" + dt.Rows[0]["zw_Id"].ToString();
            }
            DataTable dt3 = DAL.SQLHelper.GetDtBySql("select * from qy_info where Id='" + dt2.Rows[0]["G_Id"].ToString() + "' ");
            
            Zw=dt2.Rows[0]["name"].ToString();
            QyId=dt3.Rows[0]["Id"].ToString();
            Qymc = dt3.Rows[0]["name"].ToString();
            Mssj=dt.Rows[0]["Intertime"].ToString();
            Lxr=dt3.Rows[0]["linkman"].ToString();
            Lxdh = dt3.Rows[0]["linktel"].ToString();
            Lxdz = dt3.Rows[0]["address"].ToString();

            if (dt.Rows[0]["Reply"].ToString() == "未回复")
            {
                DAL.SQLHelper.GetExecute("update jz_Zjg set Reply='已查看' where zjg_Id=" + Request.QueryString["Id"] + " ");
            }

            if(dt.Rows[0]["Reply"].ToString()!="已同意")
            {
                display = "<div><div class=\"member_invitecont_newcz\"><a href=\"javascript:void(0)\" onclick=\"isty('确定要同意面试邀请？','m_interview1.aspx?Id=" + Request.QueryString["Id"] + "&ty=1')\" class=\"member_invitecont_newcz_ty\">同意面试</a>";
                display += "<div class=\"member_invitecont_newcz_a\"><a href=\"javascript:void(0)\" onclick=\"isty('确定要删除？','m_interview1.aspx?Id=" + Request.QueryString["Id"] + "&sc=1')\" class=\"member_invitecont_sc\">删除</a>";
                display += "<a href=\"javascript:void(0)\" onclick=\"isty('您确定要屏蔽该公司并删除该邀请？','#')\" class=\"member_invitecont_pb\">屏蔽企业</a>";
                display += "<a href=\"javascript:void(0)\" onclick=\"isty('确定要拒绝面试邀请？','index.php?c=inviteset&amp;id=139&amp;browse=4')\" class=\"member_invitecont_jj \">拒绝面试</a></div></div></div>";
            }
            else
            {
                display = "<div><div class=\"member_invitecont_list\"><span class=\"member_invitecont_list_s\">面试状态：</span><div class=\"invitecont_linebox_zt\">您已同意面试</div></div><div class=\"member_invitecont_cz\"><a href=\"javascript:void(0)\" onclick=\"layer_del('确定要删除？','m_interview1.aspx?Id=" + Request.QueryString["Id"] + "&sc=1')\" class=\"member_invitecont_sc\">删除</a><a class=\"member_invitecont_cz_pl\" href=\"index.php?c=comment&amp;id=139\">我要评价</a></div></div>";
            }
        }
    }
}