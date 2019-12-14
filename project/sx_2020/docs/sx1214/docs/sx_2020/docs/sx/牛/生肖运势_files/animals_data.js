var TAISUI_DICT = {
    '猪': {
        'name': '值太岁',
        'desc': '代表你的生肖与今年太岁相同，意味着你今年整体运势会呈低迷状态，尤其是健康方面更容易出现令人心烦的问题。'
    },
    '猴': {
        'name': '害太岁',
        'desc': '代表你的生肖与今年太岁相害，意味着你今年的人际运整体不佳，容易遭到小人破害，从而对各方面运势都易产生不好的影响。'
    },
    '蛇': {
        'name': '冲太岁',
        'desc': '代表你的生肖与今年太岁相冲，意味着你今年整体运势不会太顺利，凡事都会出现一波三折的状况。'
    },
    '虎': {
        'name': '破太岁',
        'desc': '代表你的生肖与今年太岁相破，意味着你今年在金钱、事业、爱情上的运势都会遭到破坏。'
    },
}
var ANIMALS_NAME_LIST = ['鼠', '牛', '虎', '兔', '龙', '蛇', '马', '羊', '猴', '鸡', '狗', '猪'];

function taisuiDict(shengxiao) {
    return TAISUI_DICT[shengxiao];
}

function loadLuckyCard(pid) {
    $.ajax({
        url: '/product/getChannelProducts.do?pid=' + pid,
        success: function(res) {
            if (res.state != 'ok' || res.data.products.length == 0) {
                return;
            }
            if (!res.data.products || res.data.products.length == 0) {
                return;
            }
            res.data.products.forEach(function(obj) {
                if (obj.name == '2019星座运势') {
                    $('.links .horo').on('click', function() {
                        window.location.href = obj.url;
                    });
                } else if (obj.name == '许愿') {
                    $('.links .wish').on('click', function() {
                        window.location.href = obj.url;
                    });
                } else if (obj.name == '请符') {
                    $('.links .qingfu').on('click', function() {
                        window.location.href = obj.url;
                    });
                }
            });
            $('.lucky-card').show();
        }
    });
}

function setAnimal2019ShareData(pid) {
    app.weixin(function (wx, link) {
        wx.showOptionMenu();
        wx.onMenuShareAppMessage({
            title: '己亥猪年超准运势！',
            desc: '道教祖庭教你开运方法！',
            link: app.baseURL + '/animals/index.html?p=' + pid,
            imgUrl: app.baseURL + '/animals/imgs/share_logo.jpg'
        });
        wx.onMenuShareTimeline({
            title: '己亥猪年超准运势！道教祖庭教你开运方法！',
            link: app.baseURL + '/animals/index.html?p=' + pid,
            imgUrl: app.baseURL + '/animals/imgs/share_logo.jpg'
        });
    });
}

var _mtac = {};
(function() {
    var mta = document.createElement("script");
    mta.src = "//pingjs.qq.com/h5/stats.js?v2.0.4";
    mta.setAttribute("name", "MTAH5");
    mta.setAttribute("sid", "500663644");
    mta.setAttribute("cid", "500663645");
    var s = document.getElementsByTagName("script")[0];
    s.parentNode.insertBefore(mta, s);
})();