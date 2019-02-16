<%@ Page Language="C#" AutoEventWireup="true" CodeFile="c_addexpect.aspx.cs" Inherits="c_addexpect" %>

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
</head>
<body class="mui-ios mui-ios-11 mui-ios-11-0">
    <form runat="server">
    <!-- Content area -->
    <div class="body_wap">
        <header class="header_h">
            <div class="header_fixed">
                <div class="header">
                    <div class="header_userbg bg3">
                        <a class="hd-lbtn mui-action-back" href="javascript:history.back()"><i class="header_top_l iconfont"></i></a>
                        <div class="header_h1">意向职位</div>
                    </div>
                </div>
            </div>
        </header>
        <link rel="stylesheet" href="css/wap_tck.css" type="text/css">
        <link rel="stylesheet" href="css/mui.picker.min.css" type="text/css">
        <link rel="stylesheet" href="css/mui.poppicker.css" type="text/css">
        <link rel="stylesheet" href="css/style.css" type="text/css">
        <link rel="stylesheet" href="css/cmc.css" type="text/css">
        <div id="app" class="mui-views">
            <div class="mui-view">
                <div class="mui-pages">
                </div>
            </div>
        </div>

         <div id="main" class="mui-page mui-page-center">
                        <!--页面主内容区开始-->
                        <div class="mui-page-content">
                            <div class="mui-scroll-wrapper">
                                <div class="mui-scroll" style="transform: translate3d(0px, 0px, 0px) translateZ(0px);">
                                    <ul class="yunset_list mt15">
                                        <li class="yunset_list_text"><span class="yunset_list_name">期望岗位</span> <span class="yunset_list_commentary">
                                            <input type="text" name="name" id="name" value="" placeholder="请输入期望岗位" runat="server"></span></li>
                                        <li><a href="#jobclasshtml"><span class="yunset_list_name">工作职能</span><span class="yunset_list_commentary yunset_list_js" id="jobnameshow" runat="server"></span></a>
                                            <input type="hidden" name="job_classid" id="job_classid" value="" runat="server">
                                        </li>
                                    </ul>
                                    <ul class="yunset_list mt15">
                                        <li><span class="yunset_list_name">从事行业</span>
                                            <span class="yunset_list_commentary">
                                                <button id="hyPicker" class="mui-btn mui-btn-block" type="button" runat="server">请选择</button>
                                                <input type="hidden" id="hy" name="hy" value="" runat="server">
                                            </span>
                                        </li>
                                        <li>
                                            <a href="#cityclasshtml"><span class="yunset_list_name">期望城市</span><span class="yunset_list_commentary yunset_list_js" id="citynameshow" runat="server">请选择</span></a>
                                            <input type="hidden" name="city_classid" id="city_classid" value="" runat="server">
                                        </li>
                                        <li>
                                            <a href="#salaryhtml"><span class="yunset_list_name">期望薪资</span> <span class="yunset_list_commentary" id="salaryshow" runat="server">请选择</span></a>
                                            <input type="hidden" name="salary" id="salary" value="" runat="server">
                                        </li>
                                    </ul>
                                    <ul class="yunset_list mt15">
                                        <li><span class="yunset_list_name">工作性质</span><span class="yunset_list_commentary">
                                            <button id="typePicker" class="mui-btn mui-btn-block" type="button" runat="server">请选择</button>
                                            <input type="hidden" id="type" name="type" value="" runat="server">
                                        </span></li>
                                        <li><span class="yunset_list_name">到岗时间</span><span class="yunset_list_commentary">
                                            <button id="reportPicker" class="mui-btn mui-btn-block" type="button" runat="server">请选择</button>
                                            <input type="hidden" id="report" name="report" value="" runat="server">
                                        </span></li>
                                        <li><span class="yunset_list_name">求职状态</span><span class="yunset_list_commentary">
                                            <button id="jobstatusPicker" class="mui-btn mui-btn-block" type="button" runat="server">请选择</button>
                                            <input type="hidden" id="jobstatus" name="jobstatus" value="" runat="server">
                                        </span></li>
                                    </ul>
                                    <div class="yunset_bth_box">
                                        <input type="hidden" id="eid" value="1084">
                                        <%-- <button id="submit" class="mui-btn mui-btn-block mui-btn-primary">保 存</button>--%>
                                        <asp:Button ID="submit" runat="server" CssClass="mui-btn mui-btn-block mui-btn-primary" Height="40px" Text="保 存" OnClick="Button1_Click" />
                                    </div>
                                    <br />
                                </div>
                            </div>
                        </div>
                        <!--页面主内容区结束-->
                    </div>
        <!--页面主结构结束-->
        <!--单页面开始-->

        <!-- 职位-->

        <!-- 城市多选-->
        <div id="salaryhtml" class="mui-page">
            <div class="mui-page-content">
                <div class="mui-scroll-wrapper" data-scroll="5">
                    <div class="mui-scroll wap_member" style="transform: translate3d(0px, 0px, 0px) translateZ(0px);">
                        <ul class="yunset_list">
                            <li class="yunset_list_text"><span class="yunset_list_name">最低薪资</span>
                                <div class="yunset_list_xzbox">
                                    <input type="number" id="minsalary" value="" placeholder="请填写最低薪资" onkeyup="this.value=this.value.replace(/[^0-9]/g,&#39;&#39;)">
                                    <span class="yunset_list_xz">元/月</span>
                                </div>
                            </li>
                            <li class="yunset_list_text"><span class="yunset_list_name">最高薪资<font color="#999">(选填)</font></span>
                                <div class="yunset_list_xzbox">
                                    <input type="number" id="maxsalary" onkeyup="this.value=this.value.replace(/[^0-9]/g,&#39;&#39;)" value="" placeholder="请填写最高薪资">

                                    <span class="yunset_list_xz">元/月</span>
                                </div>
                            </li>
                        </ul>
                        <a class="yun_wap_info_brief_tit_bc mui-action-back">确定</a>
                    </div>
                </div>
            </div>
        </div>

        <script src="js/mui.view.js" language="javascript"></script>
        <script src="js/mui.picker.min.js" language="javascript"></script>
        <script src="js/mui.poppicker.js" language="javascript"></script>
        <script src="js/resume.js" language="javascript"></script>
         <script language="javascript">
             var hyData = [];
             ''
             hyData.push({
                 value: '互联网/电子商务',
                 text: '互联网/电子商务'
             })
             ''
             hyData.push({
                 value: 'IT服务（系统/数据/维护）',
                 text: 'IT服务（系统/数据/维护）'
             })
             ''
             hyData.push({
                 value: '计算机软件/硬件',
                 text: '计算机软件/硬件'
             })
             ''
             hyData.push({
                 value: '交通/运输/物流',
                 text: '交通/运输/物流'
             })
             ''
             hyData.push({
                 value: '航空/航天研究与制造',
                 text: '航空/航天研究与制造'
             })
             ''
             hyData.push({
                 value: '医疗设备/器械',
                 text: '医疗设备/器械'
             })
             ''
             hyData.push({
                 value: '医药/生物工程',
                 text: '医药/生物工程'
             })
             ''
             hyData.push({
                 value: '办公用品及设备',
                 text: '办公用品及设备'
             })
             ''
             hyData.push({
                 value: '印刷/包装/造纸',
                 text: '印刷/包装/造纸'
             })
             ''
             hyData.push({
                 value: '仪器仪表及工业自动化',
                 text: '仪器仪表及工业自动化'
             })
             ''
             hyData.push({
                 value: '加工制造（原料加工/模具）',
                 text: '加工制造（原料加工/模具）'
             })
             ''
             hyData.push({
                 value: '大型设备/机电设备/重工业',
                 text: '大型设备/机电设备/重工业'
             })
             ''
             hyData.push({
                 value: '医疗/护理/美容/保健',
                 text: '医疗/护理/美容/保健'
             })
             ''
             hyData.push({
                 value: '酒店/餐饮',
                 text: '酒店/餐饮'
             })
             ''
             hyData.push({
                 value: '旅游/度假',
                 text: '旅游/度假'
             })
             ''
             hyData.push({
                 value: '农/林/牧/渔',
                 text: '农/林/牧/渔'
             })
             ''
             hyData.push({
                 value: '学术/科研',
                 text: '学术/科研'
             })
             ''
             hyData.push({
                 value: '政府/公共事业/非盈利机构',
                 text: '政府/公共事业/非盈利机构'
             })
             ''
             hyData.push({
                 value: '环保',
                 text: '环保'
             })
             ''
             hyData.push({
                 value: '电气/电力/水利',
                 text: '电气/电力/水利'
             })
             ''
             hyData.push({
                 value: '石油/石化/化工',
                 text: '石油/石化/化工'
             })
             ''
             hyData.push({
                 value: '能源/矿产/采掘/冶炼',
                 text: '能源/矿产/采掘/冶炼'
             })
             ''
             hyData.push({
                 value: '娱乐/体育/休闲',
                 text: '娱乐/体育/休闲'
             })
             ''
             hyData.push({
                 value: '媒体/出版/影视/文化传播',
                 text: '媒体/出版/影视/文化传播'
             })
             ''
             hyData.push({
                 value: '汽车/摩托车',
                 text: '汽车/摩托车'
             })
             ''
             hyData.push({
                 value: '工艺美术/收藏品/奢侈品',
                 text: '工艺美术/收藏品/奢侈品'
             })
             ''
             hyData.push({
                 value: '网络游戏',
                 text: '网络游戏'
             })
             ''
             hyData.push({
                 value: '通信/电信/网络设备',
                 text: '通信/电信/网络设备'
             })
             ''
             hyData.push({
                 value: '通信/电信运营、增值服务',
                 text: '通信/电信运营、增值服务'
             })
             ''
             hyData.push({
                 value: '电子技术/半导体/集成电路',
                 text: '电子技术/半导体/集成电路'
             })
             ''
             hyData.push({
                 value: '基金/证券/期货/投资',
                 text: '基金/证券/期货/投资'
             })
             ''
             hyData.push({
                 value: '金融/保险/银行',
                 text: '金融/保险/银行'
             })
             ''
             hyData.push({
                 value: '信托/担保/拍卖/典当',
                 text: '信托/担保/拍卖/典当'
             })
             ''
             hyData.push({
                 value: '房地产/建筑/建材/工程',
                 text: '房地产/建筑/建材/工程'
             })
             ''
             hyData.push({
                 value: '家居/室内设计/装饰装潢',
                 text: '家居/室内设计/装饰装潢'
             })
             ''
             hyData.push({
                 value: '物业管理/商业中心',
                 text: '物业管理/商业中心'
             })
             ''
             hyData.push({
                 value: '专业服务/咨询(财会/法律/人力资源等)',
                 text: '专业服务/咨询(财会/法律/人力资源等)'
             })
             ''
             hyData.push({
                 value: '广告/会展/公关',
                 text: '广告/会展/公关'
             })
             ''
             hyData.push({
                 value: '教育/培训',
                 text: '教育/培训'
             })
             ''
             hyData.push({
                 value: '租赁服务',
                 text: '租赁服务'
             })
             ''
             hyData.push({
                 value: '零售/批发',
                 text: '零售/批发'
             })
             ''
             hyData.push({
                 value: '贸易/进出口',
                 text: '贸易/进出口'
             })
             ''
             hyData.push({
                 value: '耐用消费品（服饰/纺织/皮革/家具/家电）',
                 text: '耐用消费品（服饰/纺织/皮革/家具/家电）'
             })
             ''
             hyData.push({
                 value: '快速消费品（食品/饮料/烟酒/日化）',
                 text: '快速消费品（食品/饮料/烟酒/日化）'
             })
             ''
             hyData.push({
                 value: '外包服务',
                 text: '外包服务'
             })
             ''
             hyData.push({
                 value: '检验/检测/认证',
                 text: '检验/检测/认证'
             })
             ''
             hyData.push({
                 value: '中介服务',
                 text: '中介服务'
             })
             ''
             hyData.push({
                 value: '其他',
                 text: '其他'
             })
             ''
             var typeData = [];
             ''
             typeData.push({
                 value: '不限',
                 text: '不限'
             })
             ''
             typeData.push({
                 value: '全职',
                 text: '全职'
             })
             ''
             typeData.push({
                 value: '兼职',
                 text: '兼职'
             })
             ''
             var reportData = [];
             ''
             reportData.push({
                 value: '随时到岗',
                 text: '随时到岗'
             })
             ''
             reportData.push({
                 value: '1周以内',
                 text: '1周以内'
             })
             ''
             reportData.push({
                 value: '3周以内',
                 text: '3周以内'
             })
             ''
             reportData.push({
                 value: '1个月之内',
                 text: '1个月之内'
             })
             ''
             reportData.push({
                 value: '3个月之内',
                 text: '3个月之内'
             })
             ''
             reportData.push({
                 value: '不确定',
                 text: '不确定'
             })
             ''
             var jobstatusData = [];
             ''
             jobstatusData.push({
                 value: '已离职，寻求新工作',
                 text: '已离职，寻求新工作'
             })
             ''
             jobstatusData.push({
                 value: '在职，考虑更好职位',
                 text: '在职，考虑更好职位'
             })
             ''
             jobstatusData.push({
                 value: '其他',
                 text: '其他'
             })
             ''

             mui.init();
             var viewApi = mui('#app').view({
                 defaultPage: '#main'
             });

             var view = viewApi.view;
             (function ($) {
                 //初始化单页的区域滚动
                 mui('.mui-scroll-wrapper').scroll({
                     scrollY: true, //是否竖向滚动
                     scrollX: false, //是否横向滚动
                     startX: 0, //初始化时滚动至x
                     startY: 0, //初始化时滚动至y
                     indicators: false, //是否显示滚动条
                     deceleration: 0.0006, //阻尼系数,系数越小滑动越灵敏
                     // bounce: true //是否启用回弹
                 });
                 //处理view的后退与webview后退
                 var oldBack = $.back;
                 $.back = function () {
                     if (viewApi.canBack()) { //如果view可以后退，则执行view的后退
                         viewApi.back();
                     } else { //执行webview后退
                         oldBack();
                     }
                 };
             })(mui);

             view.addEventListener('pageBeforeBack', function (e) {
                 var salaryshow = '';
                 var minsalary = parseInt(document.getElementById('minsalary').value);
                 var maxsalary = parseInt(document.getElementById('maxsalary').value);
                 if (minsalary) {
                     salaryshow = minsalary;
                     if (maxsalary) {
                         salaryshow += '-' + maxsalary + '元/月';
                     } else {
                         salaryshow += '元以上/月';
                     }
                 }
                 if (parseInt(maxsalary) > 0 && parseInt(maxsalary) < parseInt(minsalary)) {
                     document.getElementById('minsalary').value = '';
                     document.getElementById('maxsalary').value = '';
                     document.getElementById('salaryshow').innerText = '';
                     return mui.toast('最低薪资不能比最高薪资高，请重新填写');
                 }
                 document.getElementById('salaryshow').innerText = salaryshow;
                 document.getElementById('salary').value = salaryshow;
             });
             (function () {
                 if (document.getElementById('main')) {
                     document.getElementById('main').addEventListener('touchmove', function (e) { e.preventDefault(); }, { passive: false });
                 }
                 var submit = document.getElementById('submit');
                 submit.addEventListener('tap', saveexpect, false)

             })();

        </script>
     
        <script src="js/job.cache.js" language="javascript"></script>
    <script src="js/city.cache.js" language="javascript"></script>
        <script src="js/category.js" language="javascript"></script>
        <script src="js/cmc.js" language="javascript"></script>
    </div>
    <div class="yun_footer">
        <div class="yun_footer_fix">
            <ul class="yun_footer_nav">
                <li>
                    <a href="index.aspx"><i class="yun_footer_nav_icon yun_footer_nav_home"></i>首页</a>
                </li>
                <li>
                    <a href="c_part.aspx"><i class="yun_footer_nav_icon yun_footer_nav_msg"></i>职位</a>
                </li>
                <li>
                    <a href="m_news.aspx"><i class="yun_footer_nav_icon yun_footer_nav_fx"></i>消息</a>
                    <%=news%>
                </li>
                <!-- <li>
                <a href="More.html"><i class="yun_footer_nav_icon yun_footer_nav_fx"></i>更多</a>
            </li> -->
                <li>
                    <a href="mine.aspx"><i class="yun_footer_nav_icon yun_footer_nav_user"></i>我的</a>
                </li>
            </ul>
        </div>
    </div>
        </form>
</body>


</html>
