using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class c_job_applyjob : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            btnSave.Attributes.Add("OnClick", "return UserAddVerify()");
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        string Uname = uname.Value;                             //姓名
        string Sex = sex.Value;                                 //性别
        string Birthday = birthday.Value;                       //出生年月
        string Edu = edu.Value;                                 //最高学历
        string Exp = exp.Value;                                 //工作经验
        string Type = type.Value;                               //工作性质
        string Report = report.Value;                           //到岗时间
        string Telphone = telphone.Value;                       //手机号
        string Paw = paw.Value;                                 //密码
        string Eduname = eduname.Value;                         //毕业院校
        string Edusdate = edusdate.Value;                       //入校时间
        string Eduedate = eduedate.Value;                       //离校时间
        string Education = education.Value;                     //毕业学历
        string Eduspec = eduspec.Value;                         //所学专业
        string time = DateTime.Now.ToString("yyyy-MM-dd");      //当前时间

        //新增账号
        DataTable dt = DAL.SQLHelper.GetDtBySql("select * from jz_manager where username='" + Telphone + "'");
        if (dt.Rows.Count > 0)
        {
            Response.Write("<script type='text/javascript'>alert('该手机号码已经注册了!')</script>");
            return;
        }
        else
        {
            DAL.SQLHelper.GetExecute("insert into jz_manager (username,password,number,time) values (" + Telphone + "," + Paw + ",'1','" + time + "') ");
        }

        //新增简历
        DataTable dt3 = DAL.SQLHelper.GetDtBySql("select * from qy_job where Id='" + Request.QueryString["Id"] + "' ");
        string Name = dt3.Rows[0]["name"].ToString();
        string Cityid = dt3.Rows[0]["cityid"].ToString();
        string Salary = dt3.Rows[0]["salary"].ToString();
        string Hy = dt3.Rows[0]["hy"].ToString();

        DataTable dt2 = DAL.SQLHelper.GetDtBySql("select isnull(max(Id)+1,0)  from m_info");
        string A = dt2.Rows[0][0].ToString();
        string sql = "insert into m_info (Id,username,name,sex,birthday,edu,exp,telphone,time,yz_idcard) values ('" + A + "','" + Telphone + "','" + Uname + "','" + Sex + "','" + Birthday + "','" + Edu + "','" + Exp + "','" + Telphone + "','" + time + "','0') ";

        DataTable dt4 = DAL.SQLHelper.GetDtBySql("select isnull(max(Id)+1,0)  from m_resume");
        string B = dt4.Rows[0][0].ToString();
        string sqlb = "insert into m_resume (Id,J_Id,hy,name,salary,city_classid,type,report,time,defaulta) values ('" + B + "','" + A + "','" + Hy + "','" + Name + "','" + Salary + "','" + Cityid + "','" + Type + "','" + Report + "','" + time + "','1')";
        string sqlc = "insert into c_edu (E_Id,J_Id,eduname,sdate,edate,education,eduspec) values ('" + B + "','0','" + Eduname + "','" + Edusdate + "','" + Eduedate + "','" + Education + "','" + Eduspec + "') ";
        DAL.SQLHelper.GetExecute(sql);
        DAL.SQLHelper.GetExecute(sqlb);
        DAL.SQLHelper.GetExecute(sqlc);

        Session["userName"] = Telphone;
        if (!string.IsNullOrEmpty(Request.QueryString["Id"]))
        {
            //简历投递+1
            string Id = Request.QueryString["Id"];
            DAL.SQLHelper.GetExecute("update qy_job set delivery=delivery+1 where Id='" + Id + "'");

            //申请记录
            DAL.SQLHelper.GetExecute("insert into jz_Zjg (zjg_Id,zw_Id,username,Cancellation,time,see,zwlx,accept) select isnull(max(zjg_Id)+1,0)," + Id + "," + Telphone + ",'F','" + time + "','F','1','0' from jz_Zjg");
        }

        Response.Write("<script type='text/javascript'>alert('申请并投递简历成功!');window.location='c_job_view.aspx?Id=" + Request.QueryString["Id"]+"';</script>");
        //返回
        //Response.Redirect("c_job_view.aspx?Id=" + Request.QueryString["Id"]);
    }

}