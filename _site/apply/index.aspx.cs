using System;
using System.Collections.Generic;
using System.Data.OleDb;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class index : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        //Response.Write("000000");
        string sql = "insert into cms_baoming(u_mobile,u_username1,u_username2,u_settime,u_price,u_time) values (@u_mobile,@u_username1,@u_username2,@u_settime,@u_price,@u_time)";

        OleDbParameter[] parameters ={
                                      new OleDbParameter("@u_mobile",OleDbType.VarChar,255),
                                      new OleDbParameter("@u_username1",OleDbType.VarChar,255),
                                      new OleDbParameter("@u_username2",OleDbType.VarChar,255),
                                      new OleDbParameter("@u_settime",OleDbType.Date),
                                      new OleDbParameter("@u_price",OleDbType.VarChar,255),
                                      new OleDbParameter("@u_time",OleDbType.Date),
                                     };
        parameters[0].Value = u_mobile.Value;
        parameters[1].Value = u_username1.Value;
        parameters[2].Value = u_username2.Value;
        parameters[3].Value = u_settime.Value;
        parameters[4].Value = u_price.Value;
        parameters[5].Value = DateTime.Now;

        DAL.DBHelper.GetSqlExecute(sql, parameters);
        Response.Redirect("success.html");
    }
}