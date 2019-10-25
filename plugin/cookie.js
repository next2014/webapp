// cookie控制弹窗24小时只显示一次


// 例一：用cookie记录下，访问过24小时内就不弹，不过是居于浏览器的，不是居于ip，客户端删除cookie也是会继续弹的
window.onload = function () {  
    //================  
    var s = document.cookie;  
    if (s.indexOf('myad=1') != -1) return; //存在cookie退出下面代码的执行  
    var d = new Date();  
    d.setHours(d.getHours() + 24); //有效期24小时  
    document.cookie = 'myad=1;expires='+d.toGMTString();//设置cookie  
    //================  
    /*自己弹窗代码*/
    layer.open({
        type: 2,
        title: '特别公告',
        maxmin: true,
        area: ['500px', '750px'],
        shadeClose: true,
        content: 'tong.html'
    });
}  


// 例二：
// 指定日期前，只弹一次，后面不再弹

$(document).ready(function(){		
	showSuspend();		
});


function setCookie(cookiename, value, expire)  
{  
    window.document.cookie = cookiename + "=" + escape(value) 
    	+ ((expire == null) ? "" : ("; expires=" + expire.toGMTString())) + ";path=/";;  
}   

function getCookie(cookiename)  
{  
    var search = cookiename + "=";  
    if (window.document.cookie.length > 0)  
    { 
     	offset = window.document.cookie.indexOf(search);  
        if (offset != -1)  
        {
            offset += search.length;  
          	end = window.document.cookie.indexOf(";", offset)  
        
          if (end == -1)  
           	 end = window.document.cookie.length;  
          return
			 unescape(window.document.cookie.substring(offset, end));  
        }  
    }  
	return "";  
}  

var end = new Date('2015-09-03 23:59:59');
function register(cookiename) {  
    setCookie("zhezhao", cookiename, end);  
}  


function showSuspend() {  
	if(new Date().getTime() < end.getTime()){
		var c = getCookie("zhezhao");  
	    if (c != null && c != "") {  
	      return;  
	    }  
	    register("93");  
	    $("#zhezhaoDiv").show();
	}
    
}

