using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class pages_qy_resume_show : System.Web.UI.Page
{
    public static string news;
    public static string time, sex, uname, src, edu, exp, name, city_classid, minsalary, type, report, hy, jobstatus;
    public static string wexperiencea, education, function, project, train, wcase, evaluatea, sexa, contact, RCollection;
    public int age;
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
        if (!string.IsNullOrEmpty(Request.QueryString["Id"]))
        {
            //企业查看否
            if (!string.IsNullOrEmpty(Request.QueryString["ck"]))
            {
                DAL.SQLHelper.GetExecute("update jz_Zjg set see='T' where zjg_Id=" + Request.QueryString["ck"] + " ");
            }

            string sql = "select * from m_resume where Id=" + Request.QueryString["Id"] + "";
            DataTable dt = DAL.SQLHelper.GetDtBySql(sql);
            DataTable dt2 = DAL.SQLHelper.GetDtBySql("select * from m_info where Id=" + dt.Rows[0]["J_Id"].ToString() + "");
            time = dt.Rows[0]["time"].ToString();                                         //时间
            sex = dt2.Rows[0]["sex"].ToString();                                           //性别
            uname = dt2.Rows[0]["name"].ToString();                                       //姓名
            if (sex == "男")
            {
                uname = uname[0] + "先生";
                src = "../images/14947989259.PNG";
                sexa = "user_tj_showxg_h";
            }
            else
            {
                uname = uname[0] + "女士";
                src = "../images/14922051316.PNG";
                sexa = "user_tj_showxg";
            }
            if (dt2.Rows[0]["preview"].ToString() != "")
            {
                src = "../"+dt2.Rows[0]["preview"].ToString();
            }
            string ageA = dt2.Rows[0]["birthday"].ToString();
            ageA = ageA.Substring(0, 4);
            age = int.Parse(DateTime.Now.ToString("yyyy")) - int.Parse(ageA);           //年龄
            edu = dt2.Rows[0]["edu"].ToString();                                           //学历
            exp = dt2.Rows[0]["exp"].ToString();                                           //工作经验
            name = dt.Rows[0]["name"].ToString();                                       //期望岗位
            DataTable dtA = DAL.SQLHelper.GetDtBySql("select name from city_cache where Id='" + dt.Rows[0]["city_classid"].ToString() + "' ");
            city_classid = dtA.Rows[0][0].ToString();                       //期望城市
            minsalary = dt.Rows[0]["salary"].ToString();                               //期望薪资
            type = dt.Rows[0]["type"].ToString();                                         //工作性质
            report = dt.Rows[0]["report"].ToString();                                     //到岗时间
            hy = dt.Rows[0]["hy"].ToString();                                           //从事行业
            jobstatus = dt.Rows[0]["jobstatus"].ToString();                               //求职状态

            //自我评价
            if (dt2.Rows[0]["conten"].ToString() != "")
            {
                evaluatea = " <div class=\"resume_showbox\"><div class=\"resume_showbox_tit\"><i class=\"resume_showbox_icon resume_showbox_icon_zwpj\"></i>自我评价</div><div class=\"resume_showbox_cont resume_showbox_cont_pj\">" + dt2.Rows[0]["conten"].ToString() + "</div></div>";
            }
            else
            {
                evaluatea = " ";
            }


            //联系方式
            if (Session["userName"] == null)
            {
                contact = "<div class=\"com_post_login\"><div class=\"com_post_look_toew\"><div class=\"look_resume_tel_login\">企业HR才能查看联系方式哦！</div></div></div>";
            }
            else
            {
                DataTable dt8 = DAL.SQLHelper.GetDtBySql("select number from jz_manager where username='" + Session["userName"] + "'");
                if (dt8.Rows[0][0].ToString() == "2" || !string.IsNullOrEmpty(Request.QueryString["yl"]))
                {
                    contact = " <div class=\"com_post_msg_bot\"><aside class=\"wap_touch_img\"><em>联系手机：</em>" + dt2.Rows[0]["telphone"].ToString() + "</aside><aside class=\"wap_touch_img\"><em>联系邮箱：</em>" + dt2.Rows[0]["email"].ToString() + "</aside></div>";
                }
                else
                {
                    contact = "<div class=\"com_post_login\"><div class=\"com_post_look_toew\"><div class=\"look_resume_tel_login\">企业HR才能查看联系方式哦！</div></div></div>";
                }
            }


            //工作经历
            DataTable dt11 = DAL.SQLHelper.GetDtBySql("select * from c_resumeson where J_Id=" + Request.QueryString["Id"] + " order by E_Id");
            string A = "";
            if (dt11.Rows.Count > 0)
            {
                wexperiencea = "<div class=\"resume_showbox\"><div class=\"resume_showbox_tit\"><i class=\"resume_showbox_icon resume_showbox_icon_jl\"></i>工作经历<span class=\"yun_resume_jobtime\"></span></div><div class=\"resume_showbox_pd\">";
                for (int i = 0; i < dt11.Rows.Count; i++)
                {
                    string B = "<div class=\"resume_jy_list\"><i class=\"resume_jy_list_time\"></i><aside>" + dt11.Rows[0]["sdate"].ToString() + " 至 " + dt11.Rows[0]["edate"].ToString() + " </aside><aside><div class=\"resume_jy_comname\">" + dt11.Rows[0]["name"].ToString() + "</div><aside><em>任职：</em>" + dt11.Rows[0]["title"].ToString() + "</aside><em>职责：</em>" + dt11.Rows[0]["conten"].ToString() + " </aside></div>";
                    if (i > 0)
                    {
                        A = A + B;
                    }
                    else
                    {
                        A = B;
                    }
                }
                wexperiencea = wexperiencea + A + "</div></div>";
            }
            else
            {
                wexperiencea = "";
            }


            //教育经历
            DataTable dt3 = DAL.SQLHelper.GetDtBySql("select * from c_edu where J_Id=" + Request.QueryString["Id"] + " order by E_Id");
            string C = "";
            if (dt3.Rows.Count > 0)
            {
                for (int i = 0; i < dt3.Rows.Count; i++)
                {
                    string D = "<div class=\"resume_jy_list\"><i class=\"resume_jy_list_time\"></i><aside>" + dt3.Rows[i]["sdate"].ToString() + " 至 " + dt3.Rows[i]["edate"].ToString() + "</aside><div class=\"firm_name_h1_h\">" + dt3.Rows[i]["eduname"].ToString() + "</div><aside><em>所学专业：</em>" + dt3.Rows[i]["eduspec"].ToString() + "</aside><aside><em>最高学历：</em>" + dt3.Rows[i]["education"].ToString() + "</aside></div></div>";
                    if (i > 0)
                    {
                        C = C + D;
                    }
                    else
                    {
                        C = D;
                    }
                }
                education = "<div class=\"resume_showbox\"><div class=\"resume_showbox_tit\"><i class=\"resume_showbox_icon resume_showbox_icon_jyjl\"></i>教育经历</div><div class=\"resume_showbox_pd\">" + C + "</div></div>";
            }
            else
            {
                education = "";
            }


            //培训经历
            DataTable dt4 = DAL.SQLHelper.GetDtBySql("select * from c_Training where J_Id=" + Request.QueryString["Id"] + " order by E_Id");
            string E = "";
            if (dt4.Rows.Count > 0)
            {
                train = "<div class=\"resume_showbox\"><div class=\"resume_showbox_tit\"><i class=\"resume_showbox_icon resume_showbox_icon_pxjl\"></i>培训经历</div><div class=\"resume_showbox_pd\">";
                for (int i = 0; i < dt4.Rows.Count; i++)
                {
                    string F = "<div class=\"resume_jy_list\"><i class=\"resume_jy_list_time\"></i><aside>" + dt4.Rows[0]["sdate"].ToString() + " 至 " + dt4.Rows[0]["edate"].ToString() + " </aside><div class=\"firm_name_h1_h\">" + dt4.Rows[0]["name"].ToString() + "</div><aside><em>培训方向：</em>" + dt4.Rows[0]["title"].ToString() + " </aside><aside><em>培训描述：</em>" + dt4.Rows[0]["conten"].ToString() + "</aside></div></div>";
                    if (i > 0)
                    {
                        E = E + F;
                    }
                    else
                    {
                        E = F;
                    }
                }
                train = train + E + "</div></div>";
            }
            else
            {
                train = "";
            }


            //项目经历
            DataTable dt5 = DAL.SQLHelper.GetDtBySql("select * from c_Project where J_Id=" + Request.QueryString["Id"] + " order by E_Id ");
            string G = "";
            if (dt5.Rows.Count > 0)
            {
                project = "<div class=\"resume_showbox\"><div class=\"resume_showbox_tit\"><i class=\"resume_showbox_icon resume_showbox_icon_xmjl\"></i>项目经历</div><div class=\"resume_showbox_pd\">";
                for (int i = 0; i < dt5.Rows.Count; i++)
                {
                    string H = "<div class=\"resume_jy_list\"><i class=\"resume_jy_list_time\"></i><aside>" + dt5.Rows[0]["sdate"].ToString() + " 至 " + dt5.Rows[0]["edate"].ToString() + "</aside><div class=\"firm_name_h1_h\">123</div><aside><em>项目内容：</em>" + dt5.Rows[0]["conten"].ToString() + "</aside><aside><em>担任职位：</em>" + dt5.Rows[0]["title"].ToString() + " </aside><div> </div></div></div>";
                    if (i > 0)
                    {
                        G = G + H;
                    }
                    else
                    {
                        G = H;
                    }
                }
                project = project + G + "</div></div>";
            }
            else
            {
                project = "";
            }


            //职业技能
            DataTable dt6 = DAL.SQLHelper.GetDtBySql("select * from c_Skill where J_Id=" + Request.QueryString["Id"] + " order by E_Id");
            string I = "";
            if (dt6.Rows.Count > 0)
            {
                function = "<div class=\"resume_showbox\" id=\"resume_skill muipreview\"><div class=\"resume_showbox_tit\"><i class=\"resume_showbox_icon resume_showbox_icon_zyjn\"></i>职业技能</div><div class=\"resume_showbox_pd\">";
                for (int i = 0; i < dt6.Rows.Count; i++)
                {
                    string J = "<div class=\"resume_jy_list\"><i class=\"resume_jy_list_time\"></i><div class=\"firm_name_h1_h\">" + dt6.Rows[0]["name"].ToString() + " </div><aside><em>掌握时间：</em>" + dt6.Rows[0]["longtime"].ToString() + "年</aside><aside class=\"muipreview\"><em>证书图片：</em><img src=\"" + dt6.Rows[0]["previewimg"].ToString() + "\" width=\"95\" height=\"70\" style=\"vertical-align:middle\" data-preview-src=\"\" data-preview-group=\"1\"></aside></div></div>";
                    if (i > 0)
                    {
                        I = I + J;
                    }
                    else
                    {
                        I = J;
                    }
                }
                function = function + I + "</div></div>";
            }
            else
            {
                function = "";
            }

            //作品案例
            DataTable dt7 = DAL.SQLHelper.GetDtBySql("select * from c_wcase where J_Id=" + Request.QueryString["Id"] + " order by E_Id");
            string K = "";
            if (dt7.Rows.Count > 0)
            {
                wcase = "<div class=\"resume_showbox muipreview\" id=\"resume_usershow\"><div class=\"resume_showbox_tit\"><i class=\"resume_showbox_icon resume_showbox_icon_zwzp\"></i>我的作品</div><div class=\"resume_showbox_pd\" style=\"padding-left:5px; padding-top:10px;\">";
                for (int i = 0; i < dt7.Rows.Count; i++)
                {
                    string L = "<div class=\"resume_jy_list\"><i class=\"resume_jy_list_time\"></i><div class=\"firm_name_h1_h\">" + dt7.Rows[0]["title"].ToString() + " </div><aside><em>作品排序：</em>" + dt7.Rows[0]["sort"].ToString() + "</aside><aside class=\"muipreview\"><em>作品图片：</em><img src=\"" + dt7.Rows[0]["preview"].ToString() + "\" width=\"95\" height=\"70\" style=\"vertical-align:middle\" data-preview-src=\"\" data-preview-group=\"1\"></aside></div>";
                    if (i > 0)
                    {
                        K = K + L;
                    }
                    else
                    {
                        K = L;
                    }
                }
                wcase = wcase + K + "</div></div>";
            }
            else
            {
                wcase = "";
            }

            string timea = DateTime.Now.ToString("yyyy-MM-dd");
            if (!string.IsNullOrEmpty(Request.QueryString["Collection"]))
            {
                DataTable dt8 = DAL.SQLHelper.GetDtBySql("select * from jz_manager where username='" + Session["userName"] + "'");
                if (dt8.Rows[0]["number"].ToString() != "1")
                {
                    if (Request.QueryString["Collection"] == "0")
                    {
                        DataTable dt9 = DAL.SQLHelper.GetDtBySql("select isnull(max(Id)+1,0) from jz_R_Collection  ");
                        string M = dt9.Rows[0][0].ToString();
                        DAL.SQLHelper.GetExecute("insert into jz_R_Collection (Id,username,J_Id,Cancellation,Collection,time) values (" + M + ",'" + Session["userName"] + "'," + Request.QueryString["Id"] + ",'F','1','" + timea + "')");
                    }
                    else if (Request.QueryString["Collection"] == "1")
                    {
                        DAL.SQLHelper.GetExecute("update jz_R_Collection set Collection='1',time='" + timea + "' where username='" + Session["userName"] + "' and J_Id=" + Request.QueryString["Id"] + " ");
                    }
                    else
                    {
                        DAL.SQLHelper.GetExecute("update jz_R_Collection set Collection='2',time='" + timea + "' where username='" + Session["userName"] + "' and J_Id=" + Request.QueryString["Id"] + " ");
                    }
                }
                else
                {
                    Response.Write("<script type='text/javascript'>alert('个人无法收藏简历!')</script>");
                    return;
                    //弹框 个人无法收藏简历
                }
            }

            if (Session["userName"] != null)
            {
                DataTable dt10 = DAL.SQLHelper.GetDtBySql("select * from jz_R_Collection where J_Id=" + Request.QueryString["Id"] + " and Cancellation='F' and  username='" + Session["userName"] + "'");
                if (dt10.Rows.Count > 0)
                {
                    if (dt10.Rows[0]["Collection"].ToString() == "1")
                    {
                        RCollection = "<a href=\"qy_resume_show.aspx?Id=" + dt.Rows[0]["Id"].ToString() + "&Collection=2\"><i class=\"iconfont_ysc\"></i><span class=\"yun_job_footer_s yun_job_footer_s_y\">已收藏</span></a>";
                    }
                    else
                    {
                        RCollection = "<a href=\"qy_resume_show.aspx?Id=" + dt.Rows[0]["Id"].ToString() + "&Collection=1\"><i class=\"iconfont_sc\"></i><span class=\"yun_job_footer_s\">收藏</span></a>";
                    }
                }
                else
                {
                    RCollection = "<a href=\"qy_resume_show.aspx?Id=" + dt.Rows[0]["Id"].ToString() + "&Collection=0\"><i class=\"iconfont_sc\"></i><span class=\"yun_job_footer_s\">收藏</span></a>";
                }
            }
            else
            {
                RCollection = "<a href=\"../c_login.aspx\"  onclick=\"return confirm('登录后才可以收藏,确定登录？');\"><i class=\"iconfont_sc\"></i><span class=\"yun_job_footer_s\">收藏</span></a>";
            }

            if (Session["userName"] != null)
            {
                DataTable dt12 = DAL.SQLHelper.GetDtBySql("select number from jz_manager where username='" + Session["userName"] + "'");
                if (dt12.Rows[0][0].ToString() == "2")
                {
                    string Sql = "select * from jz_Zjg where  zw_Id in (select Id from qy_job where G_Id=(select Id from qy_info where username='" + Session["userName"] + "')) ";
                    Sql += " and accept='1' and username=(select username from m_info where Id=(select J_Id from m_resume where Id='" + Request.QueryString["Id"] + "')) ";
                    DataTable dt13 = DAL.SQLHelper.GetDtBySql(Sql);
                    if (dt13.Rows.Count > 0)
                    {
                        Button1.Text = "已邀请";
                    }
                }
            }

        }
    }

    protected void tdjl_Click(object sender, EventArgs e)
    {
        if (!string.IsNullOrEmpty(Request.QueryString["Id"]))
        {
            if (Session["userName"].ToString() == "" || Session["userName"] == null)
            {
                Response.Write("<script type='text/javascript'>alert('还没登录，请登录后再邀请!');window.location='../c_login.aspx';</script>");
            }
            DataTable dt = DAL.SQLHelper.GetDtBySql("select number from jz_manager where username='" + Session["userName"] + "'");
            if (dt.Rows[0][0].ToString() == "2")
            {
                if (Button1.Text == "面试邀请")
                {
                    DataTable dt1 = DAL.SQLHelper.GetDtBySql("select * from qy_job where G_Id=(select Id from qy_info where username='" + Session["userName"] + "') ");
                    DataTable dt2 = DAL.SQLHelper.GetDtBySql("select * from qy_part where G_Id=(select Id from qy_info where username='" + Session["userName"] + "') ");
                    int A = dt1.Rows.Count + dt2.Rows.Count;
                    if (A > 0)
                    {
                        Response.Redirect("qy_invite1.aspx?JLId=" + Request.QueryString["Id"]);
                    }
                    else
                    {
                        Response.Write("<script type='text/javascript'>alert('还没有职位，请发布职位后再邀请!');window.location='qy_part.aspx';</script>");
                    }
                }
            }
            else
            {
                Response.Write("<script type='text/javascript'>alert('个人用户,无法邀请!')</script>");
                return;
            }
        }
    }
}