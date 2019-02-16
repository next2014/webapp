<%@ Page Language="C#" AutoEventWireup="true" CodeFile="qy_info2.aspx.cs" Inherits="pages_qy_info2" %>

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
    <script type="text/javascript">
        function UserAddVerify() {
            var Linkmail = document.getElementById("linkmail").value;
            if (Linkmail == "" || Linkmail == null) {
                alert("请填写联系邮箱");
                return false;
            }
            return true;
        }

        function A() {
            var Name = document.getElementById("name").value;
            var Hy = document.getElementById("hy").value;
            var Pr = document.getElementById("pr").value;
            var Mun = document.getElementById("mun").value;
            var Provinceid = document.getElementById("provinceid").value;
            var Address = document.getElementById("address").value;
            var Linkman = document.getElementById("linkman").value;
            var Linktel = document.getElementById("linktel").value;
            var Content = document.getElementById("content").value;


            if (Name == "" || Name == null) {
                alert("请填写企业名称");
                return false;
            }
            else if (Hy == "" || Hy == null) {
                alert("请选择从事行业");
                return false;
            }
            else if (Pr == "" || Pr == null) {
                alert("请选择企业性质");
                return false;
            }
            else if (Mun == "" || Mun == null) {
                alert("请选择企业规模");
                return false;
            }
            else if (Provinceid == "" || Provinceid == null) {
                alert("请选择所在地");
                return false;
            }
            else if (Address == "" || Address == null) {
                alert("请填写公司地址");
                return false;
            }
            else if (Linkman == "" || Linkman == null) {
                alert("请填写联系人");
                return false;
            }
            else if (Linktel == "" || Linktel == null) {
                alert("请填写手机号码");
                return false;
            }
            else if (Linktel == "") {
                alert("请填写手机号码");
                return false;
            }
            else if (Content == "" || Content == null) {
                alert("请输入企业简介");
                return false;
            }
            var hidde_A = document.getElementById("A");
            hidde_A.style.display = "none";
            var hidde_B = document.getElementById("B");
            hidde_B.style.display = "block";
        }

        function B() {
            var hidde_B = document.getElementById("B");
            hidde_B.style.display = "none";
            var hidde_C = document.getElementById("main");
            hidde_C.style.display = "block";
        }

        function C() {
            var hidde_C = document.getElementById("main");
            hidde_C.style.display = "none";
            var hidde_B = document.getElementById("B");
            hidde_B.style.display = "block";
        }

        function D() {

        }
    </script>

</head>
<body class="mui-ios mui-ios-11 mui-ios-11-0" spellcheck="false">
    <form runat="server">
        <script src="../js/jquery-1.8.0.min.js" language="javascript"></script>
        <script src="../js/public.js" language="javascript"></script>
        <script src="../js/mui.picker.js" language="javascript "></script>
        <script src="../js/mui.poppicker.js" language="javascript "></script>
        <script src="../js/reg_ajax.js" charset="utf-8" language="javascript"></script>
        <script src="../js/mui.min.js" language="javascript"></script>
        <script src="../js/mui.view.js" language="javascript"></script>
        <script src="../js/binding.js" language="javascript"></script>
        <script src="../js/compress.js" language="javascript"></script>
        <header>
            <div class="header_bg bg3">
                <a class="hd-lbtn" href="javascript:history.back()"><i class="header_top_l iconfont"></i></a>
                <div class="header_h1">基本信息</div>
            </div>
        </header>
     <div class="header_navlist">
        <a href="../c_login.aspx" id=""><i class="naviconfont"></i></a>
    </div>
        <link rel="stylesheet" href="../css/mui.picker.min.css" type="text/css">
        <link rel="stylesheet" href="../css/mui.poppicker.css" type="text/css">
        <link rel="stylesheet" href="../css/style.css" type="text/css">
        <link rel="stylesheet" href="../css/umeditor.min.css" type="text/css">
        <link rel="stylesheet" href="../css/cropper.css" type="text/css">
        <script src="../js/cropper.js" language="javascript"></script>
        <script src="../js/compress.js" language="javascript"></script>
        <div id="app" class="mui-views">
            <div class="mui-view">
                <div class="mui-pages"></div>
            </div>
        </div>
        <!--页面主结构结束-->
        <!--单页面开始-->
        <div class="mui-pages" id="A" style="display: block">
            <div class="mui-page mui-page-center">
                <!--页面主内容区开始-->
                <div class="mui-page-content">
                    <div class="" data-scroll="2">
                        <div class="mui-scroll" style="transform: translate3d(0px, 0px, 0px) translateZ(0px);">
                            <ul class="yunset_list">
                                <li>
                                    <a href="#logohtml" class="yunset_list_max">
                                        <span class="yunset_list_name">企业logo</span>
                                        <span class="yunset_list_tx ">
                                            <img id="logopic" src="images/14906489056.PNG" style="border-radius: 0px; width: 40px; height: 40px;" /></span>
                                    </a>
                                </li>
                            </ul>

                            <ul class="yunset_list mt15">
                                <li class="yunset_list_text"><span class="yunset_list_name">企业名称 </span><span class="yunset_list_commentary">
                                    <input type="text" name="name" id="name" runat="server" value="" placeholder="请填写企业名称" />
                                </span>
                                </li>
                            </ul>
                            <ul class="yunset_list mt15">
                                <li class="yunset_list_select"><span class="yunset_list_name">从事行业</span><span class="yunset_list_commentary">
                                    <button id="hyPicker"  runat="server" class="mui-btn mui-btn-block" type="button" data-hy="">请选择</button>
                                    <input type="hidden" id="hy" runat="server" name="hy" value="" />
                                </span></li>
                                <li class="yunset_list_select"><span class="yunset_list_name">企业性质</span><span class="yunset_list_commentary">
                                    <button id="prComPicker" class="mui-btn mui-btn-block" type="button" data-pr="" runat="server">请选择</button>
                                    <input type="hidden" id="pr" name="pr" runat="server" value="" />
                                </span></li>
                                <li class="yunset_list_select"><span class="yunset_list_name">企业规模</span><span class="yunset_list_commentary">
                                    <button id="munComPicker" class="mui-btn mui-btn-block" type="button" data-mun="" runat="server">请选择</button>
                                    <input type="hidden" id="mun" name="mun" runat="server" value="" />
                                </span></li>
                                <li class="yunset_list_select"><span class="yunset_list_name">所在地</span><span class="yunset_list_commentary">
                                    <button id="cityPicker" runat="server" class="mui-btn mui-btn-block" type="button" data-provinceid="" data-cityid="" data-three_cityid="">请选择</button>
                                    <input type="hidden" id="provinceid" name="provinceid" runat="server" value="" />
                                    <input type="hidden" id="cityid" name="cityid" runat="server" value="" />
                                    <input type="hidden" id="three_cityid" name="three_cityid" value="" runat="server" />
                                </span></li>
                                <li class="yunset_list_text"><span class="yunset_list_name">公司地址</span><span class="yunset_list_commentary">
                                    <input type="text" name="address" id="address" value="" runat="server" placeholder="请填写公司地址" />
                                </span></li>
                            </ul>

                            <ul class="yunset_list mt15">
                                <li class="yunset_list_text"><span class="yunset_list_name">联 系 人</span><span class="yunset_list_commentary">
                                    <input type="text" name="linkman" id="linkman" value="" runat="server" placeholder="请填写联系人" /></span></li>
                                <li class="yunset_list_text"><span class="yunset_list_name">联系手机</span><span class="yunset_list_commentary">
                                    <input type="text" name="linktel" id="linktel" value="" runat="server" onkeyup="this.value=this.value.replace(/[^0-9]/g,'')" class="" placeholder="请填写手机号码" />
                                </span></li>
                                <li class="yunset_list_text"><span class="yunset_list_name">固定电话</span><span class="yunset_list_commentary">
                                    <input type="text" name="linkphone" id="linkphone" value="" runat="server" onkeyup="this.value=this.value.replace(/[^0-9-]/g,'')" class="" placeholder="请填写固定电话" />
                                </span></li>
                            </ul>
                            <ul class="yunset_list mt15">
                                <li class="yunset_list_text">
                                    <span class="yunset_list_name" style="height: 150px">企业简介</span>
                                    <br />
                                    <br />
                                </li>
                            </ul>
                            <div class="yun_wap_addresume_box_group">
                                <div class="yun_wap_addresume_box_control_text">
                                    <textarea name="content" runat="server" id="content" style="height: 200px;" class="yun_wap_addresume_texttextAreaMsg" placeholder="请输入企业简介"></textarea>
                                </div>
                            </div>
                            <div class="yunset_bth_box" style="background: transparent; border: none; padding: 0px; padding-bottom: 30px;">
                                <a onclick="A()" class="yun_wap_info_brief_tit_bc addnext">下一步</a>
                            </div>
                            <br />
                            <br />
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div id="B" class="mui-pages" style="display: none">
            <div class="mui-page-content">
                <div class="mui-scroll-wrapper">
                    <div class="mui-scroll" style="transform: translate3d(0px, 0px, 0px) translateZ(0px);">
                        <ul class="yunset_list mt15">
                            <li>
                                <a onclick="B()"><span class="yunset_list_name">公司福利</span><span class="yunset_list_commentary yunset_list_js" id="welfareshow" runat="server">请选择</span></a>
                            </li>
                            <li class="yunset_list_text">
                                <span class="yunset_list_name">企业邮箱</span>
                                <span class="yunset_list_commentary">
                                    <div class="">
                                        <input type="text" name="linkmail" id="linkmail" runat="server" value="" class="" placeholder="请填写联系邮箱，用于接受简历">
                                    </div>
                                </span>
                            </li>
                            <li>
                                <span class="yunset_list_name" style="width: 150px">公司二维码<em class="yunset_xttip">(选填)</em></span>
                                <span class="yunset_list_commentary " id="previewshow">
                                    <img id="previewimg" src="../images/yun_m_ewm.png" onerror="showImgDelay(this,'../images/yun_m_ewm.png',2);" style="border-radius: 0px; width: 20px; height: 20px;">
                                </span>
                                <div class="yunset_list_file">
                                    <input type="file" id="pic" name="pic" onchange="previewImage(this,'preview')" accept="image/*" />
                                </div>
                                <input type='hidden' name='preview' value='' id='preview' runat="server">
                            </li>
                            <li class="yunset_list_text"><span class="yunset_list_name">企业网址<em class="yunset_xttip">(选填)</em></span><span
                                class="yunset_list_commentary">
                                <input type="text" name="website" id="website" value="" placeholder="请填写企业网址" style="width: 95%" runat="server">
                            </span></li>
                            <li class="yunset_list_text"><span class="yunset_list_name" style="width: 150px">联系人职位<em class="yunset_xttip">(选填)</em></span><span
                                class="yunset_list_commentary">
                                <input type="text" name="linkjob" id="linkjob" value="" placeholder="请填写联系人职位" runat="server">
                            </span></li>
                            <li class="yunset_list_text"><span class="yunset_list_name" style="width: 150px">联系人QQ<em class="yunset_xttip">(选填)</em></span><span
                                class="yunset_list_commentary">
                                <input type="text" name="linkqq" id="linkqq" value="" placeholder="请填写联系人QQ" runat="server">
                            </span></li>
                            <li class="yunset_list_text"><span class="yunset_list_name">公交站点<em class="yunset_xttip">(选填)</em></span><span
                                class="yunset_list_commentary">
                                <input type="text" name="busstops" id="busstops" value="" placeholder="请填写公交站点" runat="server">
                            </span></li>
                        </ul>
                        <ul class="yunset_list mt15">
                            <li><span class="yunset_list_name">创办时间<em class="yunset_xttip">(选填)</em></span><span class="yunset_list_commentary">
                                <button id='sdatePicker' runat="server" data-options='{"type":"date","value":"2018-1-1","beginYear":1900,"endYear":2018}'
                                    class="btn mui-btn mui-btn-block" type="button">
                                    请选择创办时间</button>
                                <input type="hidden" id="sdate" name="sdate" value="" runat="server">
                            </span></li>

                            <li>
                                <a>
                                    <span class="yunset_list_name">注册资金<em class="yunset_xttip">(选填)</em></span>
                                </a>

                                <div class="yun_info_fl_zj">
                                    <div class="yun_info_fl_zj_c">
                                        <button id='moneytypeComPicker' class="mui-btn mui-btn-block"
                                            type='button' data-moneytype="1">
                                            人民币</button><input type="hidden" id="moneytype" name="moneytype" value="1" runat="server">
                                    </div>
                                    <input type="text" id="money" name="money" value="" class="yun_wap_addtel_a" onkeyup="this.value=this.value.replace(/[^0-9]/g,'')"
                                        placeholder="注册资金" runat="server">
                                    <span class="yun_info_fl_zj_dw moneyname">万元</span>
                                </div>

                            </li>

                        </ul>
                        <div class="yunset_bth_box" style="background: transparent; border: none;">
                                            <%-- <button id="submit" class="mui-btn mui-btn-block mui-btn-primary">保 存</button>--%>
                                            <asp:Button ID="Button1" runat="server" Text="保 存" CssClass="mui-btn mui-btn-block mui-btn-primary" Height="45px" OnClick="Button1_Click" />
                            <a class="yun_wap_info_brief_tit_bc" style="background: #f8f8f8; border: 1px solid #eee; color: #333">返回上一步</a>
                             
                                        </div>

 
                    </div>

                </div>
            </div>
        </div>

        <div id="main" class="mui-page" style="display: none">
            <!--页面主内容区开始-->
            <div id="welfarehtml" class="mui-page">
                <div class="mui-page-content">
                    <div class="mui-scroll-wrapper">
                        <div class="mui-scroll">
                            <div class="yun_info_fl">
                                <div class="yun_info_fl_c">
                                    <div id="container">
                                        <div class="yun_wap_addresume_box_nexttit">福利待遇</div>

                                        <div class="yun_info_fl_list">
                                            <div class="mui-input-row mui-checkbox">
                                                <label>法定节假日 </label>
                                                <input name="welfare[]" id="fdjjr" value="98" runat="server" type="checkbox" class="welfare" data-name="法定节假日">
                                            </div>
                                        </div>

                                        <div class="yun_info_fl_list">
                                            <div class="mui-input-row mui-checkbox">
                                                <label>休假制度 </label>
                                                <input name="welfare[]" value="97" type="checkbox" class="welfare" data-name="休假制度">
                                            </div>
                                        </div>

                                        <div class="yun_info_fl_list">
                                            <div class="mui-input-row mui-checkbox">
                                                <label>奖励计划 </label>
                                                <input name="welfare[]" value="95" type="checkbox" class="welfare" data-name="奖励计划">
                                            </div>
                                        </div>

                                        <div class="yun_info_fl_list">
                                            <div class="mui-input-row mui-checkbox">
                                                <label>年终奖金 </label>
                                                <input name="welfare[]" value="94" type="checkbox" class="welfare" data-name="年终奖金">
                                            </div>
                                        </div>

                                        <div class="yun_info_fl_list">
                                            <div class="mui-input-row mui-checkbox">
                                                <label>综合补贴 </label>
                                                <input name="welfare[]" value="93" type="checkbox" class="welfare" data-name="综合补贴">
                                            </div>
                                        </div>

                                        <div class="yun_info_fl_list">
                                            <div class="mui-input-row mui-checkbox">
                                                <label>包吃住 </label>
                                                <input name="welfare[]" value="92" type="checkbox" class="welfare" data-name="包吃住">
                                            </div>
                                        </div>

                                        <div class="yun_info_fl_list">
                                            <div class="mui-input-row mui-checkbox">
                                                <label>五险一金 </label>
                                                <input name="welfare[]" value="91" type="checkbox" class="welfare" data-name="五险一金">
                                            </div>
                                        </div>

                                        <div class="yun_info_fl_list">
                                            <div class="mui-input-row mui-checkbox">
                                                <label>三险一金 </label>
                                                <input name="welfare[]" value="90" type="checkbox" class="welfare" data-name="三险一金">
                                            </div>
                                        </div>

                                        <div class="yun_info_fl_list">
                                            <div class="mui-input-row mui-checkbox">
                                                <label>销售奖金 </label>
                                                <input name="welfare[]" value="96" type="checkbox" class="welfare" data-name="销售奖金">
                                            </div>
                                        </div>

                                    </div>
                                    <div class="yun_info_fl_zdy_tip">您也可以自定义福利</div>
                                    <div class="yun_info_fl_zdy">
                                        <input type="text" value="" class="" tabindex="1000" id="addwelfare" placeholder="请输入福利名称">
                                        <div class="yun_info_fl_zdy_tj">
                                            <button type="button" class="addwelfarebox" onclick="D()">+ 添加福利</button>
                                        </div>
                                    </div>
                                    <div class="">
                                        <a class="yun_wap_info_brief_tit_bc mui-action-back">确定</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>


        <!--页面主内容区结束-->

        <!--单页面结束-->
        <script src="../js/mui.picker.min.js" language="javascript"></script>
        <script src="../js/mui.poppicker.js" language="javascript"></script>
        <script src="../js/city.cache.js" language="javascript"></script>
        <script src="../js/mui.view.js" language="javascript"></script>
        <script src="../js/umeditor.config.js"></script>
        <script src="../js/umeditor.min.js"></script>
        <script src="../js/cominfo.js" language="javascript"></script>
        <script src="../js/category.js" language="javascript"></script>
        <script language="javascript">
            $(document).ready(function () {
                if (document.getElementById('main')) {
                    document.getElementById('main').addEventListener('touchmove', function (e) {
                        e.preventDefault();
                    }, {
                        passive: false
                    });
                }
                if (document.getElementById('addnexthtml')) {
                    document.getElementById('addnexthtml').addEventListener('touchmove', function (e) {
                        e.preventDefault();
                    }, {
                        passive: false
                    });
                }
            })
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
            var prData = [];
            ''
            prData.push({
                value: '外资企业',
                text: '外资企业'
            })
            ''
            prData.push({
                value: '合资企业',
                text: '合资企业'
            })
            ''
            prData.push({
                value: '民营企业',
                text: '民营企业'
            })
            ''
            prData.push({
                value: '股份制企业',
                text: '股份制企业'
            })
            ''
            prData.push({
                value: '集体企业',
                text: '集体企业'
            })
            ''
            prData.push({
                value: '上市公司',
                text: '上市公司'
            })
            ''
            prData.push({
                value: '国家机关',
                text: '国家机关'
            })
            ''
            prData.push({
                value: '事业单位',
                text: '事业单位'
            })
            ''
            prData.push({
                value: '其他',
                text: '其他'
            })
            ''
            var munData = [];
            ''
            munData.push({
                value: '10人以下',
                text: '10人以下'
            })
            ''
            munData.push({
                value: '10-50人',
                text: '10-50人'
            })
            ''
            munData.push({
                value: '50-200人',
                text: '50-200人'
            })
            ''
            munData.push({
                value: '200-500人',
                text: '200-500人'
            })
            ''
            munData.push({
                value: '500-1000人',
                text: '500-1000人'
            })
            ''
            munData.push({
                value: '1000人以上',
                text: '1000人以上'
            })
            ''
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
    </form>
</body>
</html>

