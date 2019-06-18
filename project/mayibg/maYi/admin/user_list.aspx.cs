using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Security.Cryptography;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin_user_list : System.Web.UI.Page
{
    public static int count;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            Date();
        }

    }
    private void Date()
    {
        if (!string.IsNullOrEmpty(Request.QueryString["del"]))
        {
            DAL.SQLHelper.GetExecute("delete from jz_manager where username='" + Request.QueryString["del"] + "'");
        }

        string TxtKeywords = txtKeywords.Value;
        string Start = start.Value;

        string sql = "select * from jz_manager where username like '%" + TxtKeywords + "%' ";

        if (start.Value.Trim() != "")
        {
            sql += " and time like '" + start.Value + "%'";
        }
        sql += "  order by time desc";
        DataTable dt = DAL.SQLHelper.GetDtBySql(sql);
        count = dt.Rows.Count;
        this.rptList.DataSource = dt;
        this.rptList.DataBind();

        //Repeater分页控制显示方法
        PagedDataSource pds = new PagedDataSource();
        pds.DataSource = dt.DefaultView;
        pds.AllowPaging = true;
        pds.PageSize = 10;
        pds.CurrentPageIndex = Convert.ToInt32(this.labPage.Text) - 1;
        rptList.DataSource = pds;
        LabCountPage.Text = pds.PageCount.ToString();
        labPage.Text = (pds.CurrentPageIndex + 1).ToString();
        this.lbtnpritPage.Enabled = true;
        this.lbtnFirstPage.Enabled = true;
        this.lbtnNextPage.Enabled = true;
        this.lbtnDownPage.Enabled = true;

        if (pds.CurrentPageIndex < 1)
        {

            this.lbtnpritPage.Enabled = false;

            this.lbtnFirstPage.Enabled = false;

        }

        if (pds.CurrentPageIndex == pds.PageCount - 1)
        {

            this.lbtnNextPage.Enabled = false;

            this.lbtnDownPage.Enabled = false;

        }

        rptList.DataBind();
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Date();
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        string User = user.Value;
        if (User == "") 
        {
            Response.Write("<script>alert('用户名不能为空!');</script>");
            return; 
        }
        string Pass = pass.Value;
        if (Pass == "")
        {
            Response.Write("<script>alert('密码不能为空!');</script>");
            return;
        }
        string A = md5(Pass, 32);
        string Number = "1";
        if (drop1.Text == "企业用户")
        {
            Number = "2";
        }
        string time = DateTime.Now.ToString("yyyy-MM-dd");          //当前时间
        DAL.SQLHelper.GetExecute("insert into jz_manager (username,password,number,time) values ('" + User + "','" + A + "','" + Number + "','" + time + "')");
        Response.Write("<script>alert('添加完成!');location.href='user_list.aspx';</script>");
    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        string User = yhm.Value;
        if (User == "")
        {
            Response.Write("<script>alert('用户名不能为空!');</script>");
            return;
        }
        string Pass = Password1.Value;
        if (Pass == "")
        {
            Response.Write("<script>alert('密码不能为空!');</script>");
            return;
        }
        string A = md5(Pass, 32);
        string time = DateTime.Now.ToString("yyyy-MM-dd");          //当前时间
        DAL.SQLHelper.GetExecute("update jz_manager set password='"+A+"',time='"+time+"' where username='"+User+"' ");
        Response.Write("<script>alert('修改完成!');location.href='user_list.aspx';</script>");
    }

    protected void lbtnpritPage_Click(object sender, EventArgs e)
    {
        this.labPage.Text = Convert.ToString(Convert.ToInt32(labPage.Text) - 1);
        this.Date();
    }

    protected void lbtnFirstPage_Click(object sender, EventArgs e)
    {
        this.labPage.Text = "1";
        this.Date();
    }

    protected void lbtnDownPage_Click(object sender, EventArgs e)
    {
        this.labPage.Text = this.LabCountPage.Text;
        this.Date();
    }

    protected void lbtnNextPage_Click(object sender, EventArgs e)
    {
        this.labPage.Text = Convert.ToString(Convert.ToInt32(labPage.Text) + 1);
        this.Date();
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


    protected void Button4_Click(object sender, EventArgs e)
    {
        CheckBox checkbox = new CheckBox();                 //创建对象
        HiddenField id;
        for (int i = 0; i < rptList.Items.Count; i++)
        {
            checkbox = (CheckBox)rptList.Items[i].FindControl("CheckBox1");//取对象
            id = (HiddenField)rptList.Items[i].FindControl("hidId");//取对象
            if (checkbox.Checked == true)                   //是否被选中
            {
                //注销
                DAL.SQLHelper.GetExecute("delete from jz_manager  where username='" + id.Value.ToString() + "'");
            }
        }
        Response.Write("<script>alert('删除完成!');location.href='user_list.aspx';</script>");
    }
}