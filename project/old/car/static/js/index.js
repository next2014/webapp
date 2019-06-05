define(function(require,exports,module) {
	var $ = require("$")
		,ui = require("jobbaidu.ui.base")
		,util = require("jobbaidu.util")
		,selector2 = require("jobbaidu.ui.selector2")
		//,person = require("action.person") 
		,tSilder = require("jobbaidu.ui.touchSilder")
	//$("#nav_home").addClass("active");
	var out = {
			initSearch : function(){
				$("#searchFormBtn").attr("onclick","");
				$("#searchFormBtn").click(function(){
					var by = "default";
					if(!$("#homeKeyword").val()){
						by = "postdate"
					}
					$("#kwSortBy").val(by);
				});
				//person.updateInfo()
				if(util.url.getPar("search")!=="new") out.getLastSearch()
				out.auto()
				out.moreCondition()
				out.bindKwType()
				out.bindHistory()
				out.catelogsClick()
				out.industryClick()
				out.areaClick()
				out.setLastSearch()
				out.perLogin()
			}
			//关键字自动完成
			,auto : function(){
				var iptTimer=null
					,isTimeout = false
					,keys = {}
					,last = ""
					,kwFocus = function(e,t){
						if( e && e.stopPropagation)e.stopPropagation()
						if( e && e.preventDefault )e.preventDefault()
						if($("#kwTypeList").css("display")=="block"){clearTimeout(iptTimer);return}
						var rs = $("#homeKeyword")
							,v = rs.val().replace(/(^\s*)|(\s*$)|(\n)/g,"")
						if(!i){
							iptTimer = setTimeout(function(){
								clearTimeout(iptTimer)
								kwFocus(null,true)
		                    },500)
						}
	                    if(v ==""){$("#homeKeywordAuto").hide(); return}
	                    if(v == last){return}else{last=v}
	                    if(/[丨亅丿乛乚丶丷丆冖亻亠卜卩厶匸讠廴 氵扌灬礻]/.test(v)){return}
						var $tmp = $("<div></div>")
							,TB = +new Date()
						rs.attr("TB",TB)
						var cacheData =localStorage["p.search.key."+encodeURIComponent(v)]
						if(cacheData){
							var DATA = util.toJSON(cacheData)
							if(DATA.count>0){
								var max = DATA.count>5?5:DATA.count
								for(var i=0;i<max;i++){
									var item = $('<div class="row"><a>'+DATA.keywords[i]+'</a></div>')
										item.click(function(){
											rs.val($(this).find("a").html())
										})
									$tmp.append(item)						
								}
								$tmp.append($('<div class="clear_history" onclick="document.getElementById(\'homeKeywordAuto\').style.display=\'none\'"><span></span><a class="close">close</a></div>'))
								$("#homeKeywordAuto").empty().append($tmp.find("div")).show()
							}else{
								$("#homeKeywordAuto").hide()
							}
							return;
						}
						if(keys[v]){return}
						$.ajax({
							url:"/KeyWord/SearchKeyWord.shtml?word="+encodeURIComponent(v)+"&max=5&t="+(+new Date())
							,type : "GET"
							,success : function(data){
								localStorage["p.search.key."+encodeURIComponent(v)]=data
								keys[v]=true
								if(rs.attr("TB")!=TB){
									
								}else{
									var DATA = util.toJSON(data)
									if(DATA.count>0){
										var max = DATA.count>5?5:DATA.count
										for(var i=0;i<max;i++){
											var item = $('<div class="row"><a>'+DATA.keywords[i]+'</a></div>')
												item.click(function(){
													rs.val($(this).find("a").html())
												})
											$tmp.append(item)						
										}
										$tmp.append($('<div class="clear_history" onclick="document.getElementById(\'homeKeywordAuto\').style.display=\'none\'"><span></span><a class="close">close</a></div>'))
										$("#homeKeywordAuto").empty().append($tmp.find("div")).show()
									}else{
										$("#homeKeywordAuto").hide()
									}
								}
							}
						})
					}
				$(document).click(function(){
					$("#homeKeywordAuto").hide()
				})
				$("#homeKeyword").on("focus keyup",kwFocus).bind("blur",function(){
					clearTimeout(iptTimer)
				})
			}
			//搜索类型选择
			,bindKwType : function(){
				$("#kwType").click(function(e){
					if( e && e.stopPropagation)e.stopPropagation()
					if( e && e.preventDefault )e.preventDefault()
					$("#kwTypeList").toggle()
					$("#homeKeywordAuto").hide()
					$("#homeKeyword").blur()
				})
				$(document).click(function(){
					$("#kwTypeList").hide()
				})
				$("#kwTypeList").find("a").click(function(){
					$("#kwTypeList").find("li").show()
					var $this = $(this)
					$("#kwTypeVal").val($this.attr("v"))
					$("#kwType").html($this.html())
					$this.parent().hide()
					$("#kwTypeList").hide()
				})
			}
			//历史记录回显
			,bindHistory : function(){
				var hst = util.toJSON(localStorage["p.search.last"])
				if(util.isArr(hst)){
					var ul = $("<ul></ul>")
					for(var i=0;i<hst.length;i++){
						if(i>=3) break;
						var itm = hst[hst.length-1-i];
						var li = "<li v='"+(hst.length-1-i)+"'>"+(itm.keyword.replace(/\+/g,"[$]")+"+"+(itm.jobLocIds?itm.jobLocNames:itm.workLoc)+"+"+itm.homePosition+"+"+itm.homeIndustry).replace(/^\++|\++$/g,"").replace(/\+{2,}/,"+")+"</li>";
						    li = $(li.replace(/\+/,"<span>+</span>").replace(/\[\$\]/g,"+"))							
							li.click(function(){
								var n = $(this).attr("v");
								var history = localStorage["p.search.last"],p;			
								if(!history)return
									history = util.toJSON(history)
								if(util.isArr(history)){
									if(!n) n=history.length-1
									p=history[n]
								}
								//out.getLastSearch($(this).attr("v"))
								//$("#searchFormBtn")[0].click()
								window.location.href="/Commons/SearchPosition.shtml?"+out.par2url(p)
							})
							ul.append($(li))
					}
					$("#search_history_body ul").empty().append(ul.find("li"))
				}

				$("#search_history_title,#search_history_body .close").click(function(){
					var self = $("#search_history_title")
					if(self.hasClass("active")){
						self.removeClass("active")
					}else{
						self.addClass("active")
					}
					$("#search_history_body").toggle()
				})
				$("#search_history_body .clear_history span").click(function(){
					$("#search_history_body ul").empty().append("<li>无搜索记录</li>");
					localStorage["p.search.last"]=""
				})
			}
			,par2url : function(par){
				var tmp=""
				for(var obj in par){
					tmp+="&searcher."+obj+"="+encodeURIComponent(par[obj]).replace(/\+/g,"%2b")
				}
				return tmp.length>1?tmp.substring(1):tmp
			}
			//回显最后一次历史记录
			,getLastSearch : function(n){
				var history = localStorage["p.search.last"],p;			
				if(!history)return
					history = util.toJSON(history)
				if(util.isArr(history)){
					if(!n) n=history.length-1
					p=history[n]
					if(!$("#homeKeyword").val())$("#homeKeyword").val(p.keyword)
					try{
						$("#kwTypeList a")[p.kwType].click()
					}catch(e){
						
					}
					if(p.jobLocIds){
						$("#homeArea").attr("placeholder",p.jobLocNames)
						$("#jobLocationVal").val(p.jobLocIds)
						$("#homeArea").val(p.workLoc)
					}else{
						$("#homeArea").val(p.workLoc)
						$("#homeAreaKey").val(p.workLoc).attr("data-old",p.workLoc)
						$("#homeArea").attr("placeholder","输入工作地区")
						$("#jobLocationVal").val('')
					}
					if(p.jobFun || p.calling){
						$("#homePositionVal").val(p.jobFun)
						$("#homeIndustryVal").val(p.calling)
						$("#homeIndustry").html(p.homeIndustry||"行业类别")
						$("#homePosition").html(p.homePosition||"职位类别")
						var self = $("#moreConditionTit").find("i");
						if(self.hasClass("plus")){
							self.removeClass("plus").addClass("minus")
							ui.move.height("#moreConditionBody",108,0.2);
						}else{
							self.removeClass("minus").addClass("plus")
							ui.move.height("#moreConditionBody",0,0.2);
						}
					}
				}
			}
			//记录最后历史记录
			,setLastSearch : function(){
				$("#searchForm").submit(function(){
					var key = $("#homeKeyword").val()
						,area = $("#homeArea")
						if(!key&&!area.val()&&!$("#jobLocationVal").val()){alert('请输入关键字或工作地区!'); return false}
						//if(area.val()){$("#jobLocationVal").val('');}
					var p = {
						keyword : key
						,indexKey: key
						,kwType : $("#kwTypeVal").val()
						,posAddress: area.val()||""
						,workLoc : area.val()||""	//手动输入的
						,jobLocIds : $("#jobLocationVal").val()
						,jobLocNames : area.attr("placeholder").replace("输入工作地区","")//城市地区的中文
						,jobFunctionVal:$("#homePositionVal").val()
						,jobFun : $("#homePositionVal").val()
						,homePosition : $("#homePosition").html().replace("职位类别","")//职位中文
						,jobCallingVal:$("#homeIndustryVal").val()
						,calling : $("#homeIndustryVal").val()
						,homeIndustry : $("#homeIndustry").html().replace("行业类别","")//行业中文
					}
					var history = util.toJSON(localStorage["p.search.last"])
						if(util.isArr(history)){
							//判断是否有相同的搜索条件
							var isNewSearch=true
							for(var i=0;i<history.length;i++){
								var isSame = true
								for(var itm in p){
									if(history[i][itm] != p[itm]){isSame = false; break;}
								}
								if(isSame){
									history.splice(i,1)
									history.push(p)
									isNewSearch=false;break;
								}
							}
							if(isNewSearch)history.push(p)
						}else{
							history=[p]
						}
					localStorage["p.search.last"] = util.toString(history)
				})
			}
			,catelogsClick : function(){
				var selector = new selector2();
					selector.config({
						type : "position"
						,id : "#homePosition"
						,val : "#homePositionVal"
						,selectType : "multiple"
						,onOpen : function(){  }
						,onClear:function(a,b){
							$("#homePositionVal").val("")
							$("#homePosition").empty().html("职位类别")
							selector.hide()
						}
					});
					 var temps = [];//要触发点击事件的一级选项
                     var funIDs = [];//要触发点击事件的二级选项
                     var isOK = false;
                     //初始化回显已选数据 （二级/三级 的选项需要触发点击事件才会加载到容器中，才能获取）
                     selector.init(false, function (e) { 
                        if(undefined != $("input[id='homePositionVal']").val()){
                        	 $.each($("input[id='homePositionVal']").val().split(","),function (n,value) {
                                 var val = $.trim(value);
                                 //如果不是一级选项
                                 if (val && val.substring(2) !== "00") {
                                     if ($.inArray(val.substring(0, 2) + "00", temps) === -1) {
                                         temps.push(val.substring(0, 2) + "00");
                                     }
                                     funIDs.push(val);
                                 } else if (val.substring(2) === "00") {//如果是一级选项
                                     $("input[name='homePosition'][id='i" + val + "']").trigger("click");
                                     isOK = true;
                                 }
                             });
                        }
                         if (temps.length > 0) {
                             for (var i = 0; i < temps.length; i++) {
                                 $("input[name='homePosition'][id='i" + temps[i] + "']").next("label").trigger("click");
                             }
                         } else if (isOK) {
                             e.find("button[class='ok selectorOk']").trigger("click");
                         }
                       }, function (e) {
                         if ($.inArray($(e.target).prev().val(), temps) !== -1) {
                             for (var i = 0; i < funIDs.length; i++) {
                                 $(e.target).parent().parent().find("input[type='checkbox'][id='c" + funIDs[i] + "']").trigger("click");
                             }
                             $(e.target).parents("div[id^='sideBox']").find("button[class='ok selectorOk']").trigger("click");
                         }
                     }); 
				$("#homePosition").click(function(e){
					selector.show();
				});
			}
			,areaClick : function(){
				var selector = new selector2();
					selector.config({
						type : "area"
						,id : "#homeArea"
						,val : "#jobLocationVal"
						,selectType : "multiple"
                        , multilevel: true
						,onSave:function(v,t){
							var oldKey = $("#homeArea").val();
							$("#homeAreaKey").attr("data-old",oldKey||'');
							$("#homeAreaKey").attr("value",t||'');
							$("#homeArea").val(t||''); 
							$("#homeArea").attr("placeholder","输入工作地区") 
						}
					})
					 var temps = [];//要触发点击事件的一级选项
                     var funIDs = [];//要触发点击事件的二级选项
                     var threeIDs = [];//要触发点击事件的三级选项
                     var selectIDs = [];//最终要选择的选项
                     var isOK = false;
					selector.init(false, function (e) { 
						 if(undefined != $("input[id='jobLocationVal']").val()){
							 $.each($("input[id='jobLocationVal']").val().split(","),function (n,value) {
	                             var val = $.trim(value);
	                             if(val && val.length == 8){
	                            	 if ($.inArray(val.substring(0, 2) + "00", temps) === -1)
	                            		 temps.push(val.substring(0, 2) + '00');
	                            	 if ($.inArray(val.substring(0, 4) , funIDs) === -1)
	                            		 funIDs.push(val.substring(0, 4));
	                            	 if ($.inArray(val.substring(0, 6) , threeIDs) === -1)
	                            		 threeIDs.push(val.substring(0, 6));
	                            	 selectIDs.push(val);
	                             }else if(val && val.length == 6){
	                            	 if ($.inArray(val.substring(0, 2) + "00", temps) === -1)
	                            		 temps.push(val.substring(0, 2) + '00');
	                            	 if ($.inArray(val.substring(0, 4) , funIDs) === -1)
	                            		 funIDs.push(val.substring(0, 4));
	                            	 selectIDs.push(val);
	                             }else{
	                            	 //如果尾号不是00  则保存这个选项的上级
		                             if (val && val.substring(2) !== "00") {
		                                 if ($.inArray(val.substring(0, 2) + "00", temps) === -1) {
		                                     temps.push(val.substring(0, 2) + "00");
		                                 }
		                                 selectIDs.push(val);
		                             } else if (val.substring(2) === "00") {//如果是一级选项
		                                 $("input[name='homeArea'][id='i" + val + "']").trigger("click");
		                                 isOK = true;
		                             }
	                             }
	                            
	                         });
						 } 
                         if (temps.length > 0) {//点开一级，显示二级
                             for (var i = 0; i < temps.length; i++) {
                                 $("input[name='homeArea'][id='i" + temps[i] + "']").next("label").trigger("click");
                             }
                         }  
                         else if (isOK) {
                             e.find("button[class='ok selectorOk']").trigger("click");
                         }
                       }, function (e) {
                    	   if ($.inArray($(e.target).prev().val(), temps) !== -1) {
                    		   if (funIDs.length > 0) {//点二级，显示三级
                                   for (var i = 0; i < funIDs.length; i++) {
                                       $("input[id='c" + funIDs[i] + "']").next("label").trigger("click");
                                   }
                               } 
                               if (threeIDs.length > 0) {//点三级
                                   for (var i = 0; i < threeIDs.length; i++) {
                                       $("input[id='d" + threeIDs[i] + "']").next("label").trigger("click");
                                   }
                               } 
                             for (var i = 0; i < selectIDs.length; i++) {
                            	 $("input[type='checkbox'][value='" + selectIDs[i] + "']").trigger("click");
                            	 $("input[type='checkbox']") 
                             }
                             $(e.target).parents("div[id^='sideBox']").find("button[class='ok selectorOk']").trigger("click");
                    	   }
                     }); 
				$("#homeAreaSel").click(function(){
					selector.open()
				});
				/*$("#homeArea").blur(function(){
					var newKey = $("#homeArea").val()
						,oldKey = $("#homeAreaKey").attr("data-old")
					if(newKey!=oldKey){
						$("#homeAreaKey").val(newKey).attr("data-old",newKey) 
					}
				})*/
			}
			,industryClick : function(){
				var selector = new selector2();
					selector.config({
						type : "industry"
						,langType :"cn"
						,selectType : "multiple"
						,id : "#homeIndustry"
						,val : "#homeIndustryVal"
						,onClear:function(a,b){
							$("#homeIndustryVal").val("")
							$("#homeIndustry").empty().html("行业类别")
							selector.hide()
						}
					})
					selector.init()
				$("#homeIndustry").click(function(){
					selector.show();
				});
			}
			//更多搜索条件
			,moreCondition : function(min,max,css){
				$("#moreConditionTit").click(function(){
					var self = $(this).find("i");
					if(self.hasClass("plus")){
						self.removeClass("plus").addClass("minus")
						ui.move.height("#moreConditionBody",108,0.2);
					}else{
						self.removeClass("minus").addClass("plus")
						ui.move.height("#moreConditionBody",0,0.2);
					}
				});
			}
			,hr : function(){
				var hr = new tSilder( {id:'jobbaiduHRbody', 'auto':'-1', speed:200, timeout:3000, direction:'right'
					,after:function(i,o){
						$("#jobbaiduHRtit li").removeClass("active").eq(i).addClass("active");
						hrAT=i
					}
				});				
				var hrAT = 0
				$("#jobbaiduHRtit li").each(function(i){
					$(this).click(function(){
						if(i==hrAT) return;
						if(i<hrAT)
							hr.next(-1)
						else
							hr.next(1)
						hrAT=i;
					});
				})
			}
			,btmAd : function(){
				var $btmBody  = $("#bottomAd");
				var $btmClose = $btmBody.find(".btm_cose");
				$btmClose.click(function(){
					$btmBody.remove();
				});
			}
			,perLogin:function(){
				if(util.cookie.get("personAccountID")){
					$("#per_login").html('个人中心')
					$("#per_login").attr("href","/Person/MPersonIndex.shtml")
					$("#footUserOffline").html('<a href="/Login/PersonLogin!logout.shtml">'+util.cookie.get("personEmail")+"&nbsp;&nbsp;退出"+'</a>')
				}
			}
	}
	module.exports = out;
});