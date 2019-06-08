using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;
using System.Data;
using System.Data.SqlClient;

public partial class index : System.Web.UI.Page
{
    public static string notice, hotPosition, newest, recommend, nameEnterpriseRecruit, resume, workplace, category, login, news,part;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            //Notice();
            //HotPosition();
            Part();
            Newest();
            Recommend();
            NameEnterpriseRecruit();
            Resume();
            Workplace();
            //Category();
            if (Session["userName"] == null)
            {
                Login();
            }
            else
            {
                login = "";
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

            //DAL.SQLHelper.GetExecute("delete from jz_Collection where username='13498765432'");
            //DAL.SQLHelper.GetExecute("update jz_R_Collection set zwlx='2' where username='13498765432'");
            //DAL.SQLHelper.GetExecute("alter table jz_Workplace add Contents text ");
            //DAL.SQLHelper.GetExecute("alter table m_info add yz_idcardsrc text ");
            //DAL.SQLHelper.GetExecute("update m_info set yz_idcard='0'  ");
        }
    }

    //选择企业类型
    //protected void Notice()
    //{
        
    //    string sql = "select * from jz_Notice where display='1'";
    //    DataTable dt = DAL.SQLHelper.GetDtBySql(sql);
    //    if (dt.Rows.Count > 0)
    //    {
    //        string A = "";
    //        for (int i = 0; i < dt.Rows.Count; i++)
    //        {
    //            string B = "<li style=\"width: 100%; height: 30px; line-height: 30px;\"><a href=\"#\">" + dt.Rows[i]["content"].ToString() + "</a></li>";
    //            if (i > 0)
    //            {
    //                A = A + B;
    //            }
    //            else
    //            {
    //                A = B;
    //            }
    //        }
    //        notice = A;
    //    }
    //}

    //热门职业  
    //protected void HotPosition()
    //{
    //    string sql = "select * from jz_HotPosition where display='1'";
    //    DataTable dt = DAL.SQLHelper.GetDtBySql(sql);
    //    if (dt.Rows.Count > 0)
    //    {
    //        string A = "";
    //        for (int i = 0; i < dt.Rows.Count; i++)
    //        {
    //            string B = "<li><a href=\"position.aspx?keyword=" + dt.Rows[i]["position"].ToString() + "\"><span><font color=\"#000000\">" + dt.Rows[i]["position"].ToString() + "</font></span></a></li>";
    //            if (i > 0)
    //            {
    //                A = A + B;
    //            }
    //            else
    //            {
    //                A = B;
    //            }
    //        }
    //        hotPosition = A;
    //    }
    //}

    //最新职位

    protected void Part()
    {
        string sql = "select top 5 * from qy_part where audits='1' order by Id desc ";
        DataTable dt = DAL.SQLHelper.GetDtBySql(sql);
        if (dt.Rows.Count > 0)
        {
            string A = "";
            string D = "";
            for (int i = 0; i < dt.Rows.Count; i++)
            {
                DataTable dt2 = DAL.SQLHelper.GetDtBySql("select * from qy_info where Id='" + dt.Rows[i]["G_Id"].ToString() + "'");
                //string s = dt2.Rows[0]["welfareshow"].ToString();
                //if (s == "")
                //{
                //    D = "";
                //}
                //else
                //{
                //    string[] sArray = s.Split(',');
                //    for (int j = 0; j < sArray.Length; j++)
                //    {
                //        string C = "<span class=\"index_wap_joblist_fl\">" + sArray[j] + "</span>";
                //        if (j > 0)
                //        {
                //            D = D + C;
                //        }
                //        else
                //        {
                //            D = C;
                //        }
                //    }
                //}
                DataTable dta = DAL.SQLHelper.GetDtBySql("select name from city_cache where Id='" + dt.Rows[i]["provinceid"].ToString() + "'");
                DataTable dtb = DAL.SQLHelper.GetDtBySql("select name from city_cache where Id='" + dt.Rows[i]["cityid"].ToString() + "'");
                string Z = dta.Rows[0][0].ToString() + "-" + dtb.Rows[0][0].ToString();
                string B = "<div class=\"newjob_list\"><a href=\"c_part_show.aspx?Id=" + dt.Rows[i]["Id"].ToString() + "\"><h3>" + dt.Rows[i]["name"].ToString() + "</h3><div class=\"newjob_list_com\"><span class=\"newjob_list_com_p\">" + Z + "<i class=\"newjob_list_com_line\">|</i>" + dt2.Rows[0]["name"].ToString() + "</span></div><div class=\"newjob_list_com_xz\">" + dt.Rows[i]["salary_typetext"].ToString() + "</div><div class=\"index_wap_joblist_comcity\">" + D + "</div><div class=\"newjob_list_com_time\">" + dt.Rows[i]["time"].ToString() + "</div></a></div>";
                if (i > 0)
                {
                    A = A + B;
                }
                else
                {
                    A = B;
                }
            }
            part = A;
        }
        else
        {
            part = "";
        }
    }

    protected void Newest()
    {
        string sql = "select top 5 * from qy_job where audits='1' order by Id desc ";
        DataTable dt = DAL.SQLHelper.GetDtBySql(sql);
        if (dt.Rows.Count > 0)
        {
            string A = "";
            string D = "";
            for (int i = 0; i < dt.Rows.Count; i++)
            {
                DataTable dt2 = DAL.SQLHelper.GetDtBySql("select * from qy_info where Id='"+dt.Rows[i]["G_Id"].ToString()+"'");
                string s = dt2.Rows[0]["welfareshow"].ToString();
                if (s == "")
                {
                    D = "";
                }
                else
                {
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
                }
                DataTable dta = DAL.SQLHelper.GetDtBySql("select name from city_cache where Id='" + dt.Rows[i]["provinceid"].ToString() + "'");
                DataTable dtb = DAL.SQLHelper.GetDtBySql("select name from city_cache where Id='" + dt.Rows[i]["cityid"].ToString() + "'");
                string Z = dta.Rows[0][0].ToString() + "-" + dtb.Rows[0][0].ToString();
                string B = "<div class=\"newjob_list\"><a href=\"c_job_view.aspx?Id=" + dt.Rows[i]["Id"].ToString() + "\"><h3>" + dt.Rows[i]["name"].ToString() + "</h3><div class=\"newjob_list_com\"><span class=\"newjob_list_com_p\">" + Z + "<i class=\"newjob_list_com_line\">|</i>" + dt2.Rows[0]["name"].ToString() + "</span></div><div class=\"newjob_list_com_xz\">" + dt.Rows[i]["salary"].ToString() + "</div><div class=\"index_wap_joblist_comcity\">" + D + "</div><div class=\"newjob_list_com_time\">" + dt.Rows[i]["time"].ToString() + "</div></a></div>";
                if (i > 0)
                {
                    A = A + B;
                }
                else
                {
                    A = B;
                }
            }
            newest = A;
        }
        else 
        {
            newest = "";
        }
    }

    //protected void Part()
    //{
    //    string sql = "select top 5 * from qy_part where audits='1' order by Id desc ";
    //    DataTable dt = DAL.SQLHelper.GetDtBySql(sql);
    //    if (dt.Rows.Count > 0)
    //    {
    //        string A = "";
    //        for (int i = 0; i < dt.Rows.Count; i++)
    //        {
    //            DataTable dt2 = DAL.SQLHelper.GetDtBySql("select * from qy_info where Id='" + dt.Rows[i]["Id"].ToString() + "'");
    //            DataTable dta = DAL.SQLHelper.GetDtBySql("select name from city_cache where Id='" + dt.Rows[i]["provinceid"].ToString() + "'");
    //            DataTable dtb = DAL.SQLHelper.GetDtBySql("select name from city_cache where Id='" + dt.Rows[i]["cityid"].ToString() + "'");
    //            string Z = dta.Rows[0][0].ToString() + "-" + dtb.Rows[0][0].ToString();
    //            string B = "<div class=\"newjob_list\"><a href=\"c_part.aspx?Id=" + dt.Rows[i]["Id"].ToString() + "\"><h3>" + dt.Rows[i]["name"].ToString() + "</h3><div class=\"newjob_list_com\"><span class=\"newjob_list_com_p\">" + Z + "<i class=\"newjob_list_com_line\">|</i>" + dt2.Rows[0]["name"].ToString() + "</span></div><div class=\"newjob_list_com_xz\">" + dt.Rows[i]["salary"].ToString() + "</div><div class=\"newjob_list_com_time\">" + dt.Rows[i]["time"].ToString() + "</div></a></div>";
    //            if (i > 0)
    //            {
    //                A = A + B;
    //            }
    //            else
    //            {
    //                A = B;
    //            }
    //        }
    //        part = A;
    //    }
    //    else
    //    {
    //        part = "";
    //    }
    //}

    //推荐职位
    protected void Recommend()
    {
        string sql = "select top 5  * from qy_job where recommend='1' and audits='1' order by Id desc ";
        DataTable dt = DAL.SQLHelper.GetDtBySql(sql);
        if (dt.Rows.Count > 0)
        {
            string A = "";
            string D = "";
            for (int i = 0; i < dt.Rows.Count; i++)
            {
                DataTable dt2 = DAL.SQLHelper.GetDtBySql("select * from qy_info where Id='" + dt.Rows[i]["G_Id"].ToString() + "'");
                string s = dt2.Rows[0]["welfareshow"].ToString();
                if (s == "")
                {
                    D = "";
                }
                else
                {
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
                }
                DataTable dta = DAL.SQLHelper.GetDtBySql("select name from city_cache where Id='" + dt.Rows[i]["provinceid"].ToString() + "'");
                DataTable dtb = DAL.SQLHelper.GetDtBySql("select name from city_cache where Id='" + dt.Rows[i]["cityid"].ToString() + "'");
                string Z = dta.Rows[0][0].ToString() + "-" + dtb.Rows[0][0].ToString();
                string B = "<div class=\"index_wap_joblist\"><a href=\"c_job_view.aspx?Id=" + dt.Rows[i]["Id"].ToString() + "\"><h3>" + dt.Rows[i]["name"].ToString() + "</h3><div class=\"index_wap_joblist_comname\"><span class=\"index_wap_joblist_comname_p\">" + Z + " " + dt2.Rows[0]["name"].ToString() + "</span></div><div class=\"index_wap_joblist_comcity\">" + D + "</div><div class=\"index_wap_joblist_xz\">￥" + dt.Rows[i]["salary"].ToString() + "</div><div class=\"index_wap_joblist_time\">" + dt.Rows[i]["time"].ToString() + "</div></a></div>";
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
            recommend = "";
        }
    }

    //推荐企业
    protected void NameEnterpriseRecruit()
    {
        string sql = "select top 5 * from qy_info where recommend='1' and qualifications='1' order by Id desc ";
        DataTable dt = DAL.SQLHelper.GetDtBySql(sql);
        if (dt.Rows.Count > 0)
        {
            string A = "";
            for (int i = 0; i < dt.Rows.Count; i++)
            {
                DataTable dta = DAL.SQLHelper.GetDtBySql("select name from city_cache where Id='" + dt.Rows[i]["provinceid"].ToString() + "'");
                DataTable dtb = DAL.SQLHelper.GetDtBySql("select name from city_cache where Id='" + dt.Rows[i]["cityid"].ToString() + "'");
                string Z = dta.Rows[0][0].ToString() + "-" + dtb.Rows[0][0].ToString();
                string B = "<div class=\"indexcom_list_box\"><a href=\"c_company_show.aspx?Id=" + dt.Rows[i]["Id"].ToString() + "\" class=\"\"><div class=\"indexcom_list_t_box\"><div class=\"indexcom_list_logo_box\"><img src=\"" + dt.Rows[i]["preview"].ToString() + "\" width=\"45\" height=\"45\"></div><div class=\"indexcom_list_box_c\"><h3>" + dt.Rows[i]["name"].ToString() + " </h3></div><div class=\"indexcom_list_box_js\"><span class=\"indexcom_list_box_js_s indexcom_list_box_js_s_hy\"><i class=\"indexcom_list_box_js_icon indexcom_list_box_js_icon_hy\"></i>" + dt.Rows[i]["hy"].ToString() + "</span><span class=\"indexcom_list_box_js_s\"><i class=\"indexcom_list_box_js_icon indexcom_list_box_js_icon_map\"></i>" + Z + "</span></div></div></a></div>";
                if (i > 0)
                {
                    A = A + B;
                }
                else
                {
                    A = B;
                }
            }
            nameEnterpriseRecruit = A;
        }
        else 
        {
            nameEnterpriseRecruit = "";
        }
    }

    //最新简历
    protected void Resume()
    {
        string sql = "select top 5  * from m_resume  order by Id desc";
        DataTable dt = DAL.SQLHelper.GetDtBySql(sql);
        if (dt.Rows.Count > 0)
        {
            string A = "";
            for (int i = 0; i < dt.Rows.Count; i++)
            {
                DataTable dt2 = DAL.SQLHelper.GetDtBySql("select * from m_info where Id='" + dt.Rows[i]["J_Id"].ToString() + "'");
                string Name = dt2.Rows[0]["name"].ToString();
                if (dt2.Rows[0]["sex"].ToString() == "男")
                {
                    Name = Name[0] + "先生";
                }
                else
                {
                    Name = Name[0] + "女士";
                }

                DataTable dtA = DAL.SQLHelper.GetDtBySql("select name from city_cache where Id='" + dt.Rows[i]["city_classid"].ToString() + "' ");
                string Z=dtA.Rows[0][0].ToString();
                string B = "<div class=\"indexcom_list_box\"><a href=\"c_resume_show.aspx?Id=" + dt.Rows[i]["Id"].ToString() + "\" class=\"\"><div class=\"indexcom_list_t_box\"><div class=\"indexcom_list_box_c\"><h3>" + Name + "</h3></div><div class=\"indexcom_list_box_js\"><span class=\"indexcom_list_box_js_s indexcom_list_box_js_s_hy\" style=\"margin-left: 1px; padding-left: 10px;\">经验：" + dt2.Rows[0]["exp"].ToString() + "</span><span class=\"indexcom_list_box_js_s\" style=\"margin-left: 1px;\"><i class=\"indexcom_list_box_js_icon indexcom_list_box_js_icon_map\"></i>" + Z + "</span><span class=\"indexcom_list_box_js_s\" style=\"margin-left: 1px; padding-left: 10px;\">学历： " + dt2.Rows[0]["edu"].ToString() + "</span></div><div class=\"indexcom_list_box_js\" style=\"padding: 1px 0px 11px 0;\"><em><span class=\"indexcom_list_box_js_s indexcom_list_box_js_s_hy\" style=\"margin-left: 1px; padding-left: 10px; display: inline-block; color: #666;\">意向职位：</span><span style=\"font-weight: bold; color: #C30;\">" + dt.Rows[i]["name"].ToString() + "</span></em></div></div></a></div>";
                if (i > 0)
                {
                    A = A + B;
                }
                else
                {
                    A = B;
                }
            }
            resume = A;
        }
        else 
        {
            resume = "";
        }
    }

    //资讯列表
    protected void Workplace()
    {
        string sql = "select top 5  * from jz_Workplace where Cancellation='F' order by time desc";
        DataTable dt = DAL.SQLHelper.GetDtBySql(sql);
        if (dt.Rows.Count > 0)
        {
            string A = "";
            for (int i = 0; i < dt.Rows.Count; i++)
            {
                string B = "<div class=\"news_in_list_box\"><a href=\"admin/c_article_show.aspx?Id="+ dt.Rows[i]["Id"].ToString()+"\"><div class=\"news_in_list_box_left\"><h2>" + dt.Rows[i]["title"].ToString() + "</h2><div class=\"news_in_list_w65\"><div class=\"news_in_list_p\"></div><div class=\"news_in_list_date\"><span class=\"news_in_eye_n\"><i class=\"news_in_eye\"></i>" + dt.Rows[i]["delivery"].ToString() + "</span><span class=\"news_in_eye_n\"><i class=\"news_in_date\">  </i>" + dt.Rows[i]["time"].ToString() + "</span></div></div><div class=\"news_in_cont_img\"><img src=\"" + dt.Rows[i]["picture"].ToString() + "\" onerror=\"showImgDelay(this,'',2);\" width=\"120\" height=\"80\"></div></div></a></div>";
                if (i > 0)
                {
                    A = A + B;
                }
                else
                {
                    A = B;
                }
            }
            workplace = A;
        }
        else 
        {
            workplace = "";
        }
    }

    //职位类别
    //protected void Category()
    //{
    //    string sql = "select * from jz_Category where display='1' order by  convert(int,number) ";
    //    DataTable dt = DAL.SQLHelper.GetDtBySql(sql);
    //    if (dt.Rows.Count > 0)
    //    {
    //        string A = "";
    //        string D = "";
    //        for (int i = 0; i < dt.Rows.Count; i++)
    //        {
    //            string sqla = "select * from jz_Category_f where z_number='" + dt.Rows[i]["number"].ToString() + "' and display='1'";
    //            DataTable dta = DAL.SQLHelper.GetDtBySql(sqla);
    //            for (int j = 0; j < dta.Rows.Count; j++)
    //            {
    //                string C = "<a href=\"#\"><span class=\"wap_category_a\">" + dta.Rows[j]["Title"].ToString() + "</span></a>";
    //                if (j > 0)
    //                {
    //                    D = D + C;
    //                }
    //                else
    //                {
    //                    D = C;
    //                }
    //            }
    //            string B = "<div class=\"wap_category_list\"><a href=\"#\"><div class=\"wap_category_name\">" + dt.Rows[i]["Title"].ToString() + "</div></a><div class=\"wap_category_p\">" + D + "</div></div>";
    //            if (i > 0)
    //            {
    //                A = A + B;
    //            }
    //            else
    //            {
    //                A = B;
    //            }
    //        }
    //        category = A;
    //    }
    //}

    //登录框
    protected void Login()
    {
        login = "<div class=\"index_warp_content mt10\"><div class=\"index_login\"><div class=\"index_login_p\">您尚未登录，马上登录轻松管理信息</div><div class=\"index_logoin_sub\"><a href=\"c_login.aspx\" class=\"index_logoin_bth\">登录</a><a href=\"selectLogin.html\" class=\"index_logoin_bth index_reg_bth\">注册</a></div></div></div>";
    }
    

}