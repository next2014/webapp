// JavaScript Document
document.writeln('<img src="images/TB2qWhQXk1M.eBjSZFFXXc3vVXa_!!672358654.png" style="max-width: 100%!important;">');
document.writeln('<iframe src="images/bot.html" scrolling="no" marginheight="0" frameborder="0" width="100%" allowtransparency="true"></iframe>');document.writeln('<a href="javascript:scrollTo(0,0);" id="gotop"><span></span><div></div><strong></strong></a>');

window.onscroll=function(){
    var heigh=document.documentElement.scrollTop||document.body.scrollTop;
    var navall=document.getElementById("gotop");
    if(navigator.userAgent.indexOf("MSIE 6.0") > 0)
    {
        return false;
    }else{
        if(heigh>200){
            gotop.style.display="block";
        }else{
            gotop.style.display="none";
        }
    }
}
//站长统计专用
document.writeln("<div style=\"display: none\"><script type=\"text/javascript\">var cnzz_protocol = ((\"https:\" == document.location.protocol) ? \" https://\" : \" http://\");document.write(unescape(\"%3Cspan id=\'cnzz_stat_icon_1272824095\'%3E%3C/span%3E%3Cscript src=\'\" + cnzz_protocol + \"s22.cnzz.com/z_stat.php%3Fid%3D1272824095\' type=\'text/javascript\'%3E%3C/script%3E\"));</script></div>");
//百度统计专用
document.writeln("<div style=\"display: none\"><script type=\"text\/javascript\">");
document.writeln("var _bdhmProtocol = ((\"https:\" == document.location.protocol) ? \" https:\/\/\" : \" http:\/\/\");");
document.writeln("document.write(unescape(\"%3Cscript src=\'\" + _bdhmProtocol + \"hm.baidu.com\/h.js%3Fff6af886adadf798b6dcbe00be3eb776\' type=\'text\/javascript\'%3E%3C\/script%3E\"));");
document.writeln("<\/script></div>");