using System;
using System.Collections.Generic;
using System.Data;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class yz_idcard : System.Web.UI.Page
{
    public string Src, yzidcard;
    public static string news;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Session["userName"] != null)
            {
                DataTable dtz = DAL.SQLHelper.GetDtBySql("select * from jz_Zjg where username='" + Session["userName"] + "' and Cancellation='F' and accept='1' and Reply='未回复' order by zjg_Id desc");
                if (dtz.Rows.Count > 0)
                {
                    news = "<a style=\"padding-top:40px;\"><i class=\"yun_footer_msg_n\"><span id=\"tzmsgNum\">" + dtz.Rows.Count + "</span></i></a>";
                }
                else
                {
                    news = "";
                }
            }
            else 
            {
                Response.Redirect("c_login.aspx");
            }
            DataTable dt = DAL.SQLHelper.GetDtBySql("select * from m_info where  username='" + Session["userName"] + "' ");
            name.Value = dt.Rows[0]["name"].ToString();
            idcard.Value = dt.Rows[0]["idcard"].ToString();
            yzidcard = "未实名";
            if (dt.Rows[0]["yz_idcard"].ToString() == "1")
            {
                yzidcard = "已实名";
            }
            else if (dt.Rows[0]["yz_idcard"].ToString() == "2")
            {
                yzidcard = "实名认证中";
            }
            else if (dt.Rows[0]["yz_idcard"].ToString() == "0" && dt.Rows[0]["yz_idcardsrc"].ToString() != "")
            {
                yzidcard = "实名认证失败,请重新认证";
            }
            Date();
        }
    }

    protected void Date()
    {
        DataTable dt = DAL.SQLHelper.GetDtBySql("select * from m_info where username='" + Session["userName"] + "' ");
        if (dt.Rows.Count > 0)
        {
            Src = dt.Rows[0]["yz_idcardsrc"].ToString();
        }
        else
        {
            Src = "";
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        if (idcard.Value == ""||idcard.Value.Length != 18) 
        {
            Response.Write("<script type='text/javascript'>alert('身份证为空或位数不对!')</script>");
            return;
        }

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
                string sql = "update m_info set idcard='" + idcard.Value + "',yz_idcard='2',yz_idcardsrc='" + Preview + "' where Id='" + dt.Rows[0]["Id"].ToString() + "'";
                DAL.SQLHelper.GetExecute(sql);
            }
            Response.Write("<script type='text/javascript'>alert('已提交申请!');window.location='mine.aspx';</script>");
        }
    }
}