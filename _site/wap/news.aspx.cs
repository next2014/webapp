using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class wap_news : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        rpt_news1.DataSource = DAL.DBHelper.GetDtBySql("select top 20 * from cms_news where isshow=1 and classid=208 order by id desc");
        rpt_news1.DataBind();
        rpt_news2.DataSource = DAL.DBHelper.GetDtBySql("select top 20 * from cms_news where isshow=1 and classid=198 order by id desc");
        rpt_news2.DataBind();
        rpt_news3.DataSource = DAL.DBHelper.GetDtBySql("select top 20 * from cms_news where isshow=1 and classid=206 order by id desc");
        rpt_news3.DataBind();
        rpt_news4.DataSource = DAL.DBHelper.GetDtBySql("select top 20 * from cms_news where isshow=1 and classid=199 order by id desc");
        rpt_news4.DataBind();
        rpt_news5.DataSource = DAL.DBHelper.GetDtBySql("select top 20 * from cms_news where isshow=1 and classid=207 order by id desc");
        rpt_news5.DataBind();
    }
}