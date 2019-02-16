using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin_qy_part : System.Web.UI.Page
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
        string A = "";
        if (!string.IsNullOrEmpty(Request.QueryString["Rec"]))
        {
            if (Request.QueryString["Recommend"] == "1")
            {
                A = "0";
            }
            else
            {
                A = "1";
            }
            DAL.SQLHelper.GetExecute("update qy_part set recommend='" + A + "' where Id='" + Request.QueryString["Rec"] + "'");
        }
        if (!string.IsNullOrEmpty(Request.QueryString["del"]))
        {
            DAL.SQLHelper.GetExecute("delete from qy_part where Id='" + Request.QueryString["del"] + "'");
        }

        string TxtKeywords = txtKeywords.Value;
        string Start = start.Value;

        string sql = "select * from qy_part where name like '%" + TxtKeywords + "%' order by audits,time";
        if (drop1.Text != "")
        {
            string Audits = "1";
            if (drop1.Text == "待审核")
            {
                Audits = "0";
            }
            sql += " and  audits='" + Audits + "' ";
        }
        if (start.Value.Trim() != "")
        {
            sql += " and time like '" + start.Value + "%'";
        }
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

    protected void Button2_Click(object sender, EventArgs e)
    {
        CheckBox checkbox = new CheckBox();                 //创建对象
        HiddenField id;
        for (int i = 0; i < rptList.Items.Count; i++)
        {
            checkbox = (CheckBox)rptList.Items[i].FindControl("CheckBox1");//取对象
            id = (HiddenField)rptList.Items[i].FindControl("hidId");//取对象
            if (checkbox.Checked == true)                   //是否被选中
            {
                DAL.SQLHelper.GetExecute("delete from qy_job where Id='" + id.Value.ToString() + "'");
            }
        }
        Response.Write("<script>alert('删除完成!');location.href='qy_job.aspx';</script>");
    }

}