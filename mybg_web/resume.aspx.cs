using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class resume : System.Web.UI.Page
{
    public static string news;
    public static string name, date, Uname, Sex, Birthday, Edu, Exp, Type, Report, Telphone, Eduname, Edusdate, Eduedate, Education, Eduspec, Living, Email, Hy, Minsalary, Jobstatus, basic, intention, City_classid, wexperience, Wexperiencea;
    public static string educationa, evaluatea, functiona, projecta, traina, educationA, projectA, trainA, functionA, evaluateA, wcaseA, resumeA;
    public static string Wexperienceb, educationb, functionb, projectb, trainb, Integrity, Src,Qhjl,Id,addres;
    public static int number, age;
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
        DataTable dt = DAL.SQLHelper.GetDtBySql("select * from m_info where username='" + Session["userName"] + "'");
        if (dt.Rows.Count > 0)
        {
            if (!string.IsNullOrEmpty(Request.QueryString["sc"]))
            {
                DAL.SQLHelper.GetExecute("delete from m_resume where Id=" + Request.QueryString["sc"] + " ");
                DataTable dt4 = DAL.SQLHelper.GetDtBySql("select * from m_resume where J_Id='" + dt.Rows[0]["Id"].ToString() + "'");
                if (dt4.Rows.Count > 0) 
                {
                    DAL.SQLHelper.GetExecute("update m_resume set defaulta='1' where Id=" + dt4.Rows[0]["Id"].ToString() + " ");
                }
                
                Response.Write("<script type='text/javascript'>alert('删除成功!')</script>");
            }

            string sql = "select * from m_resume where J_Id='" + dt.Rows[0]["Id"].ToString() + "' ";
            if (!string.IsNullOrEmpty(Request.QueryString["Id"]))
            {
                sql += "  and Id='" + Request.QueryString["Id"] + "' ";
            }
            else
            {
                sql += " and defaulta='1' ";
            }
            DataTable dt2 = DAL.SQLHelper.GetDtBySql(sql);
            if (dt2.Rows.Count > 0)
            {
                Id = dt2.Rows[0]["Id"].ToString();
                Uname = dt.Rows[0]["name"].ToString();               //姓名
                Birthday = dt.Rows[0]["birthday"].ToString();         //出生年月
                string ageA = dt.Rows[0]["birthday"].ToString();
                ageA = ageA.Substring(0, 4);
                age = int.Parse(DateTime.Now.ToString("yyyy")) - int.Parse(ageA);           //年龄

                Edu = dt.Rows[0]["edu"].ToString();                   //最高学历
                Exp = dt.Rows[0]["exp"].ToString();                   //经验
                Type = dt2.Rows[0]["type"].ToString();               //工作性质
                Report = dt2.Rows[0]["report"].ToString();           //到岗时间
                Telphone = dt.Rows[0]["telphone"].ToString();       //手机
                Sex = dt.Rows[0]["sex"].ToString();                   //性别
                Src = "images/14947989259.PNG";
                if (Sex == "女")
                {
                    Src = "images/14922051316.PNG";
                }
                if (dt.Rows[0]["preview"].ToString() != "") 
                {
                    Src = dt.Rows[0]["preview"].ToString();
                }
                Living = dt.Rows[0]["living"].ToString();            //现居住地
                Email = dt.Rows[0]["email"].ToString();              //邮箱
                Hy = dt2.Rows[0]["hy"].ToString();                   //从事行业
                name = dt2.Rows[0]["name"].ToString();               //期望岗位
                DataTable dtA = DAL.SQLHelper.GetDtBySql("select name from city_cache where Id='" + dt2.Rows[0]["city_classid"].ToString() + "' ");
                City_classid = dtA.Rows[0][0].ToString();           //期望城市 
                Minsalary = dt2.Rows[0]["salary"].ToString();       //薪资
                evaluatea = dt.Rows[0]["conten"].ToString();        //自我评价

                Jobstatus = dt2.Rows[0]["jobstatus"].ToString();     //求职状态
                date = dt2.Rows[0]["time"].ToString();               //时间

                addres = "m_addresume.aspx?Id=" + dt.Rows[0]["Id"].ToString();
                basic = "m_info.aspx";
                intention = "c_addexpect.aspx?Id=" + dt2.Rows[0]["Id"].ToString();
                wexperience = "c_resumeson.aspx?Id=" + dt2.Rows[0]["Id"].ToString();
                educationA = "c_edu.aspx?Id=" + dt2.Rows[0]["Id"].ToString();
                projectA = "c_project.aspx?Id=" + dt2.Rows[0]["Id"].ToString();
                trainA = "c_Training.aspx?Id=" + dt2.Rows[0]["Id"].ToString();
                functionA = "c_Skill.aspx?Id=" + dt2.Rows[0]["Id"].ToString();
                evaluateA = "c_evaluate.aspx?Id=" + dt.Rows[0]["Id"].ToString() + "&JId=" + dt2.Rows[0]["Id"].ToString() + "";
                wcaseA = "c_wcase.aspx?Id=" + dt2.Rows[0]["Id"].ToString();
                resumeA = "c_resume_show.aspx?Id=" + dt2.Rows[0]["Id"].ToString() + "&yl=1";

                number = 55;
                WexperienceaA();
                EducationA();
                FunctionA();
                ProjectA();
                TrainA();

                if (number > 100)
                {
                    Integrity = "<span class=\"yun_usermember_resumeintegrity_name\">完整度</span> 100%<span class=\"rsm_schedule_b\"><i style=\"width: 100%\"></i></span>";
                }
                else
                {
                    Integrity = "<span class=\"yun_usermember_resumeintegrity_name\">完整度</span> " + number + "%<span class=\"rsm_schedule_b\"><i style=\"width: " + number + "%\"></i></span>";
                }

                DataTable dt3 = DAL.SQLHelper.GetDtBySql("select * from m_resume where J_Id='" + dt.Rows[0]["Id"].ToString() + "' ");
                if (dt3.Rows.Count > 0)
                {
                    string A = "";
                    for (int i = 0; i < dt3.Rows.Count; i++)
                    {
                        string C = "";
                        if (dt3.Rows[i]["defaulta"].ToString() == "1")
                        {
                            C = "(默认)";
                        }
                        string B = " {value: '" + dt3.Rows[i]["Id"].ToString() + "',text: '" + dt3.Rows[i]["name"].ToString() + "" + C + "' }";
                        if (i > 0)
                        {
                            A = A + "," + B;
                        }
                        else
                        {
                            A = B;
                        }
                    }
                    Qhjl = A;
                }
            }
            else 
            {
                Response.Redirect("m_addresume.aspx");
            }
        }
        else
        {
            Response.Redirect("m_addresume.aspx");
        }
    }

    //工作经历
    protected void WexperienceaA()
    {
        string sql = "select * from m_info where username='" + Session["userName"].ToString() + "' ";
        DataTable dt = DAL.SQLHelper.GetDtBySql(sql);
        string sqla = " select * from m_resume where J_Id='" + dt.Rows[0]["Id"].ToString() + "'";
        if (!string.IsNullOrEmpty(Request.QueryString["Id"]))
        {
            sqla += " and Id='" + Request.QueryString["Id"] + "' ";
        }
        else
        {
            sqla += " and defaulta='1' ";
        }
        DataTable dt2 = DAL.SQLHelper.GetDtBySql(sqla);
        DataTable dtB = DAL.SQLHelper.GetDtBySql("select * from c_resumeson where J_Id='" + dt2.Rows[0]["Id"].ToString() + "'");
        if (dtB.Rows.Count > 0)
        {
            string A = "";
            for (int i = 0; i < dtB.Rows.Count; i++)
            {
                string B = "<div class=\"yun_usermember_resumelist\"><div>" + dtB.Rows[i]["sdate"].ToString() + "-" + dtB.Rows[i]["edate"].ToString() + "</div><div class=\"yun_usermember_resumejobname\">" + dtB.Rows[i]["title"].ToString() + "</div><div class=\"yun_usermember_resumecomname\">" + dtB.Rows[i]["name"].ToString() + "</div><div>" + dtB.Rows[i]["conten"].ToString() + "</div></div>";
                if (i > 0)
                {
                    A = A + B;
                }
                else
                {
                    A = B;
                }
            }
            Wexperiencea = A;
            Wexperienceb = "list_box_b";
            number = number + 10;
        }
        else
        {
            Wexperiencea = "";
            Wexperienceb = "";
        }
    }

    //教育经历
    protected void EducationA()
    {
        string sql = "select * from m_info where Username='" + Session["userName"].ToString() + "' ";
        DataTable dt = DAL.SQLHelper.GetDtBySql(sql);
        string sqla = " select * from m_resume where J_Id='" + dt.Rows[0]["Id"].ToString() + "'";
        if (!string.IsNullOrEmpty(Request.QueryString["Id"]))
        {
            sqla += " and Id='" + Request.QueryString["Id"] + "' ";
        }
        else
        {
            sqla += " and defaulta='1' ";
        }
        DataTable dt2 = DAL.SQLHelper.GetDtBySql(sqla);
        DataTable dtB = DAL.SQLHelper.GetDtBySql("select * from c_edu where J_Id='" + dt2.Rows[0]["Id"].ToString() + "'");
        if (dtB.Rows.Count > 0)
        {
            string A = "";
            for (int i = 0; i < dtB.Rows.Count; i++)
            {
                string B = "<div class=\"yun_usermember_resumelist\"><div>" + dtB.Rows[i]["sdate"].ToString() + "-" + dtB.Rows[i]["edate"].ToString() + "</div><div class=\"yun_usermember_resumejobname\">" + dtB.Rows[i]["eduname"].ToString() + "</div><div class=\"yun_usermember_resumecomname\">" + dtB.Rows[i]["education"].ToString() + "</div><div>" + dtB.Rows[i]["eduspec"].ToString() + "</div></div>";
                if (i > 0)
                {
                    A = A + B;
                }
                else
                {
                    A = B;
                }
            }
            educationa = A;
            educationb = "list_box_b";
            number = number + 10;
        }
        else
        {
            educationa = "";
            educationb = "";
        }
    }

    //职业技能
    protected void FunctionA()
    {
        string sql = "select * from m_info where Username='" + Session["userName"].ToString() + "' ";
        DataTable dt = DAL.SQLHelper.GetDtBySql(sql);
        string sqla = " select * from m_resume where J_Id='" + dt.Rows[0]["Id"].ToString() + "'";
        if (!string.IsNullOrEmpty(Request.QueryString["Id"]))
        {
            sqla += " and Id='" + Request.QueryString["Id"] + "' ";
        }
        else
        {
            sqla += " and defaulta='1' ";
        }
        DataTable dt2 = DAL.SQLHelper.GetDtBySql(sqla);
        DataTable dtB = DAL.SQLHelper.GetDtBySql("select * from c_Skill where J_Id='" + dt2.Rows[0]["Id"].ToString() + "'");
        if (dtB.Rows.Count > 0)
        {
            string A = "";
            for (int i = 0; i < dtB.Rows.Count; i++)
            {
                string B = "<div class=\"yun_usermember_resumelist\"><div>" + dtB.Rows[i]["name"].ToString() + "</div><div class=\"yun_usermember_resumejobname\">掌握时间：" + dtB.Rows[i]["longtime"].ToString() + "年</div><div>技能证书：<img src=\"" + dtB.Rows[i]["previewimg"].ToString() + "\" style=\"max-width: 50px; vertical-align: middle\"></div></div>";
                if (i > 0)
                {
                    A = A + B;
                }
                else
                {
                    A = B;
                }
            }
            functiona = A;
            functionb = "list_box_b";
            number = number + 10;
        }
        else
        {
            functiona = "";
            functionb = "";
        }
    }

    //项目经历
    protected void ProjectA()
    {

        string sql = "select * from m_info where Username='" + Session["userName"].ToString() + "' ";
        DataTable dt = DAL.SQLHelper.GetDtBySql(sql);
        string sqla = " select * from m_resume where J_Id='" + dt.Rows[0]["Id"].ToString() + "'";
        if (!string.IsNullOrEmpty(Request.QueryString["Id"]))
        {
            sqla += " and Id='" + Request.QueryString["Id"] + "' ";
        }
        else
        {
            sqla += " and defaulta='1' ";
        }
        DataTable dt2 = DAL.SQLHelper.GetDtBySql(sqla);
        DataTable dtB = DAL.SQLHelper.GetDtBySql("select * from c_Project where J_Id='" + dt2.Rows[0]["Id"].ToString() + "'");
        if (dtB.Rows.Count > 0)
        {
            string A = "";
            for (int i = 0; i < dtB.Rows.Count; i++)
            {
                string B = "<div class=\"yun_usermember_resumelist\"><div class=\"\">" + dtB.Rows[i]["sdate"].ToString() + "-" + dtB.Rows[i]["edate"].ToString() + "</div><div class=\"yun_usermember_resumejobname\">" + dtB.Rows[i]["name"].ToString() + "</div><div class=\"yun_usermember_resumecomname\">担任 " + dtB.Rows[i]["title"].ToString() + "</div><div class=\"\">" + dtB.Rows[i]["conten"].ToString() + "</div></div>";
                if (i > 0)
                {
                    A = A + B;
                }
                else
                {
                    A = B;
                }
            }
            projecta = A;
            projectb = "list_box_b";
            number = number + 8;
        }
        else
        {
            projecta = "";
            projectb = "";
        }
    }

    //培训经历
    protected void TrainA()
    {
        string sql = "select * from m_info where Username='" + Session["userName"].ToString() + "' ";
        DataTable dt = DAL.SQLHelper.GetDtBySql(sql);
        string sqla = " select * from m_resume where J_Id='" + dt.Rows[0]["Id"].ToString() + "'";
        if (!string.IsNullOrEmpty(Request.QueryString["Id"]))
        {
            sqla += " and Id='" + Request.QueryString["Id"] + "' ";
        }
        else
        {
            sqla += " and defaulta='1' ";
        }
        DataTable dt2 = DAL.SQLHelper.GetDtBySql(sqla);
        DataTable dtB = DAL.SQLHelper.GetDtBySql("select * from c_Training where J_Id='" + dt2.Rows[0]["Id"].ToString() + "'");
        if (dtB.Rows.Count > 0)
        {
            string A = "";
            for (int i = 0; i < dtB.Rows.Count; i++)
            {
                string B = "<div class=\"yun_usermember_resumelist\"><div class=\"\">" + dtB.Rows[i]["sdate"].ToString() + "-" + dtB.Rows[i]["edate"].ToString() + "</div><div class=\"yun_usermember_resumejobname\">" + dtB.Rows[i]["name"].ToString() + "</div><div class=\"yun_usermember_resumecomname\">" + dtB.Rows[i]["title"].ToString() + "</div><div class=\"\">" + dtB.Rows[i]["conten"].ToString() + "</div></div>";
                if (i > 0)
                {
                    A = A + B;
                }
                else
                {
                    A = B;
                }
            }
            traina = A;
            trainb = "list_box_b";
            number = number + 7;
        }
        else
        {
            traina = "";
            trainb = "";
        }
    }
    
}