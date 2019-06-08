using System;
using System.Collections.Generic;
using System.Data;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin_picture_add : System.Web.UI.Page
{
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
            DataTable dt = DAL.SQLHelper.GetDtBySql("select * from jz_Workplace where Id=" + Request.QueryString["Id"] + "");
            name.Value=dt.Rows[0]["title"].ToString();
            author.Value = dt.Rows[0]["abstract"].ToString();
            source.Value = dt.Rows[0]["source"].ToString();
            clicks.Value = dt.Rows[0]["delivery"].ToString();
            start.Value = dt.Rows[0]["time"].ToString();
            txtEditorContents.Text = dt.Rows[0]["Contents"].ToString();
            Label1.Text = dt.Rows[0]["picture"].ToString();
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        string Name = name.Value;
        if (Name == "" || Name.Length > 35)
        {
            Response.Write("<script>alert('标题为空或太长!');</script>");
            return;
        }
        string Author = author.Value;
        if (Author == "")
        {
            Response.Write("<script>alert('作者不能为空!');</script>");
            return;
        }
        string Source = source.Value;
        if (Source == "")
        {
            Response.Write("<script>alert('来源不能为空!');</script>");
            return;
        }
        string Clicks = clicks.Value;
        string Release = start.Value;
        if (Release == "")
        {
            Release = DateTime.Now.ToString("yyyy-MM-dd");
        }
        string A = txtEditorContents.Text;

        string Preview = "";
        HttpPostedFile file = Request.Files["file"];
        if (file.ContentLength > 0)
        {
            if (file.ContentLength > 2097152)
            {
                //MessageBox.Show("上传图片请不要超过2M");
                Response.Write("<script type='text/javascript'>alert('封面图片请不要超过2M!')</script>");
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
            Preview = "img/" + time + "/" + picName;
            file.SaveAs(failPath);
        }
        else 
        {
            Preview = Label1.Text;
        }

        if (!string.IsNullOrEmpty(Request.QueryString["Id"]))
        {
            DAL.SQLHelper.GetExecute("update jz_Workplace set title='" + Name + "',abstract='" + Author + "',time='" + Release + "',delivery='" + Clicks + "',source='" + Source + "',Contents='" + A + "',picture='" + Preview + "' where Id='" + Request.QueryString["Id"] + "'");
        }
        else
        {
            DataTable dt = DAL.SQLHelper.GetDtBySql("select isnull(max(Id)+1,0) from jz_Workplace ");
            string sql = "insert into jz_Workplace (title,abstract,time,picture,Id,Cancellation,delivery,source,Contents) values ";
            sql += " ('" + Name + "','" + Author + "','" + Release + "','" + Preview + "','" + dt.Rows[0][0].ToString() + "','F','" + Clicks + "','" + Source + "','" + A + "')";
            DAL.SQLHelper.GetExecute(sql);
        }
        Response.Write("<script type='text/javascript'>alert('保存完成!')</script>");
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("picture.aspx");
    }
}