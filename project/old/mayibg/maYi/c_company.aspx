<%@ Page Language="C#" AutoEventWireup="true" CodeFile="c_company.aspx.cs" Inherits="c_company" %>

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
    <div class="body_wap">
        <header class="header_h">
            <div class="header_fixed">
                <div class="header">
                    <div class="header_bg  bg3">
                        <a class="hd-lbtn " href="javascript:history.back();"><i class="header_top_l"></i></a>
                        <div class="header_h1">
                            <div class="header_fx_search">
                                <form method="get" action="">
                                    <input type="hidden" name="c" value="company">
                                    <div class="formFiled">
                                        <input type="text" value="" name="keyword" class="input_search" placeholder="请输入企业关键字,如：有限公司...">
                                        <span class="formFiled_bth">
                                            <input type="submit" value=" " class=" "></span>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </header>
    </div>
    <section>
        <div class="searchOptions clearfix">
            <ul class="searchOptions_list">
                <li class="grade popup">
                    <a href="javascript:void(0);" class="searchOptions_list_a">
                        <span class="job_ov" id='showCityPicker'>区域</span>
                        <i class="searchOptions_icon"></i>
                    </a>
                </li>
                <li class="Sorthy popup" data-pop="Sorthy"><a href="javascript:void(0);" class="searchOptions_list_a"><span class="job_ov">行业</span><i class="searchOptions_icon"></i></a></li>
                <li class="Sortpr popup" data-pop="Sortpr"><a href="javascript:void(0);" class="searchOptions_list_a"><span class="job_ov">性质</span><i class="searchOptions_icon"></i></a></li>
                <li class="Sortmun popup" data-pop="Sortmun" style="border-right: none;"><a href="javascript:void(0);" class="searchOptions_list_a"><span class="job_ov">规模</span><i class="searchOptions_icon"></i></a></li>
                <input type="hidden" id="searchurl" value="c=company">
                <input type="hidden" id="waptype" value="1">
            </ul>
        </div>
    </section>
    <div class="clear"></div>
    <div class="warp_content clear">
        <section>
            <%=notice%>
        </section>
        <div>
        </div>
    </div>
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


    <!-- Sorthy 行业弹出框-->
    <div class="Sorthy-eject Sorthy-height">
        <ul class="Sorthy-Sorthy" id="Sorthy-Sorthy">
            <li>
                <a href="c_company.aspx?hy=互联网/电子商务">互联网/电子商务</a>
            </li>
            <li>
                <a href="c_company.aspx?hy=IT服务（系统/数据/维护）">IT服务（系统/数据/维护）</a>
            </li>
            <li>
                <a href="c_company.aspx?hy=计算机软件/硬件">计算机软件/硬件</a>
            </li>
            <li>
                <a href="c_company.aspx?hy=交通/运输/物流">交通/运输/物流</a>
            </li>
            <li>
                <a href="c_company.aspx?hy=航空/航天研究与制造">航空/航天研究与制造</a>
            </li>
            <li>
                <a href="c_company.aspx?hy=医疗设备/器械">医疗设备/器械</a>
            </li>
            <li>
                <a href="c_company.aspx?hy=医药/生物工程">医药/生物工程</a>
            </li>
            <li>
                <a href="c_company.aspx?hy=办公用品及设备">办公用品及设备</a>
            </li>
            <li>
                <a href="c_company.aspx?hy=印刷/包装/造纸">印刷/包装/造纸</a>
            </li>
            <li>
                <a href="c_company.aspx?hy=仪器仪表及工业自动化">仪器仪表及工业自动化</a>
            </li>
            <li>
                <a href="c_company.aspx?hy=加工制造（原料加工/模具）">加工制造（原料加工/模具）</a>
            </li>
            <li>
                <a href="c_company.aspx?hy=大型设备/机电设备/重工业">大型设备/机电设备/重工业</a>
            </li>
            <li>
                <a href="c_company.aspx?hy=医疗/护理/美容/保健">医疗/护理/美容/保健</a>
            </li>
            <li>
                <a href="c_company.aspx?hy=酒店/餐饮">酒店/餐饮</a>
            </li>
            <li>
                <a href="c_company.aspx?hy=旅游/度假">旅游/度假</a>
            </li>
            <li>
                <a href="c_company.aspx?hy=农/林/牧/渔">农/林/牧/渔</a>
            </li>
            <li>
                <a href="c_company.aspx?hy=学术/科研">学术/科研</a>
            </li>
            <li>
                <a href="c_company.aspx?hy=政府/公共事业/非盈利机构">政府/公共事业/非盈利机构</a>
            </li>
            <li>
                <a href="c_company.aspx?hy=环保">环保</a>
            </li>
            <li>
                <a href="c_company.aspx?hy=电气/电力/水利">电气/电力/水利</a>
            </li>
            <li>
                <a href="c_company.aspx?hy=石油/石化/化工">石油/石化/化工</a>
            </li>
            <li>
                <a href="c_company.aspx?hy=能源/矿产/采掘/冶炼">能源/矿产/采掘/冶炼</a>
            </li>
            <li>
                <a href="c_company.aspx?hy=娱乐/体育/休闲">娱乐/体育/休闲</a>
            </li>
            <li>
                <a href="c_company.aspx?hy=媒体/出版/影视/文化传播">媒体/出版/影视/文化传播</a>
            </li>
            <li>
                <a href="c_company.aspx?hy=汽车/摩托车">汽车/摩托车</a>
            </li>
            <li>
                <a href="c_company.aspx?hy=工艺美术/收藏品/奢侈品">工艺美术/收藏品/奢侈品</a>
            </li>
            <li>
                <a href="c_company.aspx?hy=网络游戏">网络游戏</a>
            </li>
            <li>
                <a href="c_company.aspx?hy=通信/电信/网络设备">通信/电信/网络设备</a>
            </li>
            <li>
                <a href="c_company.aspx?hy=通信/电信运营、增值服务">通信/电信运营、增值服务</a>
            </li>
            <li>
                <a href="c_company.aspx?hy=电子技术/半导体/集成电路">电子技术/半导体/集成电路</a>
            </li>
            <li>
                <a href="c_company.aspx?hy=基金/证券/期货/投资">基金/证券/期货/投资</a>
            </li>
            <li>
                <a href="c_company.aspx?hy=金融/保险/银行">金融/保险/银行</a>
            </li>
            <li>
                <a href="c_company.aspx?hy=信托/担保/拍卖/典当">信托/担保/拍卖/典当</a>
            </li>
            <li>
                <a href="c_company.aspx?hy=房地产/建筑/建材/工程">房地产/建筑/建材/工程</a>
            </li>
            <li>
                <a href="c_company.aspx?hy=家居/室内设计/装饰装潢">家居/室内设计/装饰装潢</a>
            </li>
            <li>
                <a href="c_company.aspx?hy=物业管理/商业中心">物业管理/商业中心</a>
            </li>
            <li>
                <a href="c_company.aspx?hy=专业服务/咨询(财会/法律/人力资源等)">专业服务/咨询(财会/法律/人力资源等)</a>
            </li>
            <li>
                <a href="c_company.aspx?hy=广告/会展/公关">广告/会展/公关</a>
            </li>
            <li>
                <a href="c_company.aspx?hy=教育/培训">教育/培训</a>
            </li>
            <li>
                <a href="c_company.aspx?hy=租赁服务">租赁服务</a>
            </li>
            <li>
                <a href="c_company.aspx?hy=零售/批发">零售/批发</a>
            </li>
            <li>
                <a href="c_company.aspx?hy=贸易/进出口">贸易/进出口</a>
            </li>
            <li>
                <a href="c_company.aspx?hy=耐用消费品（服饰/纺织/皮革/家具/家电）">耐用消费品（服饰/纺织/皮革/家具/家电）</a>
            </li>
            <li>
                <a href="c_company.aspx?hy=快速消费品（食品/饮料/烟酒/日化）">快速消费品（食品/饮料/烟酒/日化）</a>
            </li>
            <li>
                <a href="c_company.aspx?hy=外包服务">外包服务</a>
            </li>
            <li>
                <a href="c_company.aspx?hy=检验/检测/认证">检验/检测/认证</a>
            </li>
            <li>
                <a href="c_company.aspx?hy=中介服务">中介服务</a>
            </li>
            <li>
                <a href="c_company.aspx?hy=其他">其他</a>
            </li>
        </ul>
    </div>
    <!-- End Sorthy -->

    <!-- Sortpr 企业性质弹出框-->
    <div class="Sortpr-eject Sortpr-height">
        <ul class="Sortpr-Sortpr" id="Sortpr-Sortpr">
            <li>
                <a href="c_company.aspx?pr=外资企业">外资企业</a>
            </li>
            <li>
                <a href="c_company.aspx?pr=合资企业">合资企业</a>
            </li>
            <li>
                <a href="c_company.aspx?pr=民营企业">民营企业</a>
            </li>
            <li>
                <a href="c_company.aspx?pr=股份制企业">股份制企业</a>
            </li>
            <li>
                <a href="c_company.aspx?pr=集体企业">集体企业</a>
            </li>
            <li>
                <a href="c_company.aspx?pr=上市公司">上市公司</a>
            </li>
            <li>
                <a href="c_company.aspx?pr=国家机关">国家机关</a>
            </li>
            <li>
                <a href="c_company.aspx?pr=事业单位">事业单位</a>
            </li>
            <li>
                <a href="c_company.aspx?pr=其他">其他</a>
            </li>
        </ul>
    </div>
    <!-- End Sortpr -->

    <!-- Sortmun 企业规模弹出框-->
    <div class="Sortmun-eject Sortmun-height">
        <ul class="Sortmun-Sortmun" id="Sortmun-Sortmun">
            <li>
                <a href="c_company.aspx?mun=10人以下">10人以下</a>
            </li>
            <li>
                <a href="c_company.aspx?mun=10-50人">10-50人</a>
            </li>
            <li>
                <a href="c_company.aspx?mun=50-200人">50-200人</a>
            </li>
            <li>
                <a href="c_company.aspx?mun=200-500人">200-500人</a>
            </li>
            <li>
                <a href="c_company.aspx?mun=500-1000人">500-1000人</a>
            </li>
            <li>
                <a href="c_company.aspx?mun=1000人以上">1000人以上</a>
            </li>
        </ul>
    </div>
    <!-- End Sortmun -->

    <script src="js/mui.picker.min.js" language="javascript"></script>
    <script src="js/mui.poppicker.js" language="javascript"></script>
    <script src="js/city.cache.js" language="javascript"></script>
    <script src="js/mui.view.js" language="javascript"></script>
    <script src="js/umeditor.config.js"></script>
    <script src="js/umeditor.min.js"></script>
    <script src="js/cominfo.js" language="javascript"></script>
    <script src="js/category.js" language="javascript"></script>
    <script src="js/job.cache.js" language="javascript"></script>
    <script src="js/city.data.js" type="text/javascript" charset="utf-8"></script>
    <script src="js/job.data.js" type="text/javascript" charset="utf-8"></script>
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
                        location.href = "c_company.aspx?pro=" + _getParam(items[0], 'value') + "&city=" + _getParam(items[1], 'value') + "&three=" + _getParam(items[2], 'value');
                    });
                }, false);
                // 选择职能
                var JobPicker = new $.PopPicker({ layer: 3 });
                JobPicker.setData(jobData);
                var showJobPickerButton = doc.getElementById('showJobPicker');
                showJobPickerButton.addEventListener('tap', function (event) {
                    JobPicker.show(function (items) {
                        location.href = "position.aspx?job=" + _getParam(items[0], 'value') + "&son=" + _getParam(items[1], 'value') + "&post=" + _getParam(items[2], 'value');
                    });
                }, false);
            });
        })(mui, document);
</script>

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
</body>


</html>
