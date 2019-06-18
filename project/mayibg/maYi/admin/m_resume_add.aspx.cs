using System;
using System.Collections.Generic;
using System.Data;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin_m_resume_add : System.Web.UI.Page
{
    public string Id, Edu, Resumeson, Project, Training, Skill, Wcase;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            Date();
        }
    }

    private void Date()
    {
        if (!string.IsNullOrEmpty(Request.QueryString["Id"]))
        {
            Id = Request.QueryString["Id"];
            DataTable dt2 = DAL.SQLHelper.GetDtBySql("select * from m_resume where Id=" + Request.QueryString["Id"] + "");
            name.InnerText = dt2.Rows[0]["name"].ToString();                     //期望岗位
            hy.InnerText = dt2.Rows[0]["hy"].ToString();                         //从事行业
            DataTable dtA = DAL.SQLHelper.GetDtBySql("select name from job_classid where Id=" + dt2.Rows[0]["job_classid"].ToString() + "");
            job.InnerText = dtA.Rows[0][0].ToString();                           //工作职能
            salary.InnerText = dt2.Rows[0]["salary"].ToString();                   //期望薪资
            DataTable dtB = DAL.SQLHelper.GetDtBySql("select name from city_cache where Id=" + dt2.Rows[0]["city_classid"].ToString() + "");
            city.InnerText = dtB.Rows[0][0].ToString();                             //期望城市
            type.InnerText = dt2.Rows[0]["type"].ToString();                        //工作性质
            report.InnerText = dt2.Rows[0]["report"].ToString();                    //到岗时间
            jobstatus.InnerText = dt2.Rows[0]["jobstatus"].ToString();               //求职状态
            time.InnerText = dt2.Rows[0]["time"].ToString();                        //时间
            defaulta.InnerText = "否";   
            if( dt2.Rows[0]["defaulta"].ToString()=="1")
            {
                 defaulta.InnerText ="是";                                          //默认
            }


            //教育经历
            DataTable dt3 = DAL.SQLHelper.GetDtBySql("select * from c_edu where J_Id=" + Request.QueryString["Id"] + "");
            if (dt3.Rows.Count > 0)
            {
                string A = "";
                for (int i = 0; i < dt3.Rows.Count; i++)
                {
                    string B = " <ul class=\"shop_content clearfix\"><li style=\"float:left;padding-left:100px;\"><label class=\"label_name\">学校名称：" + dt3.Rows[i]["eduname"].ToString() + "</label></li>";
                    B += "<li style=\"float:left;padding-left:100px;\"><label class=\"label_name\">在校时间：" + dt3.Rows[i]["sdate"].ToString() + "-" + dt3.Rows[i]["edate"].ToString() + "</label></li>";
                    B += "<li style=\"float:left;padding-left:100px;\"><label class=\"label_name\">所学专业：" + dt3.Rows[i]["eduspec"].ToString() + "</label></li>";
                    B += "<li style=\"float:left;padding-left:100px;\"><label class=\"label_name\">毕业学历：" + dt3.Rows[i]["education"].ToString() + "</label></li></ul>";
                    if (i > 0)
                    {
                        A = A + B;
                    }
                    else
                    {
                        A = B;
                    }
                }
                Edu = " <div class=\"Store_Introduction\"><div class=\"title_name\">教育经历</div><div style=\"margin-top: 20px; margin-bottom: 20px\">" + A + "</div></div>"; ;

            }
            else 
            {
                Edu = "";
            }

            //工作经历
            DataTable dt4 = DAL.SQLHelper.GetDtBySql("select * from c_resumeson where J_Id=" + Request.QueryString["Id"] + "");
            if (dt4.Rows.Count > 0)
            {
                string A = "";
                for (int i = 0; i < dt4.Rows.Count; i++)
                {
                    string B = " <ul class=\"shop_content clearfix\"><li style=\"float:left;padding-left:100px;\"><label class=\"label_name\">单位名称：" + dt4.Rows[i]["name"].ToString() + "</label></li>";
                    B += "<li style=\"float:left;padding-left:100px;\"><label class=\"label_name\">时间：" + dt4.Rows[i]["sdate"].ToString() + "-" + dt4.Rows[0]["edate"].ToString() + "</label></li>";
                    B += "<li style=\"float:left;padding-left:100px;\"><label class=\"label_name\">担任职位：" + dt4.Rows[i]["title"].ToString() + "</label></li>";
                    B += "<li style=\"float:left;padding-left:100px;\"><label class=\"label_name\">工作内容：" + dt4.Rows[i]["conten"].ToString() + "</label></li></ul>";
                    if (i > 0)
                    {
                        A = A + B;
                    }
                    else
                    {
                        A = B;
                    }
                }
                Resumeson = " <div class=\"Store_Introduction\"><div class=\"title_name\">工作经历</div><div style=\"margin-top: 20px; margin-bottom: 20px\">" + A + "</div></div>"; ;

            }
            else
            {
                Resumeson = "";
            }

            //项目经历
            DataTable dt5 = DAL.SQLHelper.GetDtBySql("select * from c_Project where J_Id=" + Request.QueryString["Id"] + "");
            if (dt5.Rows.Count > 0)
            {
                string A = "";
                for (int i = 0; i < dt5.Rows.Count; i++)
                {
                    string B = " <ul class=\"shop_content clearfix\"><li style=\"float:left;padding-left:100px;\"><label class=\"label_name\">项目名称：" + dt5.Rows[i]["name"].ToString() + "</label></li>";
                    B += "<li style=\"float:left;padding-left:100px;\"><label class=\"label_name\">时间：" + dt5.Rows[i]["sdate"].ToString() + "-" + dt5.Rows[i]["edate"].ToString() + "</label></li>";
                    B += "<li style=\"float:left;padding-left:100px;\"><label class=\"label_name\">担任职位：" + dt5.Rows[i]["title"].ToString() + "</label></li>";
                    B += "<li style=\"float:left;padding-left:100px;\"><label class=\"label_name\">项目内容：" + dt5.Rows[i]["conten"].ToString() + "</label></li></ul>";
                    if (i > 0)
                    {
                        A = A + B;
                    }
                    else
                    {
                        A = B;
                    }
                }
                Project = " <div class=\"Store_Introduction\"><div class=\"title_name\">项目经历</div><div style=\"margin-top: 20px; margin-bottom: 20px\">" + A + "</div></div>"; ;

            }
            else
            {
                Project = "";
            }

            //培训经历
            DataTable dt6 = DAL.SQLHelper.GetDtBySql("select * from c_Training where J_Id=" + Request.QueryString["Id"] + "");
            if (dt6.Rows.Count > 0)
            {
                string A = "";
                for (int i = 0; i < dt6.Rows.Count; i++)
                {
                    string B = " <ul class=\"shop_content clearfix\"><li style=\"float:left;padding-left:100px;\"><label class=\"label_name\">培训中心：" + dt6.Rows[i]["name"].ToString() + "</label></li>";
                    B += "<li style=\"float:left;padding-left:100px;\"><label class=\"label_name\">时间：" + dt6.Rows[i]["sdate"].ToString() + "-" + dt6.Rows[i]["edate"].ToString() + "</label></li>";
                    B += "<li style=\"float:left;padding-left:100px;\"><label class=\"label_name\">培训方向：" + dt6.Rows[i]["title"].ToString() + "</label></li>";
                    B += "<li style=\"float:left;padding-left:100px;\"><label class=\"label_name\">培训描述：" + dt6.Rows[i]["conten"].ToString() + "</label></li></ul>";
                    if (i > 0)
                    {
                        A = A + B;
                    }
                    else
                    {
                        A = B;
                    }
                }
                Training = " <div class=\"Store_Introduction\"><div class=\"title_name\">培训经历</div><div style=\"margin-top: 20px; margin-bottom: 20px\">" + A + "</div></div>"; ;

            }
            else
            {
                Training = "";
            }


            //职业技能
            DataTable dt7 = DAL.SQLHelper.GetDtBySql("select * from c_Skill where J_Id=" + Request.QueryString["Id"] + "");
            if (dt7.Rows.Count > 0)
            {
                string A = "";
                for (int i = 0; i < dt7.Rows.Count; i++)
                {
                    string B = " <ul class=\"shop_content clearfix\"><li style=\"float:left;padding-left:100px;\"><label class=\"label_name\">技能名称：" + dt7.Rows[i]["name"].ToString() + "</label></li>";
                    B += "<li style=\"float:left;padding-left:100px;\"><label class=\"label_name\">掌握时间：" + dt7.Rows[i]["longtime"].ToString() + "</label></li>";
                    B += "<li style=\"float:left;padding-left:100px;\"><label class=\"label_name\">技能证书：" + dt7.Rows[i]["previewimg"].ToString() + "</label></li></ul>";
                    if (i > 0)
                    {
                        A = A + B;
                    }
                    else
                    {
                        A = B;
                    }
                }
                Skill = " <div class=\"Store_Introduction\"><div class=\"title_name\">职业技能</div><div style=\"margin-top: 20px; margin-bottom: 20px\">" + A + "</div></div>"; ;

            }
            else
            {
                Skill = "";
            }


            //作品案例
            DataTable dt8 = DAL.SQLHelper.GetDtBySql("select * from c_wcase where J_Id=" + Request.QueryString["Id"] + "");
            if (dt8.Rows.Count > 0)
            {
                string A = "";
                for (int i = 0; i < dt8.Rows.Count; i++)
                {
                    string B = " <ul class=\"shop_content clearfix\"><li style=\"float:left;padding-left:100px;\"><label class=\"label_name\">作品标题：" + dt8.Rows[i]["title"].ToString() + "</label></li>";
                    B += "<li style=\"float:left;padding-left:100px;\"><label class=\"label_name\">作品排序：" + dt8.Rows[i]["sort"].ToString() + "</label></li>";
                    B += "<li style=\"float:left;padding-left:100px;\"><label class=\"label_name\">作品图片：" + dt8.Rows[i]["preview"].ToString() + "</label></li></ul>";
                    if (i > 0)
                    {
                        A = A + B;
                    }
                    else
                    {
                        A = B;
                    }
                }
                Wcase = " <div class=\"Store_Introduction\"><div class=\"title_name\">作品案例</div><div style=\"margin-top: 20px; margin-bottom: 20px\">" + A + "</div></div>"; ;

            }
            else
            {
                Wcase = "";
            }
        }

    }

}