using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class wap_index : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
		rpt_news1.DataSource = DAL.DBHelper.GetDtBySql("select top 5 * from cms_news where isshow=1 and classid=208 order by id desc");
        rpt_news1.DataBind();
        //rpt_news2.DataSource = DAL.DBHelper.GetDtBySql("select top 5 * from cms_news where isshow=1 and classid=198 order by id desc");
        //rpt_news2.DataBind();		
    }
}