using System;
using System.Collections.Generic;
using System.Data;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class c_addwcase : System.Web.UI.Page
{
    public static string news;
    public static string yunset;
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
        if (!string.IsNullOrEmpty(Request.QueryString["Id"]) && !string.IsNullOrEmpty(Request.QueryString["EId"]))
        {
            string sql = "select * from c_wcase where J_Id='" + Request.QueryString["Id"] + "' and E_Id='" + Request.QueryString["EId"] + "'";
            DataTable dt = DAL.SQLHelper.GetDtBySql(sql);
            if (dt.Rows.Count > 0)
            {
                titlea.Value = dt.Rows[0]["title"].ToString();                       //作品标题
                sort.Value = dt.Rows[0]["sort"].ToString();                         //作品排序
                previewimg.Src = dt.Rows[0]["preview"].ToString();                  //作品

            }
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        string Title = titlea.Value;
        string Sort = sort.Value;
        string Preview = "";

        if (Session["userName"] == null)
        {
            Response.Redirect("c_login.aspx");
        }

        if (!string.IsNullOrEmpty(Request.QueryString["Id"]))
        {
            HttpPostedFile file = Request.Files["pic"];
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
                Preview = "img/" + time + "/" + picName;
                file.SaveAs(failPath);
            }

            if (!string.IsNullOrEmpty(Request.QueryString["EId"]))
            {
                //修改
                string sql = "update c_wcase set Title='" + Title + "',Sort='" + Sort + "',preview='" + Preview + "'";
                sql += " where J_Id='" + Request.QueryString["Id"] + "' and E_Id='" + Request.QueryString["EId"] + "' ";
                DAL.SQLHelper.GetExecute(sql);

                Response.Redirect("c_wcase.aspx?Id=" + Request.QueryString["Id"] + "");
            }
            else
            {
                //新增
                DataTable dtA = DAL.SQLHelper.GetDtBySql("select isnull(max(E_Id)+1,0) from c_wcase where J_Id='" + Request.QueryString["Id"] + "'");
                string EID = dtA.Rows[0][0].ToString();
                string sql = "insert into c_wcase (J_Id,E_Id,title,sort,preview) values ";
                sql += " ('" + Request.QueryString["Id"] + "','" + EID + "','" + Title + "','" + Sort + "','" + Preview + "')";
                DAL.SQLHelper.GetExecute(sql);

                Response.Redirect("c_wcase.aspx?Id=" + Request.QueryString["Id"] + "");
            }

        }
        else
        {
        }
    }
    
}