function goto(url) {
    window.location.href = url;
}

function toThousands(num) {
    var num = (num || 0).toString(), result = '';
    while (num.length > 3) {
        result = ',' + num.slice(-3) + result;
        num = num.slice(0, num.length - 3);
    }
    if (num) { result = num + result; }
    return result;
}

Date.prototype.addDay = function (value) {
    this.setDate(this.getDate() + value);
    return this;
}
function newDate(date) {
    return new Date(date.getFullYear(), date.getMonth(), date.getDate());
}
Date.prototype.addMonth = function (value) {
    this.setMonth(this.getMonth() + value);
    return this;
}
Date.prototype.toString = function (tag) {
    if (tag) {
        switch (tag) {
            case 1:
                return (this.getMonth() + 1) + "月" + this.getDate() + "日";
            case 2:
                return (Appendzero(this.getMonth() + 1)) + "-" + Appendzero(this.getDate());
            case 3:
                return this.getFullYear() + "-" + (Appendzero(this.getMonth() + 1)) + "-" + Appendzero(this.getDate());
            case 4:
                return this.getFullYear() + "年" + (this.getMonth() + 1) + "月";
            case 5:
                return this.getFullYear() + "-" + ((Appendzero(this.getMonth() + 1)));
        }
    }
    else {
        return (this.getMonth() + 1) + "月" + this.getDate() + "日";
    }
}
//小于10补零
function Appendzero(obj) {
    if (obj < 10) return "0" + obj; else return obj;
}
//获取当月天数
function getDaysInOneMonth(year, month) {
    month = parseInt(month, 10);
    var d = new Date(year, month, 0);
    return d.getDate();
}
var oldalert = window.alert;
window.alert = function alert(msg) {
    $("#alertMsg").css("display", "block");
    var length = (msg.length)
    if (parseInt(length) > 13) {
        var width = 200 + (parseInt(length) - 13) * 15;
        var marginright = 580 - (parseInt(length) - 13) * 8;
        $(".center").css("width", "" + width + "px");
        $(".center").css("margin-right", "" + marginright + "px");
    }
    $("#alertMsg .word").text(msg);
    setTimeout(function () {
        $("#alertMsg").css("display", "none");
        $(".center").css("width", "200px");
        $(".center").css("margin-right", "580px");
        $("#alertMsg .word").text('');
    }, 5000)
}