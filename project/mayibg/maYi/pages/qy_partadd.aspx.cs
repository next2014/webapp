using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class pages_qy_partadd : System.Web.UI.Page
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
            //给button1添加客户端事件
            Button1.Attributes.Add("OnClick", "return UserAddVerify()");
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

            linkman.Value = dt.Rows[0]["linkman"].ToString();
            linktel.Value = dt.Rows[0]["linktel"].ToString();
            ida.Value = dt.Rows[0]["Id"].ToString();

            if (!string.IsNullOrEmpty(Request.QueryString["Id"])) 
            {
                DataTable dt1 = DAL.SQLHelper.GetDtBySql("select * from qy_part where Id=" + Request.QueryString["Id"]+ " ");
                name.Value = dt1.Rows[0]["name"].ToString();
                typePicker.InnerText = dt1.Rows[0]["type"].ToString();
                type.Value = dt1.Rows[0]["type"].ToString();
                number.Value = dt1.Rows[0]["number"].ToString();
                //worktimeshow.InnerText = "上、中、晚时段";
                //worktime.Value = dt1.Rows[0]["worktime"].ToString();
                descriptiontext.Value = dt1.Rows[0]["descriptiontext"].ToString();
                if (dt1.Rows[0]["descriptiontext"].ToString() == "长期招聘")
                {
                    descriptionshow.InnerText = "长期招聘";
                }
                else 
                {
                    descriptionshow.InnerText = "短期招聘";
                }
                descriptionsdate.Value = dt1.Rows[0]["descriptionsdate"].ToString();
                descriptionedate.Value = dt1.Rows[0]["descriptionedate"].ToString();
                descriptiondeadline.Value = dt1.Rows[0]["descriptiondeadline"].ToString();

                sexPicker.InnerText = dt1.Rows[0]["sex"].ToString();
                sex.Value = dt1.Rows[0]["sex"].ToString();
                salary_typeshow.InnerText = dt1.Rows[0]["salary_typetext"].ToString();
                salary_typetext.Value = dt1.Rows[0]["salary_typetext"].ToString();
                billing_cycleComPicker.InnerText = dt1.Rows[0]["billing_cycle"].ToString();
                billing_cycle.Value = dt1.Rows[0]["billing_cycle"].ToString();
                DataTable dtA = DAL.SQLHelper.GetDtBySql("select name from city_cache where Id=" + dt1.Rows[0]["provinceid"].ToString() + " ");
                DataTable dtB = DAL.SQLHelper.GetDtBySql("select name from city_cache where Id=" + dt1.Rows[0]["cityid"].ToString() + " ");
                DataTable dtC = DAL.SQLHelper.GetDtBySql("select name from city_cache where Id=" + dt1.Rows[0]["three_cityid"].ToString() + " ");
                cityPicker.InnerText = dtA.Rows[0][0].ToString() + " " + dtB.Rows[0][0].ToString() + " " + dtC.Rows[0][0].ToString();
                provinceid.Value = dt1.Rows[0]["provinceid"].ToString();
                cityid.Value = dt1.Rows[0]["cityid"].ToString();
                three_cityid.Value = dt1.Rows[0]["three_cityid"].ToString();
                address.Value = dt1.Rows[0]["address"].ToString();
                contenttext.Value = dt1.Rows[0]["contenttext"].ToString();
                contentshow.InnerText=dt1.Rows[0]["contenttext"].ToString();
                linkman.Value = dt1.Rows[0]["linkman"].ToString();
                linktel.Value = dt1.Rows[0]["linktel"].ToString();
            }
        }
        else
        {
            //填写企业信息
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        string Name = name.Value;                                               //职位名称
        string Id = ida.Value;
        string Type = type.Value;                                               //工作类型
        string Number = number.Value;                                           //招聘人数
        string Worktime = worktime.Value;                                       //兼职时间                   
        string Descriptiontext = descriptiontext.Value;                         //有效期
        string Descriptionsdate = descriptionsdate.Value;
        string Descriptionedate = "";
        string Descriptiondeadline = "";
        if (Descriptiontext == "长期招聘")
        {
            Descriptiontext = "长期招聘";
        }
        else
        {
            Descriptiontext = "短期招聘";
            Descriptionedate = descriptionedate.Value;
            Descriptiondeadline = descriptiondeadline.Value;
        }
        string Sex = sex.Value;                                                 //性别要求                  
        string Salary_typetext = salary_typetext.Value;                          //兼职薪水
        string Billing_cycle = billing_cycle.Value;                             //结算周期                            
        string Provinceid = provinceid.Value;                                    //工作区域
        string Cityid = cityid.Value;
        string Three_cityid = three_cityid.Value;
        string Address = address.Value;                                         //详细地址
        string Contenttext = contenttext.Value;                                  //兼职内容
        string Linkman = linkman.Value;                                         //联系人
        string Linktel = linktel.Value;                                           //联系手机
        string time = DateTime.Now.ToString("yyyy-MM-dd");                      //当前时间

        if (!string.IsNullOrEmpty(Request.QueryString["Id"]))
        {
            string sql = "update qy_part set name='" + Name + "',type='" + Type + "',number='" + Number + "',worktime='" + Worktime + "',descriptiontext='" + Descriptiontext + "',descriptionsdate='" + Descriptionsdate + "',descriptionedate='" + Descriptionedate + "',descriptiondeadline='" + Descriptiondeadline + "',sex='" + Sex + "',salary_typetext='" + Salary_typetext + "',billing_cycle='" + Billing_cycle + "',";
            sql += "provinceid='" + Provinceid + "',cityid='" + Cityid + "',three_cityid='" + Three_cityid + "',address='" + Address + "',contenttext='" + Contenttext + "',linkman='" + Linkman + "',linktel='" + Linktel + "',time='" + time + "' where Id='" + Request.QueryString["Id"] + "'";
            DAL.SQLHelper.GetExecute(sql);
        }
        else
        {
            DataTable dt2 = DAL.SQLHelper.GetDtBySql("select isnull(max(Id)+1,0) from qy_part");
            string A = dt2.Rows[0][0].ToString();
            string sql = "insert into qy_part (Id,G_Id,name,type,number,worktime,descriptiontext,descriptionsdate,descriptionedate,descriptiondeadline,sex,salary_typetext,billing_cycle,provinceid,cityid,three_cityid,address,contenttext,linkman,linktel,time,audits,delivery,recommend,nottop) values ";
            sql += " (" + A + "," + Id + ",'" + Name + "','" + Type + "','" + Number + "','" + Worktime + "','" + Descriptiontext + "','" + Descriptionsdate + "','" + Descriptionedate + "','" + Descriptiondeadline + "','" + Sex + "','" + Salary_typetext + "','" + Billing_cycle + "','" + Provinceid + "','" + Cityid + "','" + Three_cityid + "','" + Address + "','" + Contenttext + "','" + Linkman + "','" + Linktel + "','" + time + "','0','0','0','0')";
            DAL.SQLHelper.GetExecute(sql);
        }

        Response.Redirect("qy_part.aspx");
    }
    
}