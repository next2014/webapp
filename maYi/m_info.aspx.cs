using System;
using System.Collections.Generic;
using System.Data;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows.Forms;

public partial class m_info : System.Web.UI.Page
{
    public static string news;
    public string Src;
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
        DataTable dt = DAL.SQLHelper.GetDtBySql("select * from m_info where username='" + Session["userName"] + "' ");
        if (dt.Rows.Count > 0)
        {
            name.Value=dt.Rows[0]["name"].ToString();                    //姓名
            sex.Value = dt.Rows[0]["sex"].ToString();                     //性别
            Src = "images/14947989259.PNG";
            if (dt.Rows[0]["sex"].ToString() == "女") 
            {
                Src = "images/14922051316.PNG";
            }
            if (dt.Rows[0]["preview"].ToString() != "") 
            {
                Src = dt.Rows[0]["preview"].ToString();
            }
            sexPicker.InnerText = dt.Rows[0]["sex"].ToString();  
            birthday.Value = dt.Rows[0]["birthday"].ToString();           //出生年月
            birthdayUserPicker.InnerText = dt.Rows[0]["birthday"].ToString(); 
            edu.Value = dt.Rows[0]["edu"].ToString();                   //最高学历
            eduPicker.InnerText = dt.Rows[0]["edu"].ToString(); 
            exp.Value = dt.Rows[0]["exp"].ToString();                  //工作经验
            expPicker.InnerText = dt.Rows[0]["exp"].ToString();    
            living.Value = dt.Rows[0]["living"].ToString();             //现居住地
            telphone.Value = dt.Rows[0]["telphone"].ToString();         //手机
            email.Value = dt.Rows[0]["email"].ToString();                //邮箱

            address.Value = dt.Rows[0]["address"].ToString();           //详细地址
            height.Value = dt.Rows[0]["height"].ToString();              //身高
            weight.Value = dt.Rows[0]["weight"].ToString();             //体重
            nationality.Value = dt.Rows[0]["nationality"].ToString();     //民族
            marriage.Value = dt.Rows[0]["marriage"].ToString();         //婚姻
            marriagePicker.InnerText = dt.Rows[0]["marriage"].ToString(); 
            domicile.Value = dt.Rows[0]["domicile"].ToString();          //户籍所在地
            qq.Value=dt.Rows[0]["qq"].ToString();                       //QQ
            //preview.Value = dt.Rows[0]["preview"].ToString();            //个人二维码
            homepage.Value = dt.Rows[0]["homepage"].ToString();          //个人主页/博客
        }
    }

    protected void submit_Click(object sender, EventArgs e)
    {
        string Name = name.Value;                     //姓名
        string Sex = sex.Value;                     //性别
        string Birthday = birthday.Value;           //出生年月
        string Edu = edu.Value;                     //最高学历
        string Exp = exp.Value;                     //工作经验
        string Living = living.Value;               //现居住地
        string Telphone = telphone.Value;           //手机
        string Email = email.Value;                 //邮箱

        string Address = address.Value;             //详细地址
        string Height = height.Value;               //身高
        string Weight = weight.Value;               //体重
        string Nationality = nationality.Value;     //民族
        string Marriage = marriage.Value;           //婚姻
        string Domicile = domicile.Value;           //户籍所在地
        string Qq = qq.Value;                       //QQ
        //string Preview = preview.Value;             //个人二维码
        string Homepage = homepage.Value;           //个人主页/博客
        string Date = DateTime.Now.ToString("yyyy-MM-dd");          //当前时间

        DataTable dt = DAL.SQLHelper.GetDtBySql("select * from m_info where username='" + Session["userName"] + "' ");
        if (dt.Rows.Count > 0)
        {
            //修改
            string sql = "update m_info set name='" + Name + "',sex='" + Sex + "',birthday='" + Birthday + "',edu='" + Edu + "',exp='" + Exp + "',living='" + Living + "',telphone='" + Telphone + "',email='" + Email + "',address='" + Address + "',height='" + Height + "',";
            sql += "weight='" + Weight + "',nationality='" + Nationality + "',marriage='" + Marriage + "',domicile='" + Domicile + "',qq='" + Qq + "',homepage='" + Homepage + "',time='" + Date + "' where Id='" + dt.Rows[0]["Id"].ToString() + "'";
            DAL.SQLHelper.GetExecute(sql);
        }
        else 
        {
            DataTable dt2 = DAL.SQLHelper.GetDtBySql("select isnull(max(Id)+1,0) from m_info");
            string A=dt2.Rows[0][0].ToString();
            string sql = "insert into m_info (Id,username,name,sex,birthday,edu,exp,living,telphone,email,address,height,weight,nationality,marriage,domicile,qq,homepage,time) values ";
            sql += " ('" + A + "','" + Session["userName"] + "','" + Name + "','" + Sex + "','" + Birthday + "','" + Edu + "','" + Exp + "','" + Living + "','" + Telphone + "','" + Email + "','" + Address + "','" + Height + "','" + Weight + "','" + Nationality + "','" + Marriage + "','" + Domicile + "','" + Qq + "','" + Homepage + "','" + Date + "')";
            DAL.SQLHelper.GetExecute(sql);
        }

        if (!string.IsNullOrEmpty(Request.QueryString["Id"]))
        {
            Response.Redirect("resume.aspx?Id=" + Request.QueryString["Id"] + " ");
        }
        else
        {
            Response.Redirect("resume.aspx");
        }

        
    }

    //protected void Button1_Click(object sender, EventArgs e)
    //{
    //    HttpPostedFile file = Request.Files["file"];
    //    if (file.ContentLength > 0)
    //    {
    //        if (file.ContentLength > 2097152)
    //        {
    //            MessageBox.Show("上传图片请不要超过2M");
    //            return;
    //        }
    //        string time = DateTime.Now.ToString("yyyyMMdd");
    //        if (Directory.Exists(Server.MapPath("~/img/" + time + "")) == false)
    //        {
    //            Directory.CreateDirectory(Server.MapPath("~/img/" + time + ""));
    //        }
    //        string savePath = Server.MapPath("~/img/" + time + "");
    //        string s = file.FileName.Substring(file.FileName.IndexOf('.'));         //截取图片后缀，例如.jpg
    //        if (s != ".jpg" && s != ".png" && s != ".JPG")
    //        {
    //            MessageBox.Show("只能上传jpg,png格式的图片");
    //            return;
    //        }
    //        string picName = Guid.NewGuid().ToString() + s;
    //        string failPath = savePath + "\\" + picName;
    //        string Preview = "img/" + time + "/" + picName;
    //        file.SaveAs(failPath);

    //        DataTable dt = DAL.SQLHelper.GetDtBySql("select * from m_info where username='" + Session["userName"] + "' ");
    //        if (dt.Rows.Count > 0)
    //        {
    //            string sql = "update m_info set preview='" + Preview + "',time='" + time + "' where Id='" + dt.Rows[0]["Id"].ToString() + "'";
    //            DAL.SQLHelper.GetExecute(sql);
    //        }
    //    }
    //}
}