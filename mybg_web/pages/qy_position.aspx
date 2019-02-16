<%@ Page Language="C#" AutoEventWireup="true" CodeFile="qy_position.aspx.cs" Inherits="qy_position" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width,initial-scale=1.0,maximum-scale=1.0,user-scalable=no">
    <title>蚂蚁帮工
    </title>
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
        <link rel="stylesheet" href="../css/mui.min.css" type="text/css" />
        <link rel="stylesheet" href="../css/mui.picker.css" type="text/css" />
        <link rel="stylesheet" href="../css/mui.poppicker.css" type="text/css" />
        <link rel="stylesheet" href="../css/css.css" type="text/css" />
        <link rel="stylesheet" href="../css/job.css" type="text/css" />
        <link rel="stylesheet" href="../css/style.css" type="text/css" />
        <link rel="styleSheet" href="../css/layer.css" type="text/css" id="layermcss">
        <link rel="stylesheet" href="../css/swiper.min.css" type="text/css" />
        <link rel="stylesheet" href="../css/demo.css" type="text/css">
        <link rel="stylesheet" href="../css/wap_tck.css" type="text/css">
        <link rel="stylesheet" href="../css/yun_wap_member.css" type="text/css" />
        <link rel="stylesheet" href="../css/app.css" type="text/css" />
    </head>

    <script charset="utf-8" src="../js/s.js" language="javascript"></script>
    <script src="../js/hm.js" language="javascript"></script>
    <script src="../js/push.js" language="javascript"></script>
    <script src="../js/jquery-1.8.0.min.js" language="javascript"></script>
    <script src="../js/prefixfree.min.js" language="javascript"></script>
    <script src="../js/pack.js" type="text/javascript"></script>
    <script src="../js/layer.m.js" language="javascript"></script>
    <script src="../js/public.js" language="javascript"></script>
    <script src="../js/mui.min.js" language="javascript "></script>
    <script src="../js/mui.picker.js" language="javascript "></script>
    <script src="../js/mui.poppicker.js" language="javascript "></script>
    <script src="../js/forgetpw.js" language="javascript "></script>
    <script src="../js/reg_ajax.js" charset="utf-8" language="javascript"></script>
    <script src="../js/gt.js" language="javascript"></script>
    <script src="../js/mobile.js" type="text/javascript "></script>
    <script src="../js/swiper.js"></script>
    <script src="../js/search.js" language="javascript"></script>
    <script src="../js/demo.js" language="javascript"></script>
    <script src="../js/mui.min.js" language="javascript"></script>
    <script src="../js/mui.view.js" language="javascript"></script>
    <script src="../js/binding.js" language="javascript"></script>
    <script src="../js/compress.js" language="javascript"></script>
    
</head>
<body class="mui-ios mui-ios-11 mui-ios-11-0">
    <div id="app" class="mui-views">
        <div class="mui-view">
            <div class="mui-navbar"></div>
            <div class="mui-pages"></div>
        </div>
    </div>
    <!--单页面开始-->
    <div id="main" class="mui-page">
        <div class="mui-navbar-inner mui-bar mui-bar-nav mui-navbar-center">
            <div class="body_wap">
                <header class="header_h">
                    <div class="header_fixed">
                        <div class="header">
                            <div class="header_bg  bg3">
                                <a class="hd-lbtn" href="javascript:history.back();"><i class="header_top_l"></i></a>
                                <div class="header_h1">
                                    <div class="header_fx_search">
                                        <a href="#searchhtml">
                                            <div class="formFiled">
                                                <input type="text" value="" name="keyword" class="input_search searchnew" placeholder="请输入职位关键字,如：会计...">
                                            </div>
                                        </a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </header>
            </div>
        </div>

        <div class="mui-content pos_tab">
				<div class="mui-row">
					<div class="mui-col-sm-6 mui-col-xs-12">
						<li class="mui-table-view-cell">
							<a href="qy_part2.aspx" >
								兼职
							</a>
						</li>
					</div>
					<div class="mui-col-sm-6 mui-col-xs-12">
						<li class="mui-table-view-cell">
							<a href="qy_position.aspx" class="active">
								全职
							</a>
						</li>
					</div>
				</div>
			</div>

        <!--页面主内容区开始-->
        <div class="mui-page-content" style="top:40px">
            <div class="mui-scroll-wrapper">
                <div class="mui-scroll">
                    <section>
                        <div class="searchOptions clearfix">
                            <ul class="searchOptions_list">
                                <!-- <li class="grade popup" data-pop="grade">
                                <a href="javascript:void(0);" class="searchOptions_list_a">
                                    <span class="job_ov">
                                        区域
                                    </span>
                                    <i class="searchOptions_icon"></i>
                                </a>
                            </li> -->

                                <li class="grade popup">
                                    <a href="javascript:void(0);" class="searchOptions_list_a">
                                        <span class="job_ov" id='showCityPicker'>区域</span>
                                        <i class="searchOptions_icon"></i>
                                    </a>
                                </li>

                                <!-- <li class="Category popup" data-pop="Category">
                                <a href="javascript:void(0);" class="searchOptions_list_a">
                                    <span class="job_ov">职能</span>
                                    <i class="searchOptions_icon"></i>
                                </a>
                            </li> -->

                                <li class="grade popup">
                                    <a href="javascript:void(0);" class="searchOptions_list_a">
                                        <span class="job_ov" id='showJobPicker'>职能</span>
                                        <i class="searchOptions_icon"></i>
                                    </a>
                                </li>

                                <li class="Sort popup" data-pop="Sort">
                                    <a href="javascript:void(0);" class="searchOptions_list_a">
                                        <span class="job_ov">经验</span>
                                        <i class="searchOptions_icon  "></i>
                                    </a>
                                </li>
                                <li class="Gengduoj popup" data-pop="Gengduoj" style="border: none">
                                    <a href="javascript:void(0);" class="searchOptions_list_a">更多<i class="searchOptions_icon"></i></a>
                                </li>
                                <input type="hidden" id="searchurl" value="c=job" />
                                <input type="hidden" id="waptype" value="1" />
                            </ul>
                        </div>
                    </section>
                    <div class="clear"></div>
                    <section>
                        <div class="warp_content clear">
                            <div class="job_list_content">
                                <%=notice%>
                                <br />
                                <div style="text-align:center"><span>我是有底线的</span></div> <br />
                                <br />
                                <br />
                            </div>
                        </div>
                    </section>
                </div>
            </div>
        </div>
    </div>
    <!--单页面结束-->


    <script>
        mui.init();
        var viewApi = mui('#app').view({
            defaultPage: '#main'
        });
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
        var view = viewApi.view;
        (function ($) {
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
        $(document).ready(function () {
            $("#search").val();
            $(".searchOptions_list li a").removeClass("search_h1_box_cur_list");
        });
        $(".searchnew").on('tap', function () {
            $('body').removeAttr('style');
            $('.popshow').removeClass('grade-w-roll');
            $('.popshow').removeAttr('style');
            $('.popshow').removeClass('popshow');
        })
</script>
    <script>
        $(document).ready(function () {
            $("#resume").submit(function (e) {
                var min = $("#minresume").val();
                var max = $("#maxresume").val();
                if (min && max && parseInt(max) < parseInt(min)) {
                    $("#minresume").val(max);
                    $("#maxresume").val(min);
                }
            });
        });
        $(document).ready(function () {
            $("#job").submit(function (e) {
                var min = $("#minjob").val();
                var max = $("#maxjob").val();
                if (min && max && parseInt(max) < parseInt(min)) {
                    $("#minjob").val(max);
                    $("#maxjob").val(min);
                }
            });
        });
</script>

    <!-- Category职位类别 -->
    <div class="Category-eject">
        <ul class="Category-w" id="jobone">
            <li class="qc35" onclick="Categorytw('35','IT/互联网/通信','jobone')">IT/互联网/通信</li>
            <li class="qc36" onclick="Categorytw('36','销售/客服/市场','jobone')">销售/客服/市场</li>
            <li class="qc839" onclick="Categorytw('839','生产/制造/生物/制药/医疗器械','jobone')">生产/制造/生物/制药/医疗器械</li>
            <li class="qc44" onclick="Categorytw('44','服务业','jobone')">服务业</li>
            <li class="qc45" onclick="Categorytw('45','能源/环保/科研/农业','jobone')">能源/环保/科研/农业</li>
            <li class="qc38" onclick="Categorytw('38','贸易/交通/采购/物流','jobone')">贸易/交通/采购/物流</li>
            <li class="qc39" onclick="Categorytw('39','项目/质量/高级管理','jobone')">项目/质量/高级管理</li>
            <li class="qc40" onclick="Categorytw('40','设计/传媒/印刷/艺术','jobone')">设计/传媒/印刷/艺术</li>
            <li class="qc41" onclick="Categorytw('41','建筑/房地产/物业管理','jobone')">建筑/房地产/物业管理</li>
            <li class="qc42" onclick="Categorytw('42','财务/人力资源/行政','jobone')">财务/人力资源/行政</li>
            <li class="qc37" onclick="Categorytw('37','金融/银行/保险','jobone')">金融/银行/保险</li>
            <li class="qc43" onclick="Categorytw('43','咨询/法律/教育/翻译','jobone')">咨询/法律/教育/翻译</li>
            <li class="qc836" onclick="Categorytw('836','兼职/实习/社工/其他','jobone')">兼职/实习/社工/其他</li>
        </ul>
        <ul class="Category-t" id="jobone_son">
        </ul>
        <ul class="Category-s" id="job_post">
        </ul>
    </div>
    <!-- End Category -->

    <!-- Gengduoj 找工作更多-->
    <div class="Gengduoj-eject">
        <form action="" method="get" id="job">
            <ul class="Gengduoj-w" id="Gengduoj">
                <li tab_name="Gengduohy">
                    <a href="javascript:void(0);">行业类别<em id="gdjhy">&nbsp;&nbsp;</em></a>
                </li>
                <li tab_name="Gengduopr">
                    <a href="javascript:void(0);">公司性质<em id="gdjpr">&nbsp;&nbsp;</em></a>
                </li>
                <li tab_name="Gengduonum">
                    <a href="javascript:void(0);">公司规模<em id="gdjnum">&nbsp;&nbsp;</em></a>
                </li>
                <li tab_name="Gengduoedu">
                    <a href="javascript:void(0);">学历要求<em id="gdjedu">&nbsp;&nbsp;</em></a>
                </li>
                <li tab_name="Gengduouptime">
                    <a href="javascript:void(0);">更新日期<em id="gdjuptime">&nbsp;&nbsp;</em></a>
                </li>
                <li>薪资待遇
               
                    <span class="salary_text_box">
                        <input type="text" size="5" name="minsalary" id="minjob" placeholder="1999"
                            value="" onkeyup="this.value=this.value.replace(/[^0-9]/g,&#39;&#39;)" class="salary_text"></span>
                    <span>- </span>
                    <span class="salary_text_box">
                        <input type="text" size="5" name="maxsalary" id="maxjob" placeholder="2999"
                            value="" onkeyup="this.value=this.value.replace(/[^0-9]/g,&#39;&#39;)" class="salary_text"></span>
                </li>
                <li>
                    <input type="hidden" name="hy" id="gdjhyi" value="">
                    <input type="hidden" name="pr" id="gdjpri" value="">
                    <input type="hidden" name="num" id="gdjnumi" value="">
                    <input type="hidden" name="edu" id="gdjedui" value="">
                    <input type="hidden" name="uptime" id="gdjuptimei" value="">
                    <div class="search_chlosebth_box">
                        <input type="submit" value="确定" class=""></div>
                </li>
            </ul>
        </form>
        <ul class="Gengduoj-t" id="Gengduohy" style="display: block;">
            <li tab_name="gdjhy" data="互联网/电子商务">互联网/电子商务</li>
            <li tab_name="gdjhy" data="IT服务（系统/数据/维护）">IT服务（系统/数据/维护）</li>
            <li tab_name="gdjhy" data="计算机软件/硬件">计算机软件/硬件</li>
            <li tab_name="gdjhy" data="交通/运输/物流">交通/运输/物流</li>
            <li tab_name="gdjhy" data="航空/航天研究与制造">航空/航天研究与制造</li>
            <li tab_name="gdjhy" data="医疗设备/器械">医疗设备/器械</li>
            <li tab_name="gdjhy" data="医药/生物工程">医药/生物工程</li>
            <li tab_name="gdjhy" data="办公用品及设备">办公用品及设备</li>
            <li tab_name="gdjhy" data="印刷/包装/造纸">印刷/包装/造纸</li>
            <li tab_name="gdjhy" data="仪器仪表及工业自动化">仪器仪表及工业自动化</li>
            <li tab_name="gdjhy" data="加工制造（原料加工/模具）">加工制造（原料加工/模具）</li>
            <li tab_name="gdjhy" data="大型设备/机电设备/重工业">大型设备/机电设备/重工业</li>
            <li tab_name="gdjhy" data="医疗/护理/美容/保健">医疗/护理/美容/保健</li>
            <li tab_name="gdjhy" data="酒店/餐饮">酒店/餐饮</li>
            <li tab_name="gdjhy" data="旅游/度假">旅游/度假</li>
            <li tab_name="gdjhy" data="农/林/牧/渔">农/林/牧/渔</li>
            <li tab_name="gdjhy" data="学术/科研">学术/科研</li>
            <li tab_name="gdjhy" data="政府/公共事业/非盈利机构">政府/公共事业/非盈利机构</li>
            <li tab_name="gdjhy" data="环保">环保</li>
            <li tab_name="gdjhy" data="电气/电力/水利">电气/电力/水利</li>
            <li tab_name="gdjhy" data="石油/石化/化工">石油/石化/化工</li>
            <li tab_name="gdjhy" data="能源/矿产/采掘/冶炼">能源/矿产/采掘/冶炼</li>
            <li tab_name="gdjhy" data="娱乐/体育/休闲">娱乐/体育/休闲</li>
            <li tab_name="gdjhy" data="媒体/出版/影视/文化传播">媒体/出版/影视/文化传播</li>
            <li tab_name="gdjhy" data="汽车/摩托车">汽车/摩托车</li>
            <li tab_name="gdjhy" data="工艺美术/收藏品/奢侈品">工艺美术/收藏品/奢侈品</li>
            <li tab_name="gdjhy" data="网络游戏">网络游戏</li>
            <li tab_name="gdjhy" data="通信/电信/网络设备">通信/电信/网络设备</li>
            <li tab_name="gdjhy" data="通信/电信运营、增值服务">通信/电信运营、增值服务</li>
            <li tab_name="gdjhy" data="电子技术/半导体/集成电路">电子技术/半导体/集成电路</li>
            <li tab_name="gdjhy" data="基金/证券/期货/投资">基金/证券/期货/投资</li>
            <li tab_name="gdjhy" data="金融/保险/银行">金融/保险/银行</li>
            <li tab_name="gdjhy" data="信托/担保/拍卖/典当">信托/担保/拍卖/典当</li>
            <li tab_name="gdjhy" data="房地产/建筑/建材/工程">房地产/建筑/建材/工程</li>
            <li tab_name="gdjhy" data="家居/室内设计/装饰装潢">家居/室内设计/装饰装潢</li>
            <li tab_name="gdjhy" data="物业管理/商业中心">物业管理/商业中心</li>
            <li tab_name="gdjhy" data="专业服务/咨询(财会/法律/人力资源等)">专业服务/咨询(财会/法律/人力资源等)</li>
            <li tab_name="gdjhy" data="广告/会展/公关">广告/会展/公关</li>
            <li tab_name="gdjhy" data="教育/培训">教育/培训</li>
            <li tab_name="gdjhy" data="租赁服务">租赁服务</li>
            <li tab_name="gdjhy" data="零售/批发">零售/批发</li>
            <li tab_name="gdjhy" data="贸易/进出口">贸易/进出口</li>
            <li tab_name="gdjhy" data="耐用消费品（服饰/纺织/皮革/家具/家电）">耐用消费品（服饰/纺织/皮革/家具/家电）</li>
            <li tab_name="gdjhy" data="快速消费品（食品/饮料/烟酒/日化）">快速消费品（食品/饮料/烟酒/日化）</li>
            <li tab_name="gdjhy" data="外包服务">外包服务</li>
            <li tab_name="gdjhy" data="检验/检测/认证">检验/检测/认证</li>
            <li tab_name="gdjhy" data="中介服务">中介服务</li>
            <li tab_name="gdjhy" data="其他">其他</li>
        </ul>
        <ul class="Gengduoj-t" id="Gengduopr" style="display: none;">
            <li tab_name="gdjpr" data="外资企业">外资企业</li>
            <li tab_name="gdjpr" data="合资企业">合资企业</li>
            <li tab_name="gdjpr" data="民营企业">民营企业</li>
            <li tab_name="gdjpr" data="股份制企业">股份制企业</li>
            <li tab_name="gdjpr" data="集体企业">集体企业</li>
            <li tab_name="gdjpr" data="上市公司">上市公司</li>
            <li tab_name="gdjpr" data="国家机关">国家机关</li>
            <li tab_name="gdjpr" data="事业单位">事业单位</li>
            <li tab_name="gdjpr" data="其他">其他</li>
        </ul>
        <ul class="Gengduoj-t" id="Gengduonum" style="display: none;">
            <li tab_name="gdjnum" data="10人以下">10人以下</li>
            <li tab_name="gdjnum" data="10-50人">10-50人</li>
            <li tab_name="gdjnum" data="50-200人">50-200人</li>
            <li tab_name="gdjnum" data="200-500人">200-500人</li>
            <li tab_name="gdjnum" data="500-1000人">500-1000人</li>
            <li tab_name="gdjnum" data="1000人以上">1000人以上</li>
        </ul>
        <ul class="Gengduoj-t" id="Gengduoedu" style="display: none;">
            <li tab_name="gdjedu" data="不限">不限</li>
            <li tab_name="gdjedu" data="高中">高中</li>
            <li tab_name="gdjedu" data="中专">中专</li>
            <li tab_name="gdjedu" data="大专">大专</li>
            <li tab_name="gdjedu" data="本科">本科</li>
            <li tab_name="gdjedu" data="硕士">硕士</li>
            <li tab_name="gdjedu" data="博士">博士</li>
        </ul>
        <ul class="Gengduoj-t" id="Gengduouptime" style="display: none;">
            <li tab_name="gdjuptime" data="1">今天</li>
            <li tab_name="gdjuptime" data="3">最近3天</li>
            <li tab_name="gdjuptime" data="7">最近7天</li>
            <li tab_name="gdjuptime" data="30">最近一个月</li>
            <li tab_name="gdjuptime" data="90">最近三个月</li>
        </ul>
    </div>
    <!-- End Gengduoj -->

    <!-- Sort 找工作经验-->
    <div class="Sort-eject Sort-height">
        <ul class="Sort-Sort" id="Sort-Sort">
            <li>
                <a href="qy_position.aspx?exp=不限">不限</a>
            </li>
            <li>
                <a href="qy_position.aspx?exp=应届毕业生">应届毕业生</a>
            </li>
            <li>
                <a href="qy_position.aspx?exp=1年以上">1年以上</a>
            </li>
            <li>
                <a href="qy_position.aspx?exp=2年以上">2年以上</a>
            </li>
            <li>
                <a href="qy_position.aspx?exp=3年以上">3年以上</a>
            </li>
            <li>
                <a href="qy_position.aspx?exp=5年以上">5年以上</a>
            </li>
            <li>
                <a href="qy_position.aspx?exp=8年以上">8年以上</a>
            </li>
            <li>
                <a href="qy_position.aspx?exp=10年以上">10年以上</a>
            </li>
        </ul>
    </div>
    <!-- End Sort -->


    <div id="searchhtml" class="mui-page">
        <div class="mui-navbar-inner mui-bar mui-bar-nav">
            <div class="body_wap">
                <header class="header_h">
                    <div class="header_fixed">
                        <div class="header">
                            <div class="header_bg  bg3">
                                <a class="hd-lbtn mui-action-back" href=""><i class="header_top_l"></i></a>
                                <div class="header_h1">
                                    <div class="header_p_z">职位搜索</div>
                                </div>
                            </div>
                        </div>
                    </div>
                </header>
            </div>
        </div>
        <div class="mui-page-content">
            <div class="mui-scroll-wrapper">
                <div class="mui-scroll">
                    <div class="search_body">
                        <div class="wap_search_header">
                            <form method="get" action="#">
                                <input type="hidden" id="type" name="c" value="job" />
                                <div class="wap_search_text">
                                    <input type="text" value="" onkeyup="this.value = this.value.replace(/[,]/g,'');" id="input_search"
                                        name="keyword" class="" placeholder="请输入职位关键字，如：会计...">
                                </div>
                                <div class="wap_search_bth">
                                    <input type="submit" value="搜职位" class="">
                                </div>
                            </form>
                        </div>

                       <%-- <div class="search_history">
                            <div class="search_history_tite">
                                <span class="search_history_li">历史搜索</span>
                                <span class="search_history_shi" style="display: none" id="clearhistory"></span>
                            </div>
                            <div class="search_history_tag_box" id="historylist">
                                <div class="search_history_no">
                                    暂无历史~
                           
                                </div>
                            </div>
                        </div>--%>

                        <div class="search_history">
                            <div class="search_history_tit">热门搜索</div>
                            <div class="search_history_tag_box">
                                <div class="search_history_tag">
                                    <a href="position.aspx?keyword=兼职">
                                        <font color="#">兼职</font>
                                    </a>
                                </div>
                                <div class="search_history_tag">
                                    <a href="position.aspx?keyword=设计">
                                        <font color="#">设计</font>
                                    </a>
                                </div>
                                <div class="search_history_tag">
                                    <a href="position.aspx?keyword=文员">
                                        <font color="#">文员</font>
                                    </a>
                                </div>
                                <div class="search_history_tag">
                                    <a href="position.aspx?keyword=教育">
                                        <font color="#000000">教育</font>
                                    </a>
                                </div>
                                <div class="search_history_tag">
                                    <a href="position.aspx?keyword=销售">
                                        <font color="#">销售</font>
                                    </a>
                                </div>
                                <div class="search_history_tag">
                                    <a href="position.aspx?keyword=老师">
                                        <font color="#">老师</font>
                                    </a>
                                </div>
                                <div class="search_history_tag">
                                    <a href="position.aspx?keyword=专员">
                                        <font color="#">专员</font>
                                    </a>
                                </div>
                                <div class="search_history_tag">
                                    <a href="position.aspx?keyword=助理">
                                        <font color="#">助理</font>
                                    </a>
                                </div>
                                <div class="search_history_tag">
                                    <a href="position.aspx?keyword=客服">
                                        <font color="#">客服</font>
                                    </a>
                                </div>
                                <div class="search_history_tag">
                                    <a href="position.aspx?keyword=会计">
                                        <font color="#">会计</font>
                                    </a>
                                </div>
                                <div class="search_history_tag">
                                    <a href="position.aspx?keyword=工程师">
                                        <font color="#">工程师</font>
                                    </a>
                                </div>
                                <div class="search_history_tag">
                                    <a href="position.aspx?keyword=西点师">
                                        <font color="#">西点师</font>
                                    </a>
                                </div>

                            </div>
                        </div>

                    </div>
                </div>
            </div>
        </div>
    </div>
    <script>
        function clearhis(type) {
            $.post("index.php?c=search&a=del", {
                type: type
            }, function (data) {
                if (data) {
                    layer.open({
                        content: "历史已清除！",
                        time: 2,
                        end: function () {
                            window.location.href = data;
                        }
                    });
                    return false;
                } else {
                    layer.open({
                        content: "操作失败！",
                        time: 2,
                        end: 8
                    });
                    return false;
                }
            });
        }
        $(document).ready(function () {
            var type = $("#type").val();
            $.post("index.html", {
                type: type
            }, function (data) {
                if (data) {
                    var data = eval('(' + data + ')');
                    if (data.hisid) {
                        $("#clearhistory").html("<a href='javascript:void(0);' onclick=\"clearhis('" + data.hisid + "')\">清除历史</a>");
                        $("#clearhistory").show();
                    }
                    if (data.list) {
                        var html = '';
                        $.each(data.list, function () {
                            html += "<div class=\"search_history_tag\"> <a href=\"" + this.url + "\">" + this.key_name + "</a></div>";
                        });
                        $("#historylist").html(html);
                    }
                }
            });
        });
</script>

    <div id="hm_t_undefined" class="hm-t-container">
        <div class="hm-t-go-top" style="display: none;"></div>
    </div>

    <script src="../js/mui.picker.min.js" language="javascript"></script>
    <script src="../js/mui.poppicker.js" language="javascript"></script>
    <script src="../js/city.cache.js" language="javascript"></script>
    <script src="../js/mui.view.js" language="javascript"></script>
    <script src="../js/umeditor.config.js"></script>
    <script src="../js/umeditor.min.js"></script>
    <script src="../js/cominfo.js" language="javascript"></script>
    <script src="../js/category.js" language="javascript"></script>

    <script src="../js/job.cache.js" language="javascript"></script>
    <script src="../js/city.data.js" type="text/javascript" charset="utf-8"></script>
    <script src="../js/job.data.js" type="text/javascript" charset="utf-8"></script>
    <script>
        (function ($, doc) {
            $.init();
            $.ready(function () {
                /**
                 * 获取对象属性的值
                 * @param {Object} obj 对象
                 * @param {String} param 属性名
                 */
                var _getParam = function (obj, param) {
                    return obj[param] || '';
                };
                // 选择区域
                var cityPicker3 = new $.PopPicker({ layer: 3 });
                cityPicker3.setData(cityData3);
                var showCityPickerButton = doc.getElementById('showCityPicker');
                showCityPickerButton.addEventListener('tap', function (event) {
                    cityPicker3.show(function (items) {
                        location.href = "qy_position.aspx?pro=" + _getParam(items[0], 'value') + "&city=" + _getParam(items[1], 'value') + "&three=" + _getParam(items[2], 'value');
                    });
                }, false);
                // 选择职能
                var JobPicker = new $.PopPicker({ layer: 3 });
                JobPicker.setData(jobData);
                var showJobPickerButton = doc.getElementById('showJobPicker');
                showJobPickerButton.addEventListener('tap', function (event) {
                    JobPicker.show(function (items) {
                        location.href = "qy_position.aspx?job=" + _getParam(items[0], 'value') + "&son=" + _getParam(items[1], 'value') + "&post=" + _getParam(items[2], 'value');
                    });
                }, false);
            });
        })(mui, document);
</script>
    <div class="yun_footer">
        <div class="yun_footer_fix">
            <ul class="yun_footer_nav">
                <li class="yun_footer_nav_cur">
                    <a href="index.aspx"><i class="yun_footer_nav_icon yun_footer_nav_home_cur"></i>首页</a>
                </li>
                <li>
                    <a href="qy_resume.aspx"><i class="yun_footer_nav_icon yun_footer_nav_jl"></i>简历</a>
                </li>
                <li>
                    <a href="qy_news.aspx"><i class="yun_footer_nav_icon yun_footer_nav_fx"></i>消息</a>
                     <%=news%>
                </li>
                <li>
                    <a href="qy_mine.aspx"><i class="yun_footer_nav_icon yun_footer_nav_user"></i>我的</a>
                </li>
            </ul>
        </div>
     </div>
</body>


</html>