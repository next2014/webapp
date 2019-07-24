console.log('3443');
var mapInfor = {
    pos: {
        center: [116.466463, 39.910753],
    },
    point: [{
        pos: [116.466463, 39.910753],
        mes: {
            com: '网站建设文化传播有限公司',
            tel: {
                'name': '联系方式',
                'detail': ['400-888-8888', '188-6666-5188']
            },
            postcode: {
                'name': '邮编',
                'detail': '100000'
            },
            add2: {
                name: '地址',
                detail: '中国地区XX分区5A写字楼8-88室'
            }
        }
    }],
};

mapstyle = "<style>#contentFrame{width: 100%; height: 500px}</style>"

var mapsrc = "/templates/map/index.html#" + encodeURIComponent(JSON.stringify(mapInfor));
var map = $('<iframe id="contentFrame" src=' + mapsrc + ' data-src="http://mo005-3538.mo5.line1.uemo.net" frameborder="no" border="0" marginwidth="0" marginheight="0" allowtransparency="yes" src="http://mo005-3538.mo5.line1.uemo.net"></iframe>')


if ($('.bodypage .mcontact')[0] && !$('html').hasClass('agent-mobile')) {

    $('#sitecontent .mpageEditor  .module_container').eq(1).append(map);
    $('head').prepend(mapstyle);
} 

if($('html').hasClass('agent-mobile')) {

    window.onload = function () {
        $('.pageEditor .module_container').append(map);
        $('head').prepend(mapstyle);
    }
}