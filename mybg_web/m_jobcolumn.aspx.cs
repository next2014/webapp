using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class m_jobcolumn : System.Web.UI.Page
{
    public static string news;
    public int Record, CRecord, CRecord2, CRecord3;
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
            Date();
        }
    }
    protected void Date()
    {
        DataTable dt = DAL.SQLHelper.GetDtBySql("select * from jz_Zjg where  username='" + Session["userName"] + "' and Cancellation='F' ");
        Record = dt.Rows.Count;

        DataTable dt1 = DAL.SQLHelper.GetDtBySql("select * from jz_Collection where  username='" + Session["userName"] + "' and Cancellation='F' and Collection='1' ");
        CRecord = dt1.Rows.Count;

        DataTable dt2 = DAL.SQLHelper.GetDtBySql("select * from jz_follow where  username='" + Session["userName"] + "' and Cancellation='F' and follow='1' ");
        CRecord2 = dt2.Rows.Count;

        DataTable dt3 = DAL.SQLHelper.GetDtBySql("select * from jz_Zjg where  username='" + Session["userName"] + "' and Cancellation='F' and accept='1' ");
        CRecord3 = dt3.Rows.Count;
    }
}