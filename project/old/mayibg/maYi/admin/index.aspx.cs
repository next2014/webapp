using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin_index : System.Web.UI.Page
{
    public string joblent, jobinfo, badge, jobTips, jobinfoTips, jobpart;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            Date();
        }
    }

    private void Date()
    {
        DataTable dt = DAL.SQLHelper.GetDtBySql("select * from qy_job where audits='0' ");
        DataTable dt2 = DAL.SQLHelper.GetDtBySql("select * from qy_part where audits='0' ");
        int B = dt.Rows.Count + dt2.Rows.Count;
        if (dt.Rows.Count > 0){joblent = "<span class=\"badge badge-danger\">" + dt.Rows.Count + "</span>";}else{joblent = ""; }
        if (dt2.Rows.Count > 0){jobpart = "<span class=\"badge badge-danger\">" + dt2.Rows.Count + "</span>";}else{jobpart = "";}
        if (B > 0)
        {
            jobTips = "<li><a><div class=\"clearfix\"><span class=\"pull-left\"><i class=\"btn btn-xs no-hover btn-pink icon-comments-alt\"></i>职位待审核</span><span class=\"pull-right badge badge-info\">" + B + "</span></div></a></li>";
        }
        else 
        {
            jobTips = "";
        }

        DataTable dt1 = DAL.SQLHelper.GetDtBySql("select * from qy_info where qualifications='2' ");
        if (dt1.Rows.Count > 0)
        {
            jobinfo = "<span class=\"badge badge-danger\">" + dt1.Rows.Count + "</span>";
            jobinfoTips = "<li><a><div class=\"clearfix\"><span class=\"pull-left\"><i class=\"btn btn-xs btn-primary icon-user\"></i>企业待认证</span><span class=\"pull-right badge badge-info\">" + dt1.Rows.Count + "</span></div></a></li>";
        }
        else 
        {
            jobinfo = "";
            jobinfoTips = "";
        }

        int A=B + dt1.Rows.Count;
        if (A > 0)
        {
            badge = "<span class=\"badge badge-important\">" + A + "</span>";
        }
        else 
        {
            badge = "";
        }
    }
}