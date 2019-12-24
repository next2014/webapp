using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.IO;
using System.Globalization;

public partial class admin_sys_upload : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        PageBind();
        //if (string.IsNullOrEmpty(Request.QueryString["i"]))
        //{
        //    //GridView1.Columns[1].Visible = false;
        //    //upfile.Visible = false;
        //}
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string savePath = ConfigurationManager.AppSettings["UpFilePath"];
        String dirPath = System.Web.HttpContext.Current.Server.MapPath(savePath);
        String fileAllName = imgFile.FileName;
        String fileName = Path.GetFileNameWithoutExtension(fileAllName).ToLower();
        String fileExt = Path.GetExtension(fileAllName).ToLower();
        bool AlowsFile = false;
        string ImgType = ConfigurationManager.AppSettings["ImgType"];
        string[] Array = ImgType.Split('|');
        foreach (string str in Array)
        {
            if (str.Trim() == fileExt)
            {
                AlowsFile = true;
            }
        }
        if (AlowsFile == true)
        {
            try
            {
                if (!Directory.Exists(dirPath))
                {
                    Directory.CreateDirectory(dirPath);
                }
                String newFileAllName = fileName + "_" + DateTime.Now.ToString("yyyyMMddHHmmssffff", DateTimeFormatInfo.InvariantInfo) + fileExt;
                //String newFileAllName = DateTime.Now.ToString("yyyyMMddHHmmssffff", DateTimeFormatInfo.InvariantInfo) + fileExt;
                String filePath = dirPath + newFileAllName;
                //Response.Write(filePath);
                DAL.SQLHelper.GetExecute("insert into c_upfile (c_id,c_title,c_username,c_time) values ('" + Request.QueryString["cid"] + "','" + newFileAllName + "','" + User.Identity.Name + "','" + DateTime.Now + "')");
                imgFile.SaveAs(filePath);
                Response.Redirect(Request.Url.ToString());

                //DAL.SQLHelper.ResponseScript(this.Page, "parent.document.getElementById(\"" + Request["Input"] + "\").value=\"" + newFileName + "\";parent.document.getElementById(\"" + Request["img"] + "\").src=\"/upload/" + newFileName + "\";");
            }
            catch
            {
                Response.Write("<script>alert('上传出错，请确认服务器有写入权限。');</script>");
            }
        }
        else
        {
            Response.Write("<script>alert('不允许上传此格式文件。');</script>");
        }
    }
    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "gv_del")//判断索引和CommandName
        {
            string id = e.CommandArgument.ToString();//获取激发事件时的行的主键ID
            DAL.SQLHelper.GetExecute("delete from c_upfile where id=" + id + "");
            PageBind();
        }
        if (e.CommandName == "gv_down")
        {
            get_FileDownload(e.CommandArgument.ToString());
        }
    }
    protected void PageBind()
    {
        GridView1.DataSource = DAL.SQLHelper.GetDtBySql("select * from c_upfile where c_id=" + Request.QueryString["cid"] + "");
        GridView1.DataBind();
    }
    protected void get_FileDownload(string filename)
    {
        //string saveFileName = filename;
        //int intStart = filename.LastIndexOf("//") + 1;
        //saveFileName = filename.Substring(intStart, filename.Length - intStart);

        //Response.Clear();
        //Response.Charset = "utf-8";
        //Response.Buffer = true;
        //this.EnableViewState = false;
        //Response.ContentEncoding = System.Text.Encoding.UTF8;
        //Response.AddHeader("Content-Disposition", "attachment; filename=" + HttpUtility.UrlEncode(Server.MapPath(filename), System.Text.Encoding.UTF8));
        //Response.WriteFile(filename);
        //Response.Flush();
        //Response.Close();
        //Response.End();

        FileStream fs = new FileStream(Server.MapPath(filename), FileMode.Open);
        byte[] bytes = new byte[(int)fs.Length];
        fs.Read(bytes, 0, bytes.Length);
        fs.Close();
        Response.ContentType = "application/octet-stream";
        Response.AddHeader("Content-Disposition", "attachment; filename=" + HttpUtility.UrlEncode(filename, System.Text.Encoding.UTF8));
        Response.BinaryWrite(bytes);
        Response.Flush();
        Response.End();
    }
}