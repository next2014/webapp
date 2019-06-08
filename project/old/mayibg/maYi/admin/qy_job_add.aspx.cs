using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin_qy_job_add : System.Web.UI.Page
{
    public string Id;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            Date();
        }
    }

    private void Date()
    {
        if (!string.IsNullOrEmpty(Request.QueryString["tg"]))
        {
            DAL.SQLHelper.GetExecute("update qy_job set audits='1' where Id='" + Request.QueryString["tg"] + "'");
            Response.Write("<script>alert('已通过!');</script>");
        }

        if (!string.IsNullOrEmpty(Request.QueryString["jj"]))
        {
            DAL.SQLHelper.GetExecute("update qy_job set audits='2' where Id='" + Request.QueryString["jj"] + "'");
            Response.Write("<script>alert('已拒绝!');</script>");
        }

        if (!string.IsNullOrEmpty(Request.QueryString["Id"]))
        {
            Id = Request.QueryString["Id"];
            DataTable dt2 = DAL.SQLHelper.GetDtBySql("select * from qy_job where Id=" + Request.QueryString["Id"] + "");
            name.InnerText = dt2.Rows[0]["name"].ToString();                            //职位名称
            DataTable dtA = DAL.SQLHelper.GetDtBySql("select name from job_cache where Id='" + dt2.Rows[0]["job_post"].ToString() + "' ");
            job.InnerText = dtA.Rows[0][0].ToString();                                 //职位类别
            DataTable dtB = DAL.SQLHelper.GetDtBySql("select name from city_cache where Id='" + dt2.Rows[0]["cityid"].ToString() + "' ");
            cityid.InnerText = dtB.Rows[0][0].ToString();                                //工作地点
            salary.InnerText = dt2.Rows[0]["salary"].ToString();                         //薪资待遇
            link_man.InnerText = dt2.Rows[0]["link_man"].ToString();                     //联系人
            link_moblie.InnerText = dt2.Rows[0]["link_moblie"].ToString();               //联系方式
            isemail.InnerText = dt2.Rows[0]["isemail"].ToString();                       //接收简历的邮箱
            hy.InnerText = dt2.Rows[0]["hy"].ToString();                                 //从事行业
            number.InnerText = dt2.Rows[0]["number"].ToString();                         //招聘人数
            exp.InnerText = dt2.Rows[0]["exp"].ToString();                               //工作经验
            report.InnerText = dt2.Rows[0]["report"].ToString();                         //到岗时间
            age.InnerText = dt2.Rows[0]["age"].ToString();                               //年龄要求
            sex.InnerText = dt2.Rows[0]["sex"].ToString();                               //性别要求
            edu.InnerText = dt2.Rows[0]["edu"].ToString();                               //教育程度
            is_graduate.InnerText = "否";                                                //可接受应届生
            if (dt2.Rows[0]["is_graduate"].ToString() == "1")
            {
                is_graduate.InnerText = "是";
            }
            marriage.InnerText = dt2.Rows[0]["marriage"].ToString();                     //婚姻状况
            lang.InnerText = dt2.Rows[0]["lang"].ToString();                             //语言要求
            time.InnerText = dt2.Rows[0]["time"].ToString();                             //时间
            audits.InnerText = "否";                                                     //审核码
            if (dt2.Rows[0]["audits"].ToString() == "1")
            {
                audits.InnerText = "是";
            }
            delivery.InnerText = dt2.Rows[0]["delivery"].ToString();                     //投递次数
            recommend.InnerText = "否";                                                  //推荐职位
            if (dt2.Rows[0]["recommend"].ToString() == "1")
            {
                recommend.InnerText = "是";
            }
            nottop.InnerText = "否";                                                     //置顶
            if (dt2.Rows[0]["nottop"].ToString() == "1") 
            {
                nottop.InnerText = "是"; 
            }
            contentshow.InnerText = dt2.Rows[0]["contentshow"].ToString();               //职位描述
        }
    }
}