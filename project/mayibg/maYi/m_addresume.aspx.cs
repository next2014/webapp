using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class m_addresume : System.Web.UI.Page
{
    public static string news;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (!string.IsNullOrEmpty(Request.QueryString["Id"]))
            {
                if (Session["userName"] != null)
                {
                    DataTable dtZ = DAL.SQLHelper.GetDtBySql("select * from jz_Zjg where username='" + Session["userName"] + "' and Cancellation='F' and accept='1' and Reply='未回复' order by zjg_Id desc");
                    if (dtZ.Rows.Count > 0)
                    {
                        news = "<a style=\"padding-top:40px;\"><i class=\"yun_footer_msg_n\"><span id=\"tzmsgNum\">" + dtZ.Rows.Count + "</span></i></a>";
                    }
                    else
                    {
                        news = "";
                    }
                }

                DataTable dt = DAL.SQLHelper.GetDtBySql("select * from m_info where Id='" + Request.QueryString["Id"] + "'");
                uname.Value = dt.Rows[0]["name"].ToString();                     //姓名
                sex.Value = dt.Rows[0]["sex"].ToString();                         //性别
                sexPicker.InnerText = dt.Rows[0]["sex"].ToString();
                birthday.Value = dt.Rows[0]["birthday"].ToString();               //出生年月 
                birthdayUserPicker.InnerText = dt.Rows[0]["birthday"].ToString();
                living.Value = dt.Rows[0]["living"].ToString();                   //居住地
                edu.Value = dt.Rows[0]["edu"].ToString();                         //最高学历
                eduPicker.InnerText = dt.Rows[0]["edu"].ToString();
                exp.Value = dt.Rows[0]["exp"].ToString();                         //经验
                expPicker.InnerText = dt.Rows[0]["exp"].ToString();
                telphone.Value = dt.Rows[0]["telphone"].ToString();               //手机号码
                email.Value = dt.Rows[0]["email"].ToString();                     //邮箱
            }
            //给button1添加客户端事件
            resumesubmit.Attributes.Add("OnClick", "return UserAddVerify()");
        }
    }

    protected void resumesubmit_Click(object sender, EventArgs e)
    {
        if (Session["userName"] == null)
        {
            Response.Redirect("c_login.aspx");
        }
        string Uname = uname.Value;                     //姓名
        string Sex = sex.Value;                         //性别
        string Birthday = birthday.Value;               //出生年月      
        string Living = living.Value;                   //居住地
        string Edu = edu.Value;                         //最高学历
        string Exp = exp.Value;                         //经验
        string Telphone = telphone.Value;               //手机号码
        string Email = email.Value;                     //邮箱

        string Hy = hy.Value;                           //从事行业
        string Job_classid = job1.Value;                //工作职能
        string Job1_son = job1_son.Value;                //工作职能
        string Job_post = job_post.Value;                //工作职能
        if (Job_post != "")
        { 
            Job_classid=job_post.Value;
        }
        else if (Job1_son != "")
        {
            Job_classid = Job1_son;
        }
        else 
        {
            Job_classid = job1.Value;  
        }     
        string Name = name.Value;                       //期望岗位
        string Salaryshow = salaryshow.InnerText;           //期望薪资
        string Salary = salary.Value;
        string Provinceid = provinceid.Value;       //期望城市
        string Cityid = cityid.Value;
        string Three_cityid = three_cityid.Value;
        string Type = type.Value;                       //工作性质
        string Report = report.Value;                   //到岗时间
        string Jobstatus = jobstatus.Value;             //求职状态

        //string Eduname = eduname.Value;                 //学校名称
        //string Edutimeshow = edutimeshow.InnerText;
        //string Sdate = sdate.Value;                 //在校时间
        //string Edate = edate.Value;                 //在校时间
        //string Education = education.Value;             //学历
        //string Eduspec = eduspec.Value;                 //所学专业

        string Date = DateTime.Now.ToString("yyyy-MM-dd");          //当前时间
        DataTable dt = DAL.SQLHelper.GetDtBySql("select isnull(max(Id)+1,0) from m_info");
        string A = dt.Rows[0][0].ToString();
        string sql = "";
        string Defaulta = "1";
        if (!string.IsNullOrEmpty(Request.QueryString["Id"]))
        {
            Defaulta = "0";
            sql = "update m_info set name='" + Uname + "',sex='" + Sex + "',birthday='" + Birthday + "',edu='" + Edu + "',exp='" + Exp + "',living='" + Living + "',telphone='" + Telphone + "',email='" + Email + "',time='" + Date + "' where Id='" + Request.QueryString["Id"] + "'  ";
            A = Request.QueryString["Id"];
        }
        else
        {

            sql = "insert into m_info (Id,username,name,sex,birthday,edu,exp,living,telphone,email,time,yz_idcard) values ";
            sql += " ('" + A + "','" + Session["userName"] + "','" + Uname + "','" + Sex + "','" + Birthday + "','" + Edu + "','" + Exp + "','" + Living + "','" + Telphone + "','" + Email + "','" + Date + "','0')";
        }

        DataTable dt2 = DAL.SQLHelper.GetDtBySql("select isnull(max(Id)+1,0) from m_resume");
        string B = dt2.Rows[0][0].ToString();
        string sqla = "insert into m_resume (Id,J_Id,hy,job_classid,name,salary,city_classid,type,report,jobstatus,time,defaulta) values ";
        sqla += " ('" + B + "','" + A + "','" + Hy + "','" + Job_classid + "','" + Name + "','" + Salary + "','" + Cityid + "','" + Type + "','" + Report + "','" + Jobstatus + "','" + Date + "','" + Defaulta + "')";

        DAL.SQLHelper.GetExecute(sql);
        DAL.SQLHelper.GetExecute(sqla);

        Response.Redirect("resume.aspx");
    }
}