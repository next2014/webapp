$(function(){
conWrapH();
})

//设置内容容器最小高度
function conWrapH(){
	
	var wiH = $(window).height();
	var conH = $(".hy-wrap").css("min-height",wiH-38);
	return conH;
}
Date.prototype.Format = function (fmt) {
    var o = {
        "M+": this.getMonth() + 1, //月份   
        "d+": this.getDate(), //日   
        "h+": this.getHours(), //小时   
        "m+": this.getMinutes(), //分   
        "s+": this.getSeconds(), //秒   
        "q+": Math.floor((this.getMonth() + 3) / 3), //季度   
        "S": this.getMilliseconds() //毫秒   
    };
    if (/(y+)/.test(fmt)) fmt = fmt.replace(RegExp.$1, (this.getFullYear() + "").substr(4 - RegExp.$1.length));
    for (var k in o)
        if (new RegExp("(" + k + ")").test(fmt)) fmt = fmt.replace(RegExp.$1, (RegExp.$1.length == 1) ? (o[k]) : (("00" + o[k]).substr(("" + o[k]).length)));
    return fmt;
}
function GetQueryString(name) {

    var reg = new RegExp("(^|&)" + name + "=([^&]*)(&|$)", "i");

    var r = window.location.search.substr(1).match(reg);

    if (r != null) return unescape(r[2]); return null;

}
//日期选择
function datePicker(){
	 //初始化配置参数      
     //$('#ticket-time').mobiscroll().calendar({
     //	theme: 'ios',    //日期选择器使用的主题
     //	lang: 'zh',          //使用语言
     //	display: 'bottom' ,    //显示方式
     //	animate:'fade',
     //});
}


    //门票数量限制



    //电子票切换



    //电子票状态



    //



    //阅读说明倒计时5S




    //身份证号码正则验证



    //添加预约人数表单，限制10人



    //手机号码正则验证


    //验证码重新获取时间



    //按钮提交表单验证