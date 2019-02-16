using System;
using System.Collections.Generic;
using System.Data;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class pages_qy_comcert : System.Web.UI.Page
{
    public static string news;
    public string Src, qualifications;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            DataTable dt = DAL.SQLHelper.GetDtBySql("select * from qy_info where  username='" + Session["userName"] + "' ");
            name.Value = dt.Rows[0]["name"].ToString();


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
            else 
            {
                Response.Redirect("~/c_login.aspx");
            }

            Date();
        }
    }

    protected void Date()
    {
        DataTable dt = DAL.SQLHelper.GetDtBySql("select * from qy_info where username='" + Session["userName"] + "' ");
        if (dt.Rows.Count > 0)
        {
            if (dt.Rows[0]["qualificationssrc"].ToString() != "")
            {
                Src = dt.Rows[0]["qualificationssrc"].ToString();
            }
            else
            {
                Src = "images/14906489056.PNG";
            }
            qualifications="未认证";
            if (dt.Rows[0]["qualifications"].ToString() == "1")
            {
                qualifications = "已认证";
            }
            else if (dt.Rows[0]["qualifications"].ToString() == "2") 
            {
                qualifications = "认证中";
            }
            else if (dt.Rows[0]["qualifications"].ToString() == "0" && dt.Rows[0]["qualificationssrc"].ToString() != "")
            {
                qualifications = "认证失败,请重新认证";
            }
        }
        
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        HttpPostedFile file = Request.Files["file"];
        if (file.ContentLength > 0)
        {
            if (file.ContentLength > 5242880)
            {
                //MessageBox.Show("上传图片请不要超过2M");
                Response.Write("<script type='text/javascript'>alert('上传图片请不要超过5M!')</script>");
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

            DataTable dt = DAL.SQLHelper.GetDtBySql("select * from qy_info where username='" + Session["userName"] + "' ");
            if (dt.Rows.Count > 0)
            {
                string sql = "update qy_info set qualificationssrc='" + Preview + "',qualifications='2' where Id='" + dt.Rows[0]["Id"].ToString() + "'";
                DAL.SQLHelper.GetExecute(sql);
            }
            Response.Write("<script type='text/javascript'>alert('上传成功!');window.location='qy_mine.aspx';</script>");
        }
    }
}