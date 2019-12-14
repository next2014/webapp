var CONSTELLATIONS = ['白羊', '金牛', '双子', '巨蟹', '狮子', '处女', '天秤', '天蝎', '射手', '摩羯', '水瓶', '双鱼'];
var CONSTELLATIONS_E = ['ARIES', 'TAURUS', 'GEMINI', 'CANCER', 'LEO', 'VIRGO', 'LIBRA', 'SCORPIO', 'SAGITTARIUS', 'CAPRICORN', 'AQUARIUS', 'PISCES'];

var DATES_RANGE = ['3/21 - 4/19', '4/20 - 5/20', '5/21 - 6/21', '6/22 - 7/22', '7/23 - 8/22', '8/23 - 9/22', 
                   '9/23 - 10/23', '10/24 - 11/22', '11/23 - 12/21', '12/22 - 1/19', '1/20 - 2/18', '2/19 - 3/20'];

var GENDERS = ['男', '女', '未知'];

var WEEKDAYS = ['星期一', '星期二', '星期三', '星期四', '星期五', '星期六', '星期日'];
var WEEKDAYS_E = ['Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat', 'Sun'];
var MONTHS_E = ['Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec'];

function setShareData() {
    app.weixin(function (wx, link) {
        wx.showOptionMenu();
        wx.onMenuShareAppMessage({
            title: '2018下半年运势',
            desc: '我的准爆了，快来看看你的运势~',
            link: app.baseURL + '/index.html',
            imgUrl: app.baseURL + '/imgs/share_logo.jpg'
        });
        wx.onMenuShareTimeline({
            title: '我的准爆了，快来看看你的运势~',
            link: app.baseURL + '/index.html',
            imgUrl: app.baseURL + '/imgs/share_logo.jpg'
        });
    });
}

function truncatName(name, maxLen) {
    var len = 0, sliceCount = 0;    
    for (var i = 0, strlen = name.length; i < strlen; i++) {    
        if (name.charCodeAt(i) > 127 || name.charCodeAt(i) == 94) {    
             len += 2;
        } else {    
             len ++;  
        }
        if (len > maxLen) {
            return name.slice(0, sliceCount) + '…';
        }
        sliceCount ++;
    }

    return name;
}