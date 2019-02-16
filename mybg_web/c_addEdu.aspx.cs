using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class c_addEdu : System.Web.UI.Page
{
    public static string news;
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

            //给button1添加客户端事件
            Button1.Attributes.Add("OnClick", "return UserAddVerify()");
            Date();
        }
    }

    protected void Date()
    {
        if (!string.IsNullOrEmpty(Request.QueryString["Id"]) && !string.IsNullOrEmpty(Request.QueryString["EId"]))
        {
            string sql = "select * from c_edu where J_Id='" + Request.QueryString["Id"] + "' and E_Id='" + Request.QueryString["EId"] + "'";
            DataTable dt = DAL.SQLHelper.GetDtBySql(sql);
            if (dt.Rows.Count > 0)
            {
                name.Value = dt.Rows[0]["eduname"].ToString();                             //学校名称
                sdatePicker.InnerText = dt.Rows[0]["sdate"].ToString();                 //入校时间
                sdate.Value = dt.Rows[0]["sdate"].ToString();                           //入校时间
                edatePicker.InnerText = dt.Rows[0]["edate"].ToString();                 //离校时间
                edate.Value = dt.Rows[0]["edate"].ToString();                           //离校时间
                specialty.Value = dt.Rows[0]["eduspec"].ToString();                   //所学专业
                educationUserPicker.InnerText = dt.Rows[0]["education"].ToString();     //最高学历
                education.Value = dt.Rows[0]["education"].ToString();                   //最高学历
            }
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        string Name = name.Value;
        string Sdate = sdate.Value;
        string Edate = edate.Value;
        string Specialty = specialty.Value;
        string Education = education.Value;

        if (Session["userName"] == null)
        {
            Response.Redirect("c_login.aspx");
        }

        if (!string.IsNullOrEmpty(Request.QueryString["Id"]))
        {
            if (!string.IsNullOrEmpty(Request.QueryString["EId"]))
            {
                //修改
                string sql = "update c_edu set eduname='" + Name + "',sdate='" + Sdate + "',edate='" + Edate + "',eduspec='" + Specialty + "',";
                sql += "education='" + Education + "' where J_Id='" + Request.QueryString["Id"] + "' and E_Id='" + Request.QueryString["EId"] + "' ";
                DAL.SQLHelper.GetExecute(sql);

                Response.Redirect("c_edu.aspx?Id=" + Request.QueryString["Id"] + "");
            }
            else
            {
                //新增
                DataTable dtA = DAL.SQLHelper.GetDtBySql("select isnull(max(E_Id)+1,0) from c_edu where J_Id='" + Request.QueryString["Id"] + "'");
                string EID = dtA.Rows[0][0].ToString();
                string sql = "insert into c_edu (J_Id,E_Id,eduname,sdate,edate,eduspec,education) values ";
                sql += " ('" + Request.QueryString["Id"] + "','" + EID + "','" + Name + "','" + Sdate + "','" + Edate + "','" + Specialty + "','" + Education + "')";
                DAL.SQLHelper.GetExecute(sql);

                Response.Redirect("c_edu.aspx?Id=" + Request.QueryString["Id"] + "");
            }

        }
        else
        {
        }
    }
    
}