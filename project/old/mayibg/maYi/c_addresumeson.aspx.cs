using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class c_addresumeson : System.Web.UI.Page
{
    public static string yunset, yunseta;
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
        yunseta = "0";
        if (!string.IsNullOrEmpty(Request.QueryString["Id"]) && !string.IsNullOrEmpty(Request.QueryString["EId"]))
        {
            string sql = "select * from c_resumeson where J_Id='" + Request.QueryString["Id"] + "' and E_Id='" + Request.QueryString["EId"] + "'";
            DataTable dt = DAL.SQLHelper.GetDtBySql(sql);
            if (dt.Rows.Count > 0)
            {
                name.Value = dt.Rows[0]["name"].ToString();                                 //单位名称
                titlea.Value = dt.Rows[0]["title"].ToString();                               //担任职位
                sdatePicker.InnerText = dt.Rows[0]["sdate"].ToString();                     //入职时间
                sdate.Value = dt.Rows[0]["sdate"].ToString();                               //入职时间
                if (dt.Rows[0]["edate"].ToString() == "至今")
                {
                    totoday.Value = "1";
                    yunset = "mui-active";
                    yunseta = "16";
                }
                else
                {
                    totoday.Value = "";
                    yunset = "";
                    yunseta = "0";
                    edatePicker.InnerText = dt.Rows[0]["edate"].ToString();                     //离职时间
                    edate.Value = dt.Rows[0]["edate"].ToString();                               //离职时间
                }
                content.Value = dt.Rows[0]["conten"].ToString();                               //工作描述

            }
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        string Name = name.Value;
        string Title = titlea.Value;
        string Sdate = sdate.Value;
        string Edate = edate.Value;
        string Totoday = totoday.Value;
        if (Totoday == "1")
        {
            Edate = "至今";
        }
        string Content = content.Value;


        if (Session["userName"] == null)
        {
            Response.Redirect("c_login.aspx");
        }

        if (!string.IsNullOrEmpty(Request.QueryString["Id"]))
        {
            if (!string.IsNullOrEmpty(Request.QueryString["EId"]))
            {
                //修改
                string sql = "update c_resumeson set name='" + Name + "',title='" + Title + "',sdate='" + Sdate + "',edate='" + Edate + "',";
                sql += "conten='" + Content + "' where J_Id='" + Request.QueryString["Id"] + "' and E_Id='" + Request.QueryString["EId"] + "' ";
                DAL.SQLHelper.GetExecute(sql);

                Response.Redirect("c_resumeson.aspx?Id=" + Request.QueryString["Id"] + "");
            }
            else
            {
                //新增
                DataTable dtA = DAL.SQLHelper.GetDtBySql("select isnull(max(E_Id)+1,0) from c_resumeson where J_Id='" + Request.QueryString["Id"] + "'");
                string EID = dtA.Rows[0][0].ToString();
                string sql = "insert into c_resumeson (J_Id,E_Id,name,title,sdate,edate,conten) values ";
                sql += " ('" + Request.QueryString["Id"] + "','" + EID + "','" + Name + "','" + Title + "','" + Sdate + "','" + Edate + "','" + Content + "')";
                DAL.SQLHelper.GetExecute(sql);

                Response.Redirect("c_resumeson.aspx?Id=" + Request.QueryString["Id"] + "");
            }

        }
        else
        {
        }
    }
    
}