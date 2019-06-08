using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class pages_qy_invite1 : System.Web.UI.Page
{
    public static string news;
    public string Name,Hy,Js;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
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
                    news = "<a style=\"padding-top:40px;\"><i class=\"yun_footer_msg_n\"><span id=\"tzmsgNum\">" + A + "</span></i></a>";
                }
                else
                {
                    news = "";
                }
            }
            Date();
        }
    }

    protected void Date()
    {
        if (!string.IsNullOrEmpty(Request.QueryString["Id"]))
        {
            DataTable dt = DAL.SQLHelper.GetDtBySql("select * from jz_Zjg where zjg_Id=" + Request.QueryString["Id"] + " ");
            DataTable dt2 = DAL.SQLHelper.GetDtBySql("select * from m_info where username='" + dt.Rows[0]["username"].ToString() + "' ");
            Name=dt2.Rows[0]["name"].ToString();
            DataTable dt3 = DAL.SQLHelper.GetDtBySql("select * from m_resume where J_Id=" + dt2.Rows[0]["Id"].ToString() + " and defaulta='1' ");
            Hy=dt3.Rows[0]["hy"].ToString();
            DataTable dt4 = DAL.SQLHelper.GetDtBySql("select * from qy_part where Id=" + dt.Rows[0]["zw_Id"].ToString() + " ");
            if (dt.Rows[0]["zwlx"].ToString() == "1")
            {
                 dt4 = DAL.SQLHelper.GetDtBySql("select * from qy_job where Id=" + dt.Rows[0]["zw_Id"].ToString() + " ");
            }
            jobname.Value = dt4.Rows[0]["name"].ToString();
            interjobPicker.InnerText = dt4.Rows[0]["name"].ToString();
            DataTable dt5 = DAL.SQLHelper.GetDtBySql("select * from qy_info where Id=" + dt4.Rows[0]["G_Id"].ToString() + " ");
            address.Value = dt5.Rows[0]["address"].ToString();
            linkman.Value = dt5.Rows[0]["linkman"].ToString();
            linktel.Value = dt5.Rows[0]["linktel"].ToString();
        }

        if (!string.IsNullOrEmpty(Request.QueryString["JId"]))
        {
            DataTable dt = DAL.SQLHelper.GetDtBySql("select * from jz_R_Collection where Id=" + Request.QueryString["JId"] + " ");
            DataTable dt2 = DAL.SQLHelper.GetDtBySql("select * from m_resume where Id=" + dt.Rows[0]["J_Id"].ToString() + " ");
            DataTable dt3 = DAL.SQLHelper.GetDtBySql("select * from m_info where Id=" + dt2.Rows[0]["J_Id"].ToString() + " ");
            username.Value = dt3.Rows[0]["username"].ToString();
            Name = dt3.Rows[0]["name"].ToString();
            Hy = dt2.Rows[0]["hy"].ToString();
            DataTable dt4 = DAL.SQLHelper.GetDtBySql("select * from qy_info where username=" + Session["userName"] + " ");
            address.Value = dt4.Rows[0]["address"].ToString();
            linkman.Value = dt4.Rows[0]["linkman"].ToString();
            linktel.Value = dt4.Rows[0]["linktel"].ToString();
            DataTable dt5 = DAL.SQLHelper.GetDtBySql("select * from qy_part where G_Id=" + dt4.Rows[0]["Id"].ToString() + " and audits='1' ");
            string A = "";
            if (dt5.Rows.Count > 0)
            {
                for (int i = 0; i < dt5.Rows.Count; i++)
                {
                    string B = "interjobData.push({value: '" + dt5.Rows[i]["id"].ToString() + "',text: '" + dt5.Rows[i]["name"].ToString() + "'})";
                    if (i > 0)
                    {
                        A = A + B;
                    }
                    else
                    {
                        A = B;
                    }
                }
                Js = "<script>mui.init();var interjobData = [];" + A + "</script>";
            }
            else 
            {
                Js = "";
            }
        }

        if (!string.IsNullOrEmpty(Request.QueryString["JLId"]))
        {
            DataTable dt2 = DAL.SQLHelper.GetDtBySql("select * from m_resume where Id=" + Request.QueryString["JLId"] + " ");
            DataTable dt3 = DAL.SQLHelper.GetDtBySql("select * from m_info where Id=" + dt2.Rows[0]["J_Id"].ToString() + " ");
            username.Value = dt3.Rows[0]["username"].ToString();
            Name = dt3.Rows[0]["name"].ToString();
            Hy = dt2.Rows[0]["hy"].ToString();
            DataTable dt4 = DAL.SQLHelper.GetDtBySql("select * from qy_info where username='" + Session["userName"] + "' ");
            address.Value = dt4.Rows[0]["address"].ToString();
            linkman.Value = dt4.Rows[0]["linkman"].ToString();
            linktel.Value = dt4.Rows[0]["linktel"].ToString();
            DataTable dt5 = DAL.SQLHelper.GetDtBySql("select * from qy_part where G_Id=" + dt4.Rows[0]["Id"].ToString() + " and audits='1' ");
            DataTable dt6 = DAL.SQLHelper.GetDtBySql("select * from qy_job where G_Id=" + dt4.Rows[0]["Id"].ToString() + " and audits='1' ");
            string A = "";
            string C = "";
            if (dt5.Rows.Count > 0)
            {
                for (int i = 0; i < dt5.Rows.Count; i++)
                {
                    string B = "interjobData.push({value: '" + dt5.Rows[i]["id"].ToString() + "',text: '" + dt5.Rows[i]["name"].ToString() + "',zwlx: '2' });";
                    if (i > 0)
                    {
                        A = A + B;
                    }
                    else
                    {
                        A = B;
                    }
                }
            }
            if (dt6.Rows.Count > 0) 
            {
                for (int i = 0; i < dt6.Rows.Count; i++)
                {
                    string B = "interjobData.push({value: '" + dt6.Rows[i]["id"].ToString() + "',text: '" + dt6.Rows[i]["name"].ToString() + "',zwlx: '1' });";
                    if (i > 0)
                    {
                        C = C + B;
                    }
                    else
                    {
                        C = B;
                    }
                }
            }
            Js = "<script>mui.init();var interjobData = []; " + A + C +"</script>";

        }

    }

    protected void tdjl_Click(object sender, EventArgs e)
    {
        if (!string.IsNullOrEmpty(Request.QueryString["Id"]))
        {
            string Intertime = intertime.Value;                 //面试时间
            if (Intertime == "")
            {
                Response.Write("<script type='text/javascript'>alert('请填写面试时间!')</script>");
                return;
            }
            string Content = content.Value;                     //面试备注
            //string Intertime = "2018-12-18 10:00";                 
            //string Content = "123456";                    
            string time = DateTime.Now.ToString("yyyy-MM-dd");      //当前时间

            DAL.SQLHelper.GetExecute("update jz_Zjg set Interviewdate='" + time + "',Intertime='" + Intertime + "',Conten='" + Content + "',accept='1',see='T',Reply='未回复' where zjg_Id=" + Request.QueryString["Id"] + " ");

        }

        if (!string.IsNullOrEmpty(Request.QueryString["JId"]) || !string.IsNullOrEmpty(Request.QueryString["JLId"]))
        {
            string A = zwlx.Value;
            string Jobname = jobname.Value;
            if (Jobname == "")
            {
                Response.Write("<script type='text/javascript'>alert('请填写面试职位!')</script>");
                return;
            }
            string Intertime = intertime.Value;
            if (Intertime == "")
            {
                Response.Write("<script type='text/javascript'>alert('请填写面试时间!')</script>");
                return;
            }
            string Content = content.Value;
            string time = DateTime.Now.ToString("yyyy-MM-dd");      //当前时间
            string Username = username.Value;

            DataTable dt = DAL.SQLHelper.GetDtBySql("select isnull(max(zjg_Id)+1,0) from jz_Zjg ");
            DAL.SQLHelper.GetExecute("insert into  jz_Zjg (zjg_Id,zw_Id,username,Cancellation,zwlx,accept,Interviewdate,Intertime,Conten,Reply,see) values ('" + dt.Rows[0][0].ToString() + "','" + Jobname + "','" + Username + "','F','"+A+"','1','" + time + "','" + Intertime + "','" + Content + "','未回复','T') ");
        }
        Response.Write("<script type='text/javascript'>alert('邀请成功!');window.location='qy_invite.aspx';</script>");
    }
}