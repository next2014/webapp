using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Security.Cryptography;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class pages_qy_password : System.Web.UI.Page
{
    public static string news;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
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
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        //判断登录状态
        if (Session["userName"] != null)
        {
            //获取原密码
            string A = password.Value;
            DataTable dt = DAL.SQLHelper.GetDtBySql("select * from jz_manager where username='" + Session["userName"] + "' ");
            if (dt.Rows.Count > 0)
            {
                string B = md5(A, 32);
                if (dt.Rows[0]["password"].ToString() == B)
                {
                    string C = passwordnew.Value;
                    string D = passwordconfirm.Value;
                    if (C.Length > 7)
                    {
                        //新密码长度大于6
                        Response.Write("<script type='text/javascript'>alert('新密码长度大于6!')</script>");
                        return;
                    }
                    if (C == D)
                    {
                        string E = md5(C, 32);
                        string Date = DateTime.Now.ToString("yyyy-MM-dd");          //当前时间
                        //修改
                        DAL.SQLHelper.GetExecute("update jz_manager set password='" + E + "',time='" + Date + "' where username='" + Session["userName"] + "' ");
                        Response.Write("<script type='text/javascript'>alert('修改成功,请重新登录!');window.location='../c_login.aspx';</script>");
                        //Response.Redirect("c_login.aspx");
                    }
                    else
                    {
                        //两次输入密码不一致
                        Response.Write("<script type='text/javascript'>alert('两次输入密码不一致!')</script>");
                        return;
                    }
                }
                else
                {
                    //原密码不对
                    Response.Write("<script type='text/javascript'>alert('原密码不对!')</script>");
                    return;
                }
            }
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