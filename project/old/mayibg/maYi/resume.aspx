<%@ Page Language="C#" AutoEventWireup="true" CodeFile="resume.aspx.cs" Inherits="resume" %>

<!DOCTYPE html>
<html>
<head>
    <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta http-equiv="Cache-Control" content="no-cache">
    <title>蚂蚁帮工</title>
    <meta http-equiv="keywords" content="招聘">
    <meta http-equiv="description" content="招聘">
    <meta http-equiv="X-UA-compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width" initial-scale="1">
    <meta name="viewport" content="width=device-width,initial-scale=1,minimum-scale=1, maximum-scale=1, user-scalable=no">
    <meta name="format-detection" content="telephone=no,email=no">
    <link rel="stylesheet" href="css/mui.min.css" type="text/css" />
    <link rel="stylesheet" href="css/mui.picker.css" type="text/css" />
    <link rel="stylesheet" href="css/mui.poppicker.css" type="text/css" />
    <link rel="stylesheet" href="css/css.css" type="text/css" />
    <link rel="stylesheet" href="css/job.css" type="text/css" />
    <link rel="stylesheet" href="css/style.css" type="text/css" />
    <link rel="styleSheet" href="css/layer.css" type="text/css" id="layermcss">
    <link rel="stylesheet" href="css/swiper.min.css" type="text/css" />
    <link rel="stylesheet" href="css/demo.css" type="text/css">
	<link rel="stylesheet" href="css/wap_tck.css" type="text/css">
    <link rel="stylesheet" href="css/yun_wap_member.css" type="text/css" />
	<link rel="stylesheet" href="css/app.css" type="text/css" />
</head>
    
    <script charset="utf-8" src="js/s.js" language="javascript"></script>
<script src="js/hm.js" language="javascript"></script>
<script src="js/push.js" language="javascript"></script>
<script src="js/jquery-1.8.0.min.js" language="javascript"></script>
<script src="js/prefixfree.min.js" language="javascript"></script>
<script src="js/pack.js" type="text/javascript"></script>
<script src="js/layer.m.js" language="javascript"></script>
<script src="js/public.js" language="javascript"></script>
<script src="js/mui.min.js" language="javascript "></script>
<script src="js/mui.picker.js" language="javascript "></script>
<script src="js/mui.poppicker.js" language="javascript "></script>
<script src="js/forgetpw.js" language="javascript "></script>
<script src="js/reg_ajax.js" charset="utf-8" language="javascript"></script>
<script src="js/gt.js" language="javascript"></script>
<script src="js/mobile.js" type="text/javascript "></script>
<script src="js/swiper.js"></script>
<script src="js/search.js" language="javascript"></script>
<script src="js/demo.js" language="javascript"></script>
<script src="js/mui.min.js" language="javascript"></script>
<script src="js/mui.view.js" language="javascript"></script>
<script src="js/binding.js" language="javascript"></script>
<script src="js/compress.js" language="javascript"></script>
    <script type="text/javascript">
        function User() {
            var div = document.getElementById('privacy');
            if (div.className == "mui-switch mui-switch-mini mui-active") {
                document.getElementById('privacy').className = 'mui-switch mui-switch-mini totoday';
                document.getElementById('b').style.transform = 'translate(0px, 0px)'
                document.getElementById('totoday').value = ''
                document.getElementById('showprivacy').innerText = '简历保密'
                //location.href = "resume.aspx?Bm=1";
            }
            else {
                document.getElementById('privacy').className = 'mui-switch mui-switch-mini mui-active';
                document.getElementById('b').style.transform = 'translate(16px, 0px)'
                document.getElementById('totoday').value = '1'
                document.getElementById('showprivacy').innerText = '简历公开'
                //location.href = "resume.aspx?Bm=0";
            }

        }
    </script>
</head>
<body class="mui-ios mui-ios-11 mui-ios-11-0">
    <!-- Content area -->
<div class="body_wap">
    <header class="header_h">
        <div class="header_fixed">
            <div class="header">
                <div class="header_userbg bg3">
                    <a class="hd-lbtn " href="javascript:history.back();"><i class="header_top_l iconfont"></i></a>
                    <div class="header_h1">我的简历</div>
                    <span class="yun_usermember_resume_setjl"><a id="moreset" class="yun_usermember_resume_setjl_a">简历设置</a></span>
                </div>
            </div>
        </div>
    </header>
    <link rel="stylesheet" href="css/mui.picker.css" type="text/css">
    <link rel="stylesheet" href="css/mui.poppicker.css" type="text/css">
    <style>.layermbox {z-index: 10000000000}</style>
    <!--有简历的情况-->
    <div class="yun_usermember_have">
        <div class="yun_usermember_financebg"></div>
        <div class="yun_usermember_resume">
            <div class="yun_usermember_resume_b">
             <div class="yun_usermember_resume_b_c">
                        <div class="yun_usermember_resumet">
                            <div class="yun_usermember_resumename">
                                <%=name%>
                                <span id="resumeUserPicker" class="yun_usermember_resumeqh" data-resume="1031">切换简历</span> <span class="yun_usermember_resume_mr">默认</span>
                            </div>
                            <div class="yun_usermember_resumeintegrity">
                                <%=Integrity%>
                            </div>
                            <div class="yun_usermember_resume_zx">
                                状态： 已审核<span class="yun_usermember_resume_zx_n"><%=date%> 更新</span><span class="yun_usermember_resume_zx_n">被浏览：0</span>
                            </div>
                        </div>
                        <div class="yun_usermember_resumeoperation">
                            <ul>
                                <li>
                                    <a class="yun_usermember_resumeoperation_dz">置顶 </a>
                                </li>
                                <li>
                                    <a href="resume.aspx" id="refresh" class="yun_usermember_resumeoperation_sx">刷新 </a>
                                </li>

                                <li>
                                    <a class="yun_usermember_resumeoperation_mr">默认</a>
                                </li>
                                <li>
                                    <a href="<%=resumeA%>" class="yun_usermember_resumeoperation_yl">预览</a>
                                </li>

                            </ul>

                        </div>
                        <div class="yun_usermember_resumeset">
                            <div class="yun_usermember_resumeset_box" >
                                <span></span>
                                <div  onclick="User()" id="privacy" class="mui-switch mui-switch-mini" data-switch="1" style="transition-duration: 0.2s;">
                                    <div id="b" class="mui-switch-handle" style="transition-duration: 0.2s; transform: translate(0px, 0px);"></div>
                                </div>
                                <span id="showprivacy" class="yun_usermember_resumeset_box_s">简历保密</span>
                                <input type="hidden" runat="server" id="totoday" name="totoday" value="" />
                            </div>
                        </div>
                    </div>
                
            </div>
        </div>
         <ul class="yun_usermember_resumebox">
                <li>
                    <a href="<%=basic%>">
                        <div class="yun_usermember_resumetit"><i class="yun_usermember_resumetit_icon"></i>基本信息 <i class="list_box_b">+20%</i><span class="yun_usermember_resume_zt">修改</span></div>
                        <div class="yun_usermember_resumeinfo">
                            <div class="yun_usermember_resumeinfo_photo">
                                <img src="<%=Src%>" border="0" />
                            </div>
                            <div class="yun_usermember_resumeinfo_pt"><span class="yun_usermember_resumeinfo_name"><%=Uname%>  </span>（ <%=Sex%><span class="yun_usermember_resumeline">|</span><%=age%>岁）</div>
                            <div class="yun_usermember_resumeinfo_p"><span class="yun_usermember_resumeinfo_p_n">工作经验：</span> <%=Exp%></div>
                            <div class="yun_usermember_resumeinfo_p"><span class="yun_usermember_resumeinfo_p_n">最高学历：</span><%=Edu%></div>

                            <div class="yun_usermember_resumeinfo_p">
                                <span class="yun_usermember_resumeinfo_p_n">现居住地：</span><%=Living%>
                            </div>
                        </div>
                    </a>
                </li>
                <li>
                    <a href="<%=intention%>">
                        <div class="yun_usermember_resumetit">
                            <i class="yun_usermember_resumetit_icon yun_usermember_resumetit_icon_yx"></i>意向职位 <i class="list_box_b">+35%</i> <span class="yun_usermember_resume_zt">修改 </span>
                        </div>
                        <div class="yun_usermember_resume_yx">
                            <div class="yun_usermember_resume_yx">
                                <div class="yun_usermember_resumeinfo_p"><span class="yun_usermember_resumeinfo_p_n">期望岗位：</span><%=name%></div>
                                <div class="yun_usermember_resumeinfo_p"><span class="yun_usermember_resumeinfo_p_n">期望城市：</span><%=City_classid%></div>
                                <div class="yun_usermember_resumeinfo_p"><span class="yun_usermember_resumeinfo_p_n">从事行业：</span><%=Hy%></div>
                                <div class="yun_usermember_resumeinfo_p"><span class="yun_usermember_resumeinfo_p_n">期望薪资：</span><%=Minsalary%></div>
                                <div class="yun_usermember_resumeinfo_p"><span class="yun_usermember_resumeinfo_p_n">到岗时间：</span><%=Report%></div>
                                <div class="yun_usermember_resumeinfo_p"><span class="yun_usermember_resumeinfo_p_n">工作性质：</span><%=Type%></div>
                                <div class="yun_usermember_resumeinfo_p"><span class="yun_usermember_resumeinfo_p_n">求职状态：</span><%=Jobstatus%></div>
                            </div>
                        </div>
                    </a>
                </li>
                <li>
                    <a href="<%=wexperience%>">
                        <div class="yun_usermember_resumetit">
                            <i class="yun_usermember_resumetit_icon yun_usermember_resumetit_icon_gz"></i>工作经历 <i class="<%=Wexperienceb%>">+10%</i> <span class="yun_usermember_resume_zt">修改 </span>
                        </div>
                        <%=Wexperiencea%>
                    </a>
                </li>
                <li>
                    <a href="<%=educationA%>">
                        <div class="yun_usermember_resumetit">
                            <i class="yun_usermember_resumetit_icon yun_usermember_resumetit_icon_jy"></i>教育经历 <i class="<%=educationb%>">+10%</i> <span class="yun_usermember_resume_zt">修改</span>
                        </div>
                         <%=educationa%>
                    </a>
                </li>
                <li>
                    <a href="<%=projectA%>">
                        <div class="yun_usermember_resumetit">
                            <i class="yun_usermember_resumetit_icon yun_usermember_resumetit_icon_xm"></i>项目经历 <i class="<%=projectb%>">+8%</i><span class="yun_usermember_resume_zt">修改</span>
                        </div>
                        <%=projecta%>
                    </a>
                </li>

                <li>
                    <a href="<%=trainA%>">
                        <div class="yun_usermember_resumetit">
                            <i class="yun_usermember_resumetit_icon yun_usermember_resumetit_icon_px"></i>培训经历 <i class="<%=trainb%>">+7%</i><span class="yun_usermember_resume_zt">修改</span>
                        </div>
                        <%=traina%>
                    </a>
                </li>
                <li>
                    <a href="<%=functionA%>">
                        <div class="yun_usermember_resumetit">
                            <i class="yun_usermember_resumetit_icon yun_usermember_resumetit_icon_jn"></i>职业技能 <i class="<%=functionb%>">+10%</i> <span class="yun_usermember_resume_zt">修改 </span>
                        </div>
                        <%=functiona%>
                    </a>
                </li>

                <li>
                    <a href="<%=evaluateA%>">
                        <div class="yun_usermember_resumetit">
                            <i class="yun_usermember_resumetit_icon yun_usermember_resumetit_icon_pj"></i>自我评价 <i class="list_box_b"></i><span class="yun_usermember_resume_zt">修改</span>
                        </div>
                        <div class="yun_resume_pj_box">
								<div class="yun_resume_pj_box_nr"><%=evaluatea%></div>

							</div>
                    </a>
                </li>
                <li>
                    <a href="<%=wcaseA%>">
                        <div class="yun_usermember_resumetit"><i class="yun_usermember_resumetit_icon yun_usermember_resumetit_icon_al"></i>作品案例</div>
                        <div class="yun_usermember_resumelist">
                            <div class="">PS：上传作品更受企业青睐，可提升5倍面试邀约率！上传作品案例</div>
                        </div>
                    </a>
                </li>
            </ul>
        <div class="yun_usermember_cj_new">
                <a href="<%=addres%>" class="yun_usermember_cj_new_bth">创建新简历</a>
            </div>
    </div>
    <!--有简历的情况 end-->
    <!--无简历的情况 end-->
    <!--更多设置弹出层-->
    <div id="bg" style="display:none; z-index:100000000000"></div>
    <div id="bgset" class="yun_resume_setup" style="display:none">
        <%--<div class="yun_resume_setup_box">
            <div class="yun_resume_setup_tit">委托简历</div>设置委托投递后，求职顾问将根据你简历的求职意向为您筛选投递适合的职位！<font color="#f00">未申请</font>
            <a href="c_getserver.html" class="yun_resume_setup_bth">委托</a>
        </div>
        <div class="yun_resume_setup_box">
            <div class="yun_resume_setup_tit">自动匹配职位</div>系统根据意向职位配适合的工作岗位！
            <a href="c_likejob.html" class="yun_resume_setup_bth">匹配</a>
        </div>--%>
        <a href="<%=addres%>" class="yun_resume_setup_cj">创建新简历</a>
        <a href="javascript:void(0)" onclick="layer_del('确定要删除？','resume.aspx?sc=<%=Id%>')">
            <div class="yun_resume_setup_sc">删除简历</div>
        </a>
    </div>
    <!--委托简历弹出层-->
    <div id="entr_resume" style="display:none; width: 300px;">
        <div style="height: 100px; width: 300px;" class="job_box_div">
            <div class="job_box_title">
                <div class="resume_ask_qr"><span class="resume_ask" style="margin-left:10px;"></span><em>委托简历将扣除您5元</em></div>
            </div>
            <div class="job_box_inp">
                <span class="job_box_botton" style="width:71px; margin-top:0px;">
                    <a class="job_box_yes job_box_botton2" href="javascript:void(0);" style="margin-top:0px;">确定</a>
                </span>
            </div>
        </div>
    </div>
    <script src="js/mui.picker.js" language="javascript"></script>
    <script src="js/mui.poppicker.js" language="javascript"></script>
    <script>
        (function ($, doc) {
            $.init();
            $.ready(function () {
                //创建个人简历
                var userPicker = new $.PopPicker();
                userPicker.setData([
                    <%=Qhjl%>
                ]);
                var showUserPickerButton = doc.getElementById('resumeUserPicker');
                var userResult = doc.getElementById('userResult');
                showUserPickerButton.addEventListener('tap', function (event) {
                    var data = userPicker.pickers[0].setSelectedIndex(0, 2000);
                    userPicker.show(function (selectItems) {
                        // console.log(selectItems[0].value);
                        location.href = 'resume.aspx?Id=' + selectItems[0].value
                        // mui.openWindow({
                        //     url:selectItems,
                        //     id:selectItems
                        // })
                    });
                }, false);
            });
        })(mui, document);
		</script>
        <script>
            // var resumeData = [];
            // resumeData.push({
            //     value: '1078',
            //     text: '前端开发(默认)'
            // })
            mui.init({
                swipeBack: true //启用右滑关闭功能
            });
            mui('.mui-content .mui-switch').each(function () { //循环所有toggle
                //toggle.classList.contains('mui-active') 可识别该toggle的开关状态
                this.parentNode.querySelector('span').innerText = '' + (this.classList.contains('mui-active') ? '简历公开' : '简历保密');
                /**
                 * toggle 事件监听
                 */
                this.addEventListener('toggle', function (event) {
                    //event.detail.isActive 可直接获取当前状态
                    this.parentNode.querySelector('span').innerText = '' + (event.detail.isActive ? '简历公开' : '简历保密');
                });
            });
            function fidcard() {
                layermsg('请先完成身份认证！', 2, function () {
                    location.href = 'yz_idcard.html';
                });
            }
    </script>
    <script src="js/resume.js" language="javascript"></script>
    <script src="js/publicselect.js" language="javascript"></script>
    <div class="mui-poppicker">
        <div class="mui-poppicker-header"> <button class="mui-btn mui-poppicker-btn-cancel">取消</button> <button class="mui-btn mui-btn-blue mui-poppicker-btn-ok">确定</button>
            <div class="mui-poppicker-clear"></div>
        </div>
        <div class="mui-poppicker-body">
            <div class="mui-picker" style="width: 100%;">
                <div class="mui-picker-inner">
                    <div class="mui-pciker-rule mui-pciker-rule-ft"></div>
                    <ul class="mui-pciker-list" style="transform: perspective(1000px) rotateY(0deg) rotateX(0deg);">
                        <li class="highlight" style="transform-origin: center center -89.5px; transform: translateZ(89.5px) rotateX(0deg);">其他(默认)</li>
                    </ul>
                    <div class="mui-pciker-rule mui-pciker-rule-bg"></div>
                </div>
            </div>
        </div>
    </div>
    <div id="hm_t_undefined" class="hm-t-container">
        <div class="hm-t-go-top" style="display: none;"></div>
    </div>
</div>
   <div class="yun_footer">
            <div class="yun_footer_fix">
                <ul class="yun_footer_nav">
                    <li>
                        <a href="index.aspx" id="indexclick"><i class="yun_footer_nav_icon yun_footer_nav_home"></i>首页</a>
                    </li>
                    <li>
                        <a href="c_part.aspx"><i class="yun_footer_nav_icon yun_footer_nav_msg"></i>职位</a>
                    </li>
                    <li>
                <a href="m_news.aspx"><i class="yun_footer_nav_icon yun_footer_nav_fx"></i>消息</a>
                        <%=news%>
            </li>
                    <li>
                        <a href="mine.aspx"><i class="yun_footer_nav_icon yun_footer_nav_user"></i>我的</a>
                    </li>
                </ul>
            </div>
        </div>
</body>


</html>