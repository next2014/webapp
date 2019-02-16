using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;

public partial class Default2 : System.Web.UI.Page
{
    public string img;
    protected void Page_Load(object sender, EventArgs e)
    {
        string A = DateTime.Now.AddDays(-3).ToString("yyyy-MM-dd");
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        //HttpPostedFile file = Request.Files["file"];
        //if (file.ContentLength > 0)
        //{
        //    if (file.ContentLength > 2097152) 
        //    {
        //        MessageBox.Show("上传图片请不要超过2M");
        //        return;
        //    }
        //    string time = DateTime.Now.ToString("yyyyMMdd");
        //    if (Directory.Exists(Server.MapPath("~/img/" + time + "")) == false)
        //    {
        //        Directory.CreateDirectory(Server.MapPath("~/img/" + time + "")); 
        //    }
        //    string savePath = Server.MapPath("~/img/" + time + "");
        //    string s = file.FileName.Substring(file.FileName.IndexOf('.'));         //截取图片后缀，例如.jpg
        //    if (s != ".jpg" && s != ".png" && s != ".JPG")
        //    {
        //        MessageBox.Show("只能上传jpg,png格式的图片");
        //        return;
        //    }
        //    string picName = Guid.NewGuid().ToString()+s;
        //    string failPath = savePath + "\\" + picName;
        //    file.SaveAs(failPath);

        //}
    }
}