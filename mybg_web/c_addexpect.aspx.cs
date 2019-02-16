using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class c_addexpect : System.Web.UI.Page
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
            Date();
        }
    }
    protected void Date()
    {
        if (!string.IsNullOrEmpty(Request.QueryString["Id"]))           //判断是否已有简历
        {
            string sql = "select * from m_resume where  Id='" + Request.QueryString["Id"] + "'";
            DataTable dt = DAL.SQLHelper.GetDtBySql(sql);
            if (dt.Rows.Count > 0)
            {
                name.Value = dt.Rows[0]["name"].ToString();                             //期望岗位
                DataTable dt1 = DAL.SQLHelper.GetDtBySql("select name from job_classid  where Id='" + dt.Rows[0]["job_classid"].ToString() + "' ");
                jobnameshow.InnerText = dt1.Rows[0][0].ToString();                      //工作职能
                job_classid.Value = dt.Rows[0]["job_classid"].ToString();               //工作职能
                hyPicker.InnerText = dt.Rows[0]["hy"].ToString();                       //从事行业
                hy.Value = dt.Rows[0]["hy"].ToString();                                 //从事行业
                DataTable dt2 = DAL.SQLHelper.GetDtBySql("select name from city_cache  where Id='" + dt.Rows[0]["city_classid"].ToString() + "' ");
                citynameshow.InnerText = dt2.Rows[0][0].ToString();                     //期望城市
                city_classid.Value = dt.Rows[0]["city_classid"].ToString();             //期望城市
                salaryshow.InnerText = dt.Rows[0]["salary"].ToString();                 //期望薪资
                salary.Value = dt.Rows[0]["salary"].ToString();                         //期望薪资
                typePicker.InnerText = dt.Rows[0]["type"].ToString();                   //工作性质
                type.Value = dt.Rows[0]["type"].ToString();                             //工作性质
                reportPicker.InnerText = dt.Rows[0]["report"].ToString();               //到岗时间
                report.Value = dt.Rows[0]["report"].ToString();                         //到岗时间
                jobstatusPicker.InnerText = dt.Rows[0]["jobstatus"].ToString();         //求职状态
                jobstatus.Value = dt.Rows[0]["jobstatus"].ToString();                   //求职状态
            }
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        string Name = name.Value;                       //期望岗位
        string Job_classid = job_classid.Value;         //工作职能
        string Hy = hy.Value;                           //从事行业
        string City_classid = city_classid.Value;       //期望城市
        string Salary = salary.Value;                   //期望薪资
        string Type = type.Value;                       //工作性质
        string Report = report.Value;                   //到岗时间
        string Jobstatus = jobstatus.Value;             //求职状态

        if (Session["userName"] == null)
        {
            Response.Redirect("c_login.aspx");
        }

        if (!string.IsNullOrEmpty(Request.QueryString["Id"]))
        {
            //修改
            string sql = "update m_resume set name='" + Name + "',job_classid='" + Job_classid + "',hy='" + Hy + "',city_classid='" + City_classid + "',salary='" + Salary + "',";
            sql += "type='" + Type + "',report='" + Report + "',jobstatus='" + Jobstatus + "'  where Id='" + Request.QueryString["Id"] + "' ";
            DAL.SQLHelper.GetExecute(sql);

            Response.Redirect("resume.aspx?Id=" + Request.QueryString["Id"] + "");
        }

    }
}