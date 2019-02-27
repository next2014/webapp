using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class c_job_view : System.Web.UI.Page
{
    public static string news;
    public static string name, notice, notice2, notice3, recommend, delivery, contact, describe, Collection;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            Notice();
            Recommend();

            //判断是否登录
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

                Login();
            }
            else
            {
                contact = "<div class=\"com_post_login\"><i class=\"com_post_tel iconfont\"></i>投递简历查看联系方式</div>";
            }

        }
    }

    //职位显示
    protected void Notice()
    {
        string sql = "select * from qy_job  ";
        if (!string.IsNullOrEmpty(Request.QueryString["Id"]))
        {
            sql += " where Id=" + Request.QueryString["Id"] + "";
            DataTable dt = DAL.SQLHelper.GetDtBySql(sql);
            if (dt.Rows.Count > 0)
            {
                DataTable dtA = DAL.SQLHelper.GetDtBySql("select name from city_cache where Id='" + dt.Rows[0]["provinceid"].ToString() + "' ");
                DataTable dtB = DAL.SQLHelper.GetDtBySql("select name from city_cache where Id='" + dt.Rows[0]["cityid"].ToString() + "' ");
                string A = "<div class=\"com_show_t1_box\"><div class=\"com_show_t1\"><h2>" + dt.Rows[0]["name"].ToString() + "</h2><span class=\"job_gx_time\">" + dt.Rows[0]["time"].ToString() + "更新</span></div><div class=\"com_shw_xz\"><em class=\"com_show_xzcolor\">" + dt.Rows[0]["salary"].ToString() + "</em> 元/月</div></div>";
                A += "<div class=\"com_show_joblb\"><ul><li><i class=\"com_show_useryq_icon com_show_useryq_icon_city\"></i>" + dtA.Rows[0][0].ToString() + "-" + dtB.Rows[0][0].ToString() + "</li><li><i class=\"com_show_useryq_icon com_show_useryq_icon_jy\"></i>" + dt.Rows[0]["exp"].ToString() + "经验</li><li><i class=\"com_show_useryq_icon com_show_useryq_icon_xl\"></i>" + dt.Rows[0]["edu"].ToString() + "学历</li></ul></div>";
                notice = A;
                DataTable dt2 = DAL.SQLHelper.GetDtBySql("select * from qy_info where Id='" + dt.Rows[0]["G_Id"].ToString() + "'");
                notice2 = "<div class=\"com_new_contnet_box mt15\"><a href=\"c_company_show.aspx?Id=" + dt2.Rows[0]["Id"].ToString() + "\" class=\"com_show_firm\"><div class=\"com_show_firm_pic\"><img src=\"" + dt2.Rows[0]["preview"].ToString() + "\"></div><aside class=\"com_show_firm_name\">" + dt2.Rows[0]["name"].ToString() + "</aside><aside class=\"com_show_firm_guim\" style=\"color: #999\">" + dt2.Rows[0]["pr"].ToString() + "<span class=\"yun_jobline\">|</span>" + dt2.Rows[0]["mun"].ToString() + "<span class=\"yun_jobline\">|</span>" + dt2.Rows[0]["hy"].ToString() + "</aside><i class=\"com_show_firm_icon\"></i></a></div>";
                string D = "";
                string s = dt2.Rows[0]["welfareshow"].ToString();
                if (!string.IsNullOrEmpty(s))
                {
                    string[] sArray = s.Split(',');
                    for (int j = 0; j < sArray.Length; j++)
                    {
                        string C = "<span class=\"com_show_fl_s\">" + sArray[j] + "</span>";
                        if (j > 0)
                        {
                            D = D + C;
                        }
                        else
                        {
                            D = C;
                        }
                    }
                }
                notice2 += "<div class=\"com_map\"><span class=\"com_map_name\">地址</span>" + dt2.Rows[0]["address"].ToString() + "</div><div class=\"com_welfare\"><aside class=\"com_show_fl\">" + D + "</aside></div>";
                notice3 = "";
                if (!string.IsNullOrEmpty(dt.Rows[0]["number"].ToString()))
                {
                    notice3 += " <li><span class=\"user_contnet_info_n\">招聘：</span>" + dt.Rows[0]["number"].ToString() + "</li>";
                }
                if (!string.IsNullOrEmpty(dt.Rows[0]["report"].ToString()))
                {
                    notice3 += " <li><span class=\"user_contnet_info_n\">到岗：</span>" + dt.Rows[0]["report"].ToString() + "</li>";
                }
                if (!string.IsNullOrEmpty(dt.Rows[0]["age"].ToString()))
                {
                    notice3 += " <li><span class=\"user_contnet_info_n\">年龄：</span>" + dt.Rows[0]["age"].ToString() + "</li>";
                }
                if (!string.IsNullOrEmpty(dt.Rows[0]["sex"].ToString()))
                {
                    notice3 += " <li><span class=\"user_contnet_info_n\">性别：</span>" + dt.Rows[0]["sex"].ToString() + "</li>";
                }
                if (!string.IsNullOrEmpty(dt.Rows[0]["marriage"].ToString()))
                {
                    notice3 += " <li><span class=\"user_contnet_info_n\">婚况：</span>" + dt.Rows[0]["marriage"].ToString() + "</li>";
                }
                delivery = dt.Rows[0]["delivery"].ToString();
                describe = dt.Rows[0]["contentshow"].ToString();
                string time = DateTime.Now.ToString("yyyy-MM-dd");

                if (!string.IsNullOrEmpty(Request.QueryString["Collection"]))
                {
                    DataTable dt3 = DAL.SQLHelper.GetDtBySql("select * from jz_manager where username='" + Session["userName"] + "'");
                    if (dt3.Rows[0]["number"].ToString() != "2")
                    {
                        if (Request.QueryString["Collection"] == "0")
                        {
                            DataTable dt4 = DAL.SQLHelper.GetDtBySql("select isnull(max(Id)+1,0) from jz_Collection  ");
                            string C = dt4.Rows[0][0].ToString();
                            DAL.SQLHelper.GetExecute("insert into jz_Collection (Id,username,P_Id,Cancellation,Collection,time,zwlx) values (" + C + ",'" + Session["userName"] + "'," + Request.QueryString["Id"] + ",'F','1','" + time + "','1')");
                        }
                        else if (Request.QueryString["Collection"] == "1")
                        {
                            DAL.SQLHelper.GetExecute("update jz_Collection set Collection='1',time='" + time + "' where username='" + Session["userName"] + "' and P_Id=" + Request.QueryString["Id"] + " and zwlx='1' ");
                        }
                        else
                        {
                            DAL.SQLHelper.GetExecute("update jz_Collection set Collection='2',time='" + time + "' where username='" + Session["userName"] + "' and P_Id=" + Request.QueryString["Id"] + " and zwlx='1' ");
                        }
                    }
                    else
                    {
                        //弹框 企业无法收藏职位
                    }
                }

                if (Session["userName"] != null)
                {
                    DataTable dt5 = DAL.SQLHelper.GetDtBySql("select * from jz_Collection where P_Id=" + Request.QueryString["Id"] + " and Cancellation='F' and  username='" + Session["userName"] + "'");
                    if (dt5.Rows.Count > 0)
                    {
                        if (dt5.Rows[0]["Collection"].ToString() == "1")
                        {
                            Collection = "<a href=\"c_job_view.aspx?Id=" + dt.Rows[0]["Id"].ToString() + "&Collection=2\"><i class=\"iconfont_ysc\"></i><span class=\"yun_job_footer_s yun_job_footer_s_y\">已收藏</span></a>";
                        }
                        else
                        {
                            Collection = "<a href=\"c_job_view.aspx?Id=" + dt.Rows[0]["Id"].ToString() + "&Collection=1\"><i class=\"iconfont_sc\"></i><span class=\"yun_job_footer_s\">收藏</span></a>";
                        }
                    }
                    else
                    {
                        Collection = "<a href=\"c_job_view.aspx?Id=" + dt.Rows[0]["Id"].ToString() + "&Collection=0\"><i class=\"iconfont_sc\"></i><span class=\"yun_job_footer_s\">收藏</span></a>";
                    }
                }
                else
                {
                    Collection = "<a href=\"c_login.aspx\"  onclick=\"return confirm('登录后才可以收藏,确定登录？');\"><i class=\"iconfont_sc\"></i><span class=\"yun_job_footer_s\">收藏</span></a>";
                }

            }
        }
    }

    //推荐职位
    protected void Recommend()
    {
        string sql = "select top 3 * from qy_job where Recommend='1' and audits='1'";
        DataTable dt = DAL.SQLHelper.GetDtBySql(sql);
        if (dt.Rows.Count > 0)
        {
            string A = "";
            string D = "";
            for (int i = 0; i < dt.Rows.Count; i++)
            {
                DataTable dt2 = DAL.SQLHelper.GetDtBySql("select * from qy_info where Id='"+ dt.Rows[0]["G_Id"].ToString() +"' ");
                string s = dt2.Rows[0]["welfareshow"].ToString();
                string[] sArray = s.Split(',');
                for (int j = 0; j < sArray.Length; j++)
                {
                    string C = "<span class=\"index_wap_joblist_fl\">" + sArray[j] + "</span>";
                    if (j > 0)
                    {
                        D = D + C;
                    }
                    else
                    {
                        D = C;
                    }
                }
                DataTable dtA = DAL.SQLHelper.GetDtBySql("select name from city_cache where Id='" + dt.Rows[i]["provinceid"].ToString() + "' ");
                DataTable dtB = DAL.SQLHelper.GetDtBySql("select name from city_cache where Id='" + dt.Rows[i]["cityid"].ToString() + "' ");
                D = "<div class=\"yunwap_jobcom_info\">" + dt2.Rows[0]["pr"].ToString() + "<span class=\"yunwap_jobcom_info_line\">|</span>" + dt2.Rows[0]["mun"].ToString() + "<span class=\"yunwap_jobcom_info_line\">|</span>" + dt2.Rows[0]["hy"].ToString() + "</div>";
                string B = "<div class=\"yun_jobshow_tj\"><a href=\"c_job_view.aspx?Id=" + dt.Rows[i]["Id"].ToString() + "\"><div class=\"yun_jobshow_tjname\"><h3><font color=\"red\">" + dt.Rows[i]["name"].ToString() + "</font></h3></div><div class=\"yun_jobshow_tjinfo\">" + dtA.Rows[0][0].ToString() + "-" + dtB.Rows[0][0].ToString() + "<span class=\"yun_jobshow_tjline\">|</span>" + dt.Rows[i]["exp"].ToString() + "经验<span class=\"yun_jobshow_tjline\">|</span>" + dt.Rows[i]["edu"].ToString() + "学历</div><span class=\"yun_jobshow_tj_xz\">" + dt.Rows[i]["salary"].ToString() + "</span><div class=\"\">" + dt2.Rows[0]["name"].ToString() + " <i class=\"job_qy_rz_icon\"></i></div>" + D + "</a></div>";
                if (i > 0)
                {
                    A = A + B;
                }
                else
                {
                    A = B;
                }
            }
            recommend = A;
        }
        else 
        {
            recommend = "<div class=\"wap_member_nosearch\"><div class=\"wap_member_no_tip\"> 很抱歉,暂无推荐职位！</div></div>";
        }
    }


    protected void tdjl_Click(object sender, EventArgs e)
    {
        //判断是否登录
        if (Session["userName"] == null)
        {
            string Id = Request.QueryString["Id"];
            Response.Redirect("c_job_applyjob.aspx?Id=" + Id);
        }
        else
        {
            DataTable dt3 = DAL.SQLHelper.GetDtBySql("select * from jz_manager where username='" + Session["userName"] + "'");
            if (dt3.Rows[0]["number"].ToString() != "2")
            {
                if (tdjl.Text == "投递简历")
                {
                    if (!string.IsNullOrEmpty(Request.QueryString["Id"]))
                    {
                        DataTable dt4 = DAL.SQLHelper.GetDtBySql("select * from m_info where username='" + Session["userName"] + "'");
                        if (dt4.Rows.Count > 0)
                        {
                            //简历投递+1
                            string Id = Request.QueryString["Id"];
                            string sql = "update qy_job set delivery=delivery+1 where Id='" + Id + "'";
                            DAL.SQLHelper.GetExecute(sql);

                            string time = DateTime.Now.ToString("yyyy-MM-dd");      //当前时间
                            //申请记录
                            DataTable dt2 = DAL.SQLHelper.GetDtBySql("select isnull(max(zjg_Id)+1,0) from jz_Zjg");
                            string A = dt2.Rows[0][0].ToString();
                            string sqlb = "insert into jz_Zjg (zjg_Id,zw_Id,username,Cancellation,time,see,zwlx,accept) values (" + A + "," + Id + "," + name + ",'F','" + time + "','F','1','0')";
                            DAL.SQLHelper.GetExecute(sqlb);

                            Response.Write("<script type='text/javascript'>alert('投递成功!')</script>");
                            Response.Redirect("c_job_view.aspx?Id=" + Request.QueryString["Id"]);                                           
                        }
                        else 
                        {
                            Response.Write("<script type='text/javascript'>alert('你还没有简历投递不了!')</script>");
                        }

                       
                    }
                }
                else 
                {
                    Response.Write("<script type='text/javascript'>alert('你已投递过，不能再投了!')</script>");
                    //Response.Redirect("c_job_view.aspx?Id=" + Request.QueryString["Id"]);
                }
            }
        }
    }

    protected void Login()
    {
        //判断是否投递过
        if (!string.IsNullOrEmpty(Request.QueryString["Id"]))
        {
            string Id = Request.QueryString["Id"];
            name = Session["userName"].ToString();
            string sql = "select * from jz_Zjg where zw_Id='" + Id + "' and  username='" + name + "' and Cancellation='F' and zwlx='1' ";
            DataTable dt = DAL.SQLHelper.GetDtBySql(sql);
            if (dt.Rows.Count > 0)
            {
                tdjl.Text = "已投递简历";
                tdjl.CssClass = "yun_job_footer_fx_right_ytd_bth";

                DataTable dt2 = DAL.SQLHelper.GetDtBySql("select * from qy_info where Id=(select G_Id from qy_job where Id=" + Id + ")");
                contact = " <ul class=\"com_post_msg com_post_msg_touch\"><li><i class=\"com_post_msg_touch_icon iconfont_jobshow_teluser\"></i>联&nbsp;系 &nbsp;人：" + dt2.Rows[0]["linkman"].ToString() + "</li><li class=\"com_post_msg_tel\"><i class=\"com_post_msg_touch_icon iconfont_jobshow_telip\"></i>联系电话：<a href=\"tel:" + dt2.Rows[0]["linktel"].ToString() + "\" style=\"color:red;\">" + dt2.Rows[0]["linktel"].ToString() + "</a></li></ul>";
            }
            else
            {
                contact = "<div class=\"com_post_login\"><i class=\"com_post_tel iconfont\"></i>投递简历查看联系方式</div>";
            }
        }

    }
    
}