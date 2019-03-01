using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class pages_qy_jobadd : System.Web.UI.Page
{
    public static string news;
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
        DataTable dt = DAL.SQLHelper.GetDtBySql("select * from qy_info where username='" + Session["userName"] + "' ");
        if (dt.Rows.Count > 0)
        {
            if (dt.Rows[0]["qualifications"].ToString() != "1") 
            {
                Response.Write("<script type='text/javascript'>alert('营业执照还未认证,发布不了职位!');window.location='qy_comcert.aspx';</script>");
            }

            link_man.Value = dt.Rows[0]["linkman"].ToString();
            link_moblie.Value = dt.Rows[0]["linktel"].ToString();
            link.InnerText = link_moblie.Value + " " + link_man.Value;
            islink.Value = "1";
            tblink.Value = "1";
            islink1.InnerText = link_moblie.Value + " " + link_man.Value;

            emailshow.InnerText = dt.Rows[0]["Linkmail"].ToString();
            isemail.Value = "1";
            email.Value = dt.Rows[0]["Linkmail"].ToString();
            isemail1.InnerText = dt.Rows[0]["Linkmail"].ToString();

            ida.Value = dt.Rows[0]["Id"].ToString();

            if (!string.IsNullOrEmpty(Request.QueryString["Id"]))
            {
                DataTable dt2 = DAL.SQLHelper.GetDtBySql("select * from qy_job where Id='" + Request.QueryString["Id"] + "' ");
                name.Value=dt2.Rows[0]["name"].ToString();                          //职位名称
                DataTable dtA = DAL.SQLHelper.GetDtBySql("select name from job_cache where Id='" + dt2.Rows[0]["job_post"].ToString() + "' ");
                jobPicker.InnerText = dtA.Rows[0][0].ToString();  
                job1.Value = dt2.Rows[0]["job1"].ToString();                           //职位类别
                job1_son.Value = dt2.Rows[0]["job1_son"].ToString();
                job_post.Value = dt2.Rows[0]["job_post"].ToString();
                DataTable dtB = DAL.SQLHelper.GetDtBySql("select name from city_cache where Id='" + dt2.Rows[0]["three_cityid"].ToString() + "' ");
                cityPicker.InnerText = dtB.Rows[0][0].ToString();  
                provinceid.Value = dt2.Rows[0]["provinceid"].ToString();               //工作地点
                cityid.Value = dt2.Rows[0]["cityid"].ToString();
                three_cityid.Value = dt2.Rows[0]["three_cityid"].ToString();
                salary.InnerText = dt2.Rows[0]["salary"].ToString();                   //薪资待遇
                issalary.Value = dt2.Rows[0]["salary"].ToString();
               
                contentshow.InnerText = dt2.Rows[0]["contentshow"].ToString();         //职位描述
                contenttext.Value = dt2.Rows[0]["contentshow"].ToString();

                hyPicker.InnerText = dt2.Rows[0]["hy"].ToString(); 
                hy.Value = dt2.Rows[0]["hy"].ToString();                               //从事行业
                numberPicker.InnerText = dt2.Rows[0]["number"].ToString();
                number.Value = dt2.Rows[0]["number"].ToString();                       //招聘人数
                expPicker.InnerText = dt2.Rows[0]["exp"].ToString();    
                exp.Value = dt2.Rows[0]["exp"].ToString();                             //工作经验
                reportPicker.InnerText = dt2.Rows[0]["report"].ToString(); 
                report.Value = dt2.Rows[0]["report"].ToString();                       //到岗时间
                agePicker.InnerText = dt2.Rows[0]["age"].ToString(); 
                age.Value = dt2.Rows[0]["age"].ToString();                             //年龄要求
                sexPicker.InnerText = dt2.Rows[0]["sex"].ToString();
                sex.Value = dt2.Rows[0]["sex"].ToString();                             //性别要求
                eduPicker.InnerText = dt2.Rows[0]["edu"].ToString();   
                edu.Value = dt2.Rows[0]["edu"].ToString();                             //教育程度
                if (dt2.Rows[0]["is_graduate"].ToString() == "1") 
                {
                    graduate.Attributes.Add("class", "mui-switch mui-switch-mini is_graduate mui-active");
                }
                is_graduate.Value = dt2.Rows[0]["is_graduate"].ToString();             //可接受应届生
                marriagePicker.InnerText = dt2.Rows[0]["marriage"].ToString();
                marriage.Value = dt2.Rows[0]["marriage"].ToString();                   //婚姻状况
                langshow.InnerText = dt2.Rows[0]["lang"].ToString();  
                lang.Value = dt2.Rows[0]["lang"].ToString();                           //语言要求
            }

        }
        else
        {
            //填写企业信息
        }
    }

    protected void jobsubmit_Click(object sender, EventArgs e)
    {
        string Id = ida.Value;
        string Name = name.Value;                          //职位名称
        string Job1 = job1.Value;                           //职位类别
        string Job1_son = job1_son.Value;
        string Job_post = job_post.Value;
        string Provinceid = provinceid.Value;               //工作地点
        string Cityid = cityid.Value;
        string Three_cityid = three_cityid.Value;
        string Salary = salary.InnerText;                   //薪资待遇
        string Issalary = issalary.Value;
        string Contentshow = contentshow.InnerText;         //职位描述
        string Contenttext = contenttext.Value;
        string Link = link.InnerText;                       //联系方式
        string Islink = islink.Value;
        string Link_man = link_man.Value;                   //手机号
        string Link_moblie = link_moblie.Value;             //联系人
        string Tblink = tblink.Value;
        if (Islink == "3")
        {
            Link_man = "";
        }
        else if (Islink == "2")
        {
            if (Tblink == "1")
            {
                //同步其他职位
            }
            else
            {
                //修改 新的联系方式
            }
        }

        string Emailshow = emailshow.InnerText;             //接收简历的邮箱       
        string Isemail = isemail.Value;
        string Email = email.Value;
        if (Isemail == "3")
        {
            Email = "";
        }


        string Hy = hy.Value;                               //从事行业
        string Number = number.Value;                       //招聘人数
        string Exp = exp.Value;                             //工作经验
        string Report = report.Value;                       //到岗时间
        string Age = age.Value;                             //年龄要求
        string Sex = sex.Value;                             //性别要求
        string Edu = edu.Value;                             //教育程度
        string Is_graduate = is_graduate.Value;             //可接受应届生
        string Marriage = marriage.Value;                   //婚姻状况
        string Lang = lang.Value;                           //语言要求
        string time = DateTime.Now.ToString("yyyy-MM-dd");  //当前时间

        if (!string.IsNullOrEmpty(Request.QueryString["Id"]))
        {
            string sql = "update qy_job set name='" + Name + "',job1='" + Job1 + "',job1_son='" + Job1_son + "',job_post='" + Job_post + "',provinceid='" + Provinceid + "',cityid='" + Cityid + "',three_cityid='" + Three_cityid + "',salary='" + Issalary + "',contentshow='" + Contenttext + "',link_man='" + Link_man + "',link_moblie='" + Link_moblie + "',isemail='" + Email + "',hy='" + Hy + "',number='" + Number + "',exp='" + Exp + "',report='" + Report + "',age='" + Age + "',sex='" + Sex + "',edu='" + Edu + "',is_graduate='" + Is_graduate + "',marriage='" + Marriage + "',lang='" + Lang + "',time='" + time + "' where Id=" + Request.QueryString["Id"] + " ";
            DAL.SQLHelper.GetExecute(sql);
        }
        else
        {
            DataTable dt2 = DAL.SQLHelper.GetDtBySql("select isnull(max(Id)+1,0) from qy_job");
            string A = dt2.Rows[0][0].ToString();
            string sql = "insert into qy_job (Id,G_Id,name,job1,job1_son,job_post,provinceid,cityid,three_cityid,salary,contentshow,link_man,link_moblie,isemail,hy,number,exp,report,age,sex,edu,is_graduate,marriage,lang,time,audits,delivery,recommend,nottop) values ";
            sql += " (" + A + "," + Id + ",'" + Name + "'," + Job1 + "," + Job1_son + "," + Job_post + "," + Provinceid + "," + Cityid + "," + Three_cityid + ",'" + Issalary + "','" + Contenttext + "','" + Link_man + "','" + Link_moblie + "','" + Email + "','" + Hy + "','" + Number + "','" + Exp + "','" + Report + "','" + Age + "','" + Sex + "','" + Edu + "','" + Is_graduate + "','" + Marriage + "','" + Lang + "','" + time + "','0','0','0','0')";
            DAL.SQLHelper.GetExecute(sql);
        }
        Response.Redirect("qy_job.aspx");
    }
    
}