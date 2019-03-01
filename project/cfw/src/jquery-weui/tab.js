// /* global $:true */
// +function ($) {
//   "use strict";

//   var ITEM_ON = "active";

//   var showTab = function(a) {
//     var $a = $(a);
//     if($a.hasClass(ITEM_ON)) return;
//     var href = $a.attr("href");

//     if(!/^#/.test(href)) return ;

//     $a.parent().find("."+ITEM_ON).removeClass(ITEM_ON);
//     $a.addClass(ITEM_ON);

//     var bd = $a.parents(".mod-tab").find(".mod_pos");

//     bd.find(".mod_pos_tab--active").removeClass("mod_pos_tab--active");

//     $(href).addClass("mod_pos_tab--active");
//   }

//   $.showTab = showTab;

//   $(document).on("click", ".mod_int_tab, .weui-tabbar__item", function(e) {
//     var $a = $(e.currentTarget);
//     var href = $a.attr("href");
//     if($a.hasClass(ITEM_ON)) return;
//     if(!/^#/.test(href)) return;

//     e.preventDefault();

//     showTab($a);
//   });

// }($);
/* global $:true */
+function ($) {
  "use strict";

  var ITEM_ON = "weui-bar__item--on";

  var showTab = function(a) {
    var $a = $(a);
    if($a.hasClass(ITEM_ON)) return;
    var href = $a.attr("href");

    if(!/^#/.test(href)) return ;

    $a.parent().find("."+ITEM_ON).removeClass(ITEM_ON);
    $a.addClass(ITEM_ON);

    var bd = $a.parents(".weui-tab").find(".weui-tab__bd");

    bd.find(".weui-tab__bd-item--active").removeClass("weui-tab__bd-item--active");

    $(href).addClass("weui-tab__bd-item--active");
  }

  $.showTab = showTab;

  $(document).on("click", ".weui-navbar__item, .weui-tabbar__item", function(e) {
    var $a = $(e.currentTarget);
    var href = $a.attr("href");
    if($a.hasClass(ITEM_ON)) return;
    if(!/^#/.test(href)) return;

    e.preventDefault();

    showTab($a);
  });

}($);
