using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class pages_qy_part : System.Web.UI.Page
{
    public static string news;
    public string part;
    public string zplist, shlist, xjlist;
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
            Date();
        }
    }

    protected void Date()
    {
        if (Session["userName"] == null)
        {
            Response.Redirect("~/c_login.aspx");
        }
        if (!string.IsNullOrEmpty(Request.QueryString["del"]) && !string.IsNullOrEmpty(Request.QueryString["Id"]))
        {
            DAL.SQLHelper.GetExecute("delete from qy_part where Id=" + Request.QueryString["Id"] + "");
        }

        if (!string.IsNullOrEmpty(Request.QueryString["xj"]) && !string.IsNullOrEmpty(Request.QueryString["Id"]))
        {
            DAL.SQLHelper.GetExecute("update qy_part set audits='3' where Id=" + Request.QueryString["Id"] + "");
        }

        if (!string.IsNullOrEmpty(Request.QueryString["sj"]) && !string.IsNullOrEmpty(Request.QueryString["Id"]))
        {
            DAL.SQLHelper.GetExecute("update qy_part set audits='0' where Id=" + Request.QueryString["Id"] + "");
        }

        DataTable dt = DAL.SQLHelper.GetDtBySql("select * from qy_info where username='" + Session["userName"] + "' ");
        if (dt.Rows.Count > 0)
        {
            //招聘中的职位
            DataTable dt1 = DAL.SQLHelper.GetDtBySql("select * from qy_part where G_Id='" + dt.Rows[0]["Id"].ToString() + "' and audits='1' ");
            if (dt1.Rows.Count > 0)
            {
                string A = "";
                for (int i = 0; i < dt1.Rows.Count; i++)
                {
                    string C = "";
                    if (dt1.Rows[i]["descriptiontext"].ToString() == "长期招聘")
                    {
                        C = "<div class=\"yun_m_job_list_zt\">有效期至：长期招聘</div><div class=\"yun_m_job_list_zt\">更新日期：" + dt1.Rows[i]["time"].ToString() + "</div>";
                    }
                    else
                    {
                        C = "<div class=\"yun_m_job_list_zt\">有效期至：" + dt1.Rows[i]["descriptionedate"].ToString() + "</div><div class=\"yun_m_job_list_zt\">报名截止：" + dt1.Rows[i]["descriptiondeadline"].ToString() + "</div><div class=\"yun_m_job_list_zt\">更新日期：" + dt1.Rows[i]["time"].ToString() + "</div>";
                    }
                    string B = "<div class=\"wap_member_msg\"><div class=\"wap_member_date\"><span class=\"yun_m_job_date_n\">&nbsp;<a href=\"qy_part_show.aspx?Id=" + dt1.Rows[i]["Id"].ToString() + "\" class=\" job_list_jobname com_member_hr_cblue\">" + dt1.Rows[i]["name"].ToString() + "</a></span><div class=\"wap_member_date_r\">已审核</div></div><div class=\"yun_m_job_list_zt\">兼职报名：" + dt1.Rows[i]["delivery"].ToString() + "</div>" + C + "<div class=\"yun_member_bth\"><a href=\"qy_partadd.aspx?Id=" + dt1.Rows[i]["Id"].ToString() + "\" class=\"yun_member_partsub yun_member_bth2\">修改</a><a href=\"javascript:void(0)\" onclick=\"layer_del('确定要删除？','qy_part.aspx?Id=" + dt1.Rows[i]["Id"].ToString() + "&del=3');\" class=\"yun_member_partsub\">删除</a><a href=\"javascript:void(0)\" onclick=\"layer_del('','qy_part.aspx?Id=" + dt1.Rows[i]["Id"].ToString() + "&xj=" + dt1.Rows[i]["Id"].ToString() + ")\" class=\"yun_member_sub\">下架</a></div></div>";
                    if (i > 0)
                    {
                        A = A + B;
                    }
                    else
                    {
                        A = B;
                    }
                }
                zplist = A;
            }
            else
            {
                zplist = "<div class=\"wap_member_no\">暂无职位</div>";
            }

            //未审核的职位
            DataTable dt3 = DAL.SQLHelper.GetDtBySql("select * from qy_part where G_Id='" + dt.Rows[0]["Id"].ToString() + "' and (audits='0' or audits='2') ");
            if (dt3.Rows.Count > 0)
            {
                string A = "";
                for (int i = 0; i < dt3.Rows.Count; i++)
                {
                    string Audits = "未审核";
                    if (dt3.Rows[i]["audits"].ToString() == "2")
                    {
                        Audits = "<span class=\"wap_member_wtg\" onclick=\"layermsg('请正确填写招聘信息。');return false;\">未通过</span>";
                    }
                    string C = "";
                    if (dt3.Rows[i]["descriptiontext"].ToString() == "长期招聘")
                    {
                        C = "<div class=\"yun_m_job_list_zt\">有效期至：长期招聘</div><div class=\"yun_m_job_list_zt\">更新日期：" + dt3.Rows[i]["time"].ToString() + "</div>";
                    }
                    else
                    {
                        C = "<div class=\"yun_m_job_list_zt\">有效期至：" + dt3.Rows[i]["descriptionedate"].ToString() + "</div><div class=\"yun_m_job_list_zt\">报名截止：" + dt3.Rows[i]["descriptiondeadline"].ToString() + "</div><div class=\"yun_m_job_list_zt\">更新日期：" + dt3.Rows[i]["time"].ToString() + "</div>";
                    }
                    string B = "<div class=\"wap_member_msg\"><div class=\"wap_member_date\"><span class=\"yun_m_job_date_n\">&nbsp;<a href=\"qy_part_show.aspx?Id=" + dt3.Rows[i]["Id"].ToString() + "\" class=\" job_list_jobname com_member_hr_cblue\">" + dt3.Rows[i]["name"].ToString() + "</a></span><div class=\"wap_member_date_r\">" + Audits + "</div></div><div class=\"yun_m_job_list_zt\">兼职报名：" + dt3.Rows[i]["delivery"].ToString() + "</div>" + C + "<div class=\"yun_member_bth\"><a href=\"qy_partadd.aspx?Id=" + dt3.Rows[i]["Id"].ToString() + "\" class=\"yun_member_partsub yun_member_bth2\">修改</a><a href=\"javascript:void(0)\" onclick=\"layer_del('确定要删除？','qy_part.aspx?Id=" + dt3.Rows[i]["Id"].ToString() + "&del=3');\" class=\"yun_member_partsub\">删除</a></div></div>";
                    if (i > 0)
                    {
                        A = A + B;
                    }
                    else
                    {
                        A = B;
                    }
                }
                shlist = A;
            }
            else
            {
                shlist = "<div class=\"wap_member_no\">暂无职位</div>";
            }

            //已下架的职位
            DataTable dt4 = DAL.SQLHelper.GetDtBySql("select * from qy_part where G_Id='" + dt.Rows[0]["Id"].ToString() + "' and audits='3' ");
            if (dt4.Rows.Count > 0)
            {
                string A = "";
                for (int i = 0; i < dt4.Rows.Count; i++)
                {
                    string C = "";
                    if (dt4.Rows[i]["descriptiontext"].ToString() == "长期招聘")
                    {
                        C = "<div class=\"yun_m_job_list_zt\">有效期至：长期招聘</div><div class=\"yun_m_job_list_zt\">更新日期：" + dt4.Rows[i]["time"].ToString() + "</div>";
                    }
                    else
                    {
                        C = "<div class=\"yun_m_job_list_zt\">有效期至：" + dt4.Rows[i]["descriptionedate"].ToString() + "</div><div class=\"yun_m_job_list_zt\">报名截止：" + dt4.Rows[i]["descriptiondeadline"].ToString() + "</div><div class=\"yun_m_job_list_zt\">更新日期：" + dt4.Rows[i]["time"].ToString() + "</div>";
                    }
                    string B = "<div class=\"wap_member_msg\"><div class=\"wap_member_date\"><span class=\"yun_m_job_date_n\">&nbsp;<a href=\"qy_part_show.aspx?Id=" + dt4.Rows[i]["Id"].ToString() + "\" class=\" job_list_jobname com_member_hr_cblue\">" + dt4.Rows[i]["name"].ToString() + "</a></span><div class=\"wap_member_date_r\">已审核</div></div><div class=\"yun_m_job_list_zt\">兼职报名：" + dt4.Rows[i]["delivery"].ToString() + "</div>" + C + "<div class=\"yun_member_bth\"><a href=\"qy_partadd.aspx?Id=" + dt4.Rows[i]["Id"].ToString() + "\" class=\"yun_member_partsub yun_member_bth2\">修改</a><a href=\"javascript:void(0)\" onclick=\"layer_del('确定要删除？','qy_part.aspx?Id=" + dt4.Rows[i]["Id"].ToString() + "&del=3');\" class=\"yun_member_partsub\">删除</a><a href=\"javascript:void(0)\" onclick=\"layer_del('','qy_part.aspx?Id=" + dt4.Rows[i]["Id"].ToString() + "&sj=" + dt4.Rows[i]["Id"].ToString() + ")\" class=\"yun_member_sub\">上架</a></div></div>";
                    if (i > 0)
                    {
                        A = A + B;
                    }
                    else
                    {
                        A = B;
                    }
                }
                xjlist = A;
            }
            else
            {
                xjlist = "<div class=\"wap_member_no\">暂无职位</div>";
            }


        }
        else
        {
            //填写企业信息
        }
    }


    //protected void Date()
    //{
    //    if (!string.IsNullOrEmpty(Request.QueryString["del"]) && !string.IsNullOrEmpty(Request.QueryString["Id"]))
    //    {
    //        DAL.SQLHelper.GetExecute("delete from qy_part where Id=" + Request.QueryString["Id"] + "");
    //    }

    //    DataTable dt = DAL.SQLHelper.GetDtBySql("select * from qy_info where username='" + Session["userName"] + "' ");
    //    DataTable dt1 = DAL.SQLHelper.GetDtBySql("select * from qy_part where G_Id='" + dt.Rows[0]["Id"].ToString() + "' ");
    //    if (dt1.Rows.Count > 0)
    //    {
    //        string A = "";
    //        for (int i = 0; i < dt1.Rows.Count; i++)
    //        {

    //            string Audits = "已审核";
    //            if (dt1.Rows[i]["audits"].ToString() == "0") 
    //            {
    //                Audits = "未审核";
    //            }
    //            string C = "";
    //            if (dt1.Rows[i]["descriptiontext"].ToString() == "长期招聘")
    //            {
    //                C = "<div class=\"yun_m_job_list_zt\">有效期至：长期招聘</div><div class=\"yun_m_job_list_zt\">更新日期：" + dt1.Rows[i]["time"].ToString() + "</div>";
    //            }
    //            else 
    //            {
    //                C = "<div class=\"yun_m_job_list_zt\">有效期至：" + dt1.Rows[i]["descriptionedate"].ToString() + "</div><div class=\"yun_m_job_list_zt\">报名截止：" + dt1.Rows[i]["descriptiondeadline"].ToString() + "</div><div class=\"yun_m_job_list_zt\">更新日期：" + dt1.Rows[i]["time"].ToString() + "</div>";
    //            }
    //            string B = "<div class=\"wap_member_msg\"><div class=\"wap_member_date\"><span class=\"yun_m_job_date_n\">&nbsp;<a href=\"qy_part_show.aspx?Id=" + dt1.Rows[i]["Id"].ToString() + "\" class=\" job_list_jobname com_member_hr_cblue\">兼职</a></span><div class=\"wap_member_date_r\">" + Audits + "</div></div><div class=\"yun_m_job_list_zt\">兼职报名：" + dt1.Rows[i]["delivery"].ToString() + "</div>" + C + "<div class=\"yun_member_bth\"><a href=\"qy_partadd.aspx?Id=" + dt1.Rows[i]["Id"].ToString() + "\" class=\"yun_member_partsub yun_member_bth2\">修改</a><a href=\"javascript:void(0)\" onclick=\"layer_del('确定要删除？','qy_part.aspx?Id=" + dt1.Rows[i]["Id"].ToString() + "&del=3');\" class=\"yun_member_partsub\">删除</a></div></div>";
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
    //        part = " <div class=\"wap_member_no\">您暂时还没有兼职<div><a href=\"qy_partadd.aspx\" class=\"wap_member_no_submit\">发布兼职</a></div></div>";
    //    }
    //}
}