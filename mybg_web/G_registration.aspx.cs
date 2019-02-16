using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Security.Cryptography;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class G_registration : System.Web.UI.Page
{
    public static string header;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (!string.IsNullOrEmpty(Request.QueryString["bh"]))
            {
                if (Request.QueryString["bh"] == "1")
                {
                    header = "个人注册";
                }
                else
                {
                    header = "企业注册";
                }
            }
        }
    }

    protected void subreg_Click(object sender, EventArgs e)
    {
        if (!string.IsNullOrEmpty(Request.QueryString["bh"]))
        {
            string Telphone = moblie.Value;
            if (Telphone == "")
            {
                Response.Write("<script type='text/javascript'>alert('手机号码不能为空!')</script>");
                return;
            }
            else
            {
                //查询手机是否注册过
                string sql = "select * from jz_manager where username='" + Telphone + "'";
                DataTable dt = DAL.SQLHelper.GetDtBySql(sql);
                if (dt.Rows.Count > 0)
                {
                    Response.Write("<script type='text/javascript'>alert('该手机号码已经注册了!')</script>");
                    return;
                }

            }
            string Paw = password.Value;
            string Pawc = passconfirm.Value;
            if (Paw == "" || Paw != Pawc)
            {
                Response.Write("<script type='text/javascript'>alert('对不起，两次输入密码不一样!')</script>");
                return;
            }
            string A=md5(Paw, 32);

            string Date = DateTime.Now.ToString("yyyy-MM-dd");          //当前时间
            //保存
            DAL.SQLHelper.GetExecute("insert into jz_manager (username,password,number,time) values ('" + Telphone + "','" + A + "','" + Request.QueryString["bh"] + "','" + Date + "') ");

            Response.Redirect("c_login.aspx");
        }
       
    }

    /// <summary>
    /// 16位MD5加密
    /// </summary>
    /// <param name="password"></param>
    /// <returns></returns>
    public static string MD5Encrypt16(string password)
    {
        var md5 = new MD5CryptoServiceProvider();
        string t2 = BitConverter.ToString(md5.ComputeHash(Encoding.Default.GetBytes(password)), 4, 8);
        t2 = t2.Replace("-", "");
        return t2;
    }

    /// <summary>
    /// 32位MD5加密
    /// </summary>
    /// <param name="password"></param>
    /// <returns></returns>
    public static string MD5Encrypt32(string password)
    {
        string cl = password;
        string pwd = "";
        MD5 md5 = MD5.Create(); //实例化一个md5对像
        // 加密后是一个字节类型的数组，这里要注意编码UTF8/Unicode等的选择　
        byte[] s = md5.ComputeHash(Encoding.UTF8.GetBytes(cl));
        // 通过使用循环，将字节类型的数组转换为字符串，此字符串是常规字符格式化所得
        for (int i = 0; i < s.Length; i++)
        {
            // 将得到的字符串使用十六进制类型格式。格式后的字符是小写的字母，如果使用大写（X）则格式后的字符是大写字符 
            pwd = pwd + s[i].ToString("X2");
        }
        return pwd;
    }

    /// <summary>
    /// 加密用户密码
    /// </summary>
    /// <param name="password">密码</param>
    /// <param name="codeLength">加密位数</param>
    /// <returns>加密密码</returns>
    public static string md5(string password, int codeLength)
    {
        if (!string.IsNullOrEmpty(password))
        {
            // 16位MD5加密（取32位加密的9~25字符）  
            if (codeLength == 16)
            {
                return System.Web.Security.FormsAuthentication.HashPasswordForStoringInConfigFile(password, "MD5").ToLower().Substring(8, 16);
            }

            // 32位加密
            if (codeLength == 32)
            {
                return System.Web.Security.FormsAuthentication.HashPasswordForStoringInConfigFile(password, "MD5").ToLower();
            }
        }
        return string.Empty;
    }
}