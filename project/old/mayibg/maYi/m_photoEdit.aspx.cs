using System;
using System.Collections.Generic;
using System.Data;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows.Forms;

public partial class m_photoEdit : System.Web.UI.Page
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
            Src = dt.Rows[0]["preview"].ToString();
        }
        else 
        {
            Src = "images/14947989259.PNG";
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        HttpPostedFile file = Request.Files["file"];
        if (file.ContentLength > 0)
        {
            if (file.ContentLength > 2097152)
            {
                //MessageBox.Show("上传图片请不要超过2M");
                Response.Write("<script type='text/javascript'>alert('上传图片请不要超过2M!')</script>");
                return;
            }
            string time = DateTime.Now.ToString("yyyyMMdd");
            if (Directory.Exists(Server.MapPath("~/img/" + time + "")) == false)
            {
                Directory.CreateDirectory(Server.MapPath("~/img/" + time + ""));
            }
            string savePath = Server.MapPath("~/img/" + time + "");
            string s = file.FileName.Substring(file.FileName.IndexOf('.'));         //截取图片后缀，例如.jpg
            if (s != ".jpg" && s != ".png" && s != ".JPG" && s != ".jpeg" && s != ".PNG")
            {
                //MessageBox.Show("只能上传jpg,png格式的图片");
                Response.Write("<script type='text/javascript'>alert('只能上传jpg,png,jpeg格式的图片!')</script>");
                return;
            }
            string picName = Guid.NewGuid().ToString() + s;
            string failPath = savePath + "\\" + picName;
            string Preview = "img/" + time + "/" + picName;
            file.SaveAs(failPath);

            DataTable dt = DAL.SQLHelper.GetDtBySql("select * from m_info where username='" + Session["userName"] + "' ");
            if (dt.Rows.Count > 0)
            {
                string sql = "update m_info set preview='" + Preview + "' where Id='" + dt.Rows[0]["Id"].ToString() + "'";
                DAL.SQLHelper.GetExecute(sql);
            }
            Response.Redirect("mine.aspx");
        }
    }
}