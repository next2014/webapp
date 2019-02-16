using System;
using System.Collections.Generic;
using System.Data;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin_m_info_add : System.Web.UI.Page
{
    public string Id,Src;
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
            DataTable dt2 = DAL.SQLHelper.GetDtBySql("select * from m_info where Id=" + Request.QueryString["Id"] + "");
            name.InnerText = dt2.Rows[0]["name"].ToString();                    //姓名
            sex.InnerText = dt2.Rows[0]["sex"].ToString();                     //性别
            birthday.InnerText = dt2.Rows[0]["birthday"].ToString();           //出生年月
            edu.InnerText = dt2.Rows[0]["edu"].ToString();                   //最高学历
            exp.InnerText = dt2.Rows[0]["exp"].ToString();                  //工作经验
            living.InnerText = dt2.Rows[0]["living"].ToString();             //现居住地
            telphone.InnerText = dt2.Rows[0]["telphone"].ToString();         //手机
            email.InnerText = dt2.Rows[0]["email"].ToString();                //邮箱

            address.InnerText = dt2.Rows[0]["address"].ToString();           //详细地址
            height.InnerText = dt2.Rows[0]["height"].ToString();              //身高
            weight.InnerText = dt2.Rows[0]["weight"].ToString();             //体重
            nationality.InnerText = dt2.Rows[0]["nationality"].ToString();     //民族
            marriage.InnerText = dt2.Rows[0]["marriage"].ToString();         //婚姻
            domicile.InnerText = dt2.Rows[0]["domicile"].ToString();          //户籍所在地
            qq.InnerText = dt2.Rows[0]["qq"].ToString();                       //QQ
            //preview.Value = dt.Rows[0]["preview"].ToString();            //个人二维码
            homepage.InnerText = dt2.Rows[0]["homepage"].ToString();          //个人主页/博客
            time.InnerText = dt2.Rows[0]["time"].ToString();          //日期
            conten.InnerText = dt2.Rows[0]["conten"].ToString();
            Src = "../images/detailnoimg.png";
            if (dt2.Rows[0]["preview"].ToString() != "") 
            {
                Src = "../" + dt2.Rows[0]["preview"].ToString();
            }

        }

    }

}