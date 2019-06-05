<%@ Page Language="C#" AutoEventWireup="true" CodeFile="qy_lookResume.aspx.cs" Inherits="pages_qy_lookResume" %>

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
</head>
<body class="mui-ios mui-ios-11 mui-ios-11-0" spellcheck="false">
    <header>
    <div class="header_bg bg3">
        <a class="hd-lbtn " href="javascript:history.back();"><i class="header_top_l iconfont"></i></a>
        <div class="header_h1">浏览简历</div>
    </div>
</header>
<section class="wap_member">
    <div class="wap_member_comp_h1"><span>浏览简历</span></div>
    <div class="com_member_hr">
        <div class="com_member_hr_name">
            <a href="qy_resume_show.html" class="wap_member_com_name  com_member_hr_cblue">党鹏博</a>
        </div>
        <div class="com_member_user_box">
            <div class="com_member_hr_tj">
                <div class="com_member_hr_p1">
                    <span class="member_c9">年龄：</span> 25 &nbsp;&nbsp;&nbsp;
                    <span class="member_c9">经验：</span>1年以上 &nbsp;&nbsp;&nbsp;
                    <span class="member_c9">学历：</span>本科
                    <div class="com_member_hr_p1"><span class="member_c9">意向职位：</span>兼职/临时</div>
                </div>
            </div>

            <div class="com_member_hr_p1">
                <span class="member_c9">浏览日期：2018-11-30 </span>
            </div>
        </div>
        <div class="com_member_hr_cz">
            <a href="javascript:void(0)" onclick="layer_del('确定要删除？','index.php?c=lookresumedel&id=1419')" class="yun_member_hr_bth">删除</a>
            <a href="javascript:void(0);" uid="1997" username="党鹏博" class="yun_member_hr_bth sq_resume"> 邀请面试</a>
        </div>
    </div>
    <div class="com_member_hr">
        <div class="com_member_hr_name">
            <a href="qy_resume_show.html" class="wap_member_com_name  com_member_hr_cblue">卢日华</a>
        </div>
        <div class="com_member_user_box">
            <div class="com_member_hr_tj">
                <div class="com_member_hr_p1">
                    <span class="member_c9">年龄：</span> 22 &nbsp;&nbsp;&nbsp;
                    <span class="member_c9">经验：</span>应届毕业生 &nbsp;&nbsp;&nbsp;
                    <span class="member_c9">学历：</span>大专
                    <div class="com_member_hr_p1"><span class="member_c9">意向职位：</span>行政/后勤/文秘</div>
                </div>
            </div>
            <div class="com_member_hr_p1">
                <span class="member_c9">浏览日期：2018-11-28 </span>
            </div>
        </div>
        <div class="com_member_hr_cz">
            <a href="javascript:void(0)" onclick="layer_del('确定要删除？','index.php?c=lookresumedel&id=1417')" class="yun_member_hr_bth">删除</a>
            <a href="javascript:void(0);" uid="431" username="卢日华" class="yun_member_hr_bth sq_resume"> 邀请面试</a>
        </div>
    </div>
    <div class="com_member_hr">
        <div class="com_member_hr_name">
            <a href="qy_resume_show.html" class="wap_member_com_name  com_member_hr_cblue">彭红君</a>
        </div>
        <div class="com_member_user_box">
            <div class="com_member_hr_tj">
                <div class="com_member_hr_p1">
                    <span class="member_c9">年龄：</span> 41 &nbsp;&nbsp;&nbsp;
                    <span class="member_c9">经验：</span>10年以上 &nbsp;&nbsp;&nbsp;
                    <span class="member_c9">学历：</span>高中
                    <div class="com_member_hr_p1"><span class="member_c9">意向职位：</span>销售代表</div>
                </div>
            </div>
            <div class="com_member_hr_p1">
                <span class="member_c9">浏览日期：2018-11-28 </span>
            </div>
        </div>
        <div class="com_member_hr_cz">
            <a href="javascript:void(0)" onclick="layer_del('确定要删除？','index.php?c=lookresumedel&id=1408')" class="yun_member_hr_bth">删除</a>
            <a href="javascript:void(0);" uid="2101" username="彭红君" class="yun_member_hr_bth sq_resume"> 邀请面试</a>
        </div>
    </div>
    <div class="com_member_hr">
        <div class="com_member_hr_name">
            <a href="qy_resume_show.html" class="wap_member_com_name  com_member_hr_cblue">胡苗</a>
        </div>
        <div class="com_member_user_box">
            <div class="com_member_hr_tj">
                <div class="com_member_hr_p1">
                    <span class="member_c9">年龄：</span> 21 &nbsp;&nbsp;&nbsp;
                    <span class="member_c9">经验：</span>3年以上 &nbsp;&nbsp;&nbsp;
                    <span class="member_c9">学历：</span>中专
                    <div class="com_member_hr_p1"><span class="member_c9">意向职位：</span>餐饮/娱乐管理</div>
                </div>
            </div>
            <div class="com_member_hr_p1">
                <span class="member_c9">浏览日期：2018-11-27 </span>
            </div>
        </div>
        <div class="com_member_hr_cz">
            <a href="javascript:void(0)" onclick="layer_del('确定要删除？','index.php?c=lookresumedel&id=1406')" class="yun_member_hr_bth">删除</a>
            <a href="javascript:void(0);" uid="2100" username="胡苗" class="yun_member_hr_bth sq_resume"> 邀请面试</a>
        </div>
    </div>

    <div class="com_member_hr">
        <div class="com_member_hr_name">
            <a href="qy_resume_show.html" class="wap_member_com_name  com_member_hr_cblue">彭婷婷</a>
        </div>
        <div class="com_member_user_box">
            <div class="com_member_hr_tj">
                <div class="com_member_hr_p1">
                    <span class="member_c9">年龄：</span> 22 &nbsp;&nbsp;&nbsp;
                    <span class="member_c9">经验：</span>2年以上 &nbsp;&nbsp;&nbsp;
                    <span class="member_c9">学历：</span>大专
                    <div class="com_member_hr_p1"><span class="member_c9">意向职位：</span>客服服务专员/助理</div>
                </div>
            </div>
            <div class="com_member_hr_p1">
                <span class="member_c9">浏览日期：2018-11-27 </span>
            </div>
        </div>
        <div class="com_member_hr_cz">
            <a href="javascript:void(0)" onclick="layer_del('确定要删除？','index.php?c=lookresumedel&id=1399')" class="yun_member_hr_bth">删除</a>
            <a href="javascript:void(0);" uid="1955" username="彭婷婷" class="yun_member_hr_bth sq_resume"> 邀请面试</a>
        </div>
    </div>

    <div class="com_member_hr">
        <div class="com_member_hr_name">
            <a href="qy_resume_show.html" class="wap_member_com_name  com_member_hr_cblue">卢小龙</a>
        </div>
        <div class="com_member_user_box">
            <div class="com_member_hr_tj">
                <div class="com_member_hr_p1">
                    <span class="member_c9">年龄：</span> 19 &nbsp;&nbsp;&nbsp;

                    <span class="member_c9">经验：</span>3年以上 &nbsp;&nbsp;&nbsp;

                    <span class="member_c9">学历：</span>高中以下

                    <div class="com_member_hr_p1"><span class="member_c9">意向职位：</span>网络/在线客服</div>
                </div>
            </div>

            <div class="com_member_hr_p1">
                <span class="member_c9">浏览日期：2018-11-27 </span>
            </div>
        </div>
        <div class="com_member_hr_cz">
            <a href="javascript:void(0)" onclick="layer_del('确定要删除？','index.php?c=lookresumedel&id=1398')" class="yun_member_hr_bth">删除</a>
            <a href="javascript:void(0);" uid="1963" username="卢小龙" class="yun_member_hr_bth sq_resume"> 邀请面试</a>
        </div>
    </div>
    <script language="javascript" type="text/javascript">
        function talent_pool(uid, eid) {
            $.post(wapurl + "?c=ajax&a=talent_pool", {
                eid: eid,
                uid: uid
            }, function (data) {
                if (data == '0') {
                    layermsg('只有企业用户，才可以操作！');
                } else if (data == '1') {
                    layermsg('加入成功！');
                } else if (data == '2') {
                    layermsg('该简历已加入到人才库！');
                } else {
                    layermsg('对不起，操作出错！');
                }
            });
        }
    </script>
</section>
<div class="pages"></div>
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

