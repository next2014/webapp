<%@ Page Language="C#" AutoEventWireup="true" CodeFile="index.aspx.cs" Inherits="wap_index" %>
<%@ Register Src="head.ascx" TagName="head" TagPrefix="uc1" %>
<%@ Register Src="foot.ascx" TagName="foot" TagPrefix="uc2" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=no, minimum-scale=1.0, maximum-scale=1.0" />
<title>欧美城 · 分享快乐小城故事</title>
<link href="dist/css/bootstrap.css" rel="stylesheet">
<link href="assets/css/docs.min.css" rel="stylesheet">
<link href="https://cdn.bootcss.com/Swiper/4.4.6/css/swiper.min.css" rel="stylesheet">
  </head>
  <body>
    <header class="navbar navbar-expand navbar-dark flex-column flex-md-row bd-navbar">
    <a class="navbar-brand mr-0 mr-md-3 ml-3" href="javascript:;" aria-label="Bootstrap">
        
        <img src="../assets/img/logo.png" height="35" />
        
    </a>
    <button class="btn btn-link bd-search-docs-toggle d-md-none s-ms-fright" type="button" id="open-right" data-activates="slide-out"><svg  xmlns="http://www.w3.org/2000/svg" viewbox="0 0 30 30"  width="30"   height="30"  focusable="false" role="img">
<title>Menu</title>
<path stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-miterlimit="10" d="M4 7h22M4 15h22M4 23h22"/>
</svg>
</button>
    <div class="bd-links collapse">
        <div class="navbar-nav-scroll">
            <ul class="navbar-nav bd-navbar-nav flex-row">
                <li class="nav-item">
                  <a class="nav-link" href="/wap/">首页</a>
                </li>
                <li class="nav-item">
                  <a class="nav-link" href="http://www.occident.com.cn/wap/about.aspx">关于我们</a>
                </li>
                <li class="nav-item">
                  <a class="nav-link" href="http://www.occident.com.cn/wap/project.aspx">文化主题项目</a>
                </li>
                <li class="nav-item">
                  <a class="nav-link" href="http://www.occident.com.cn/wap/news.aspx">欧美城新闻</a>
                </li>
                <li class="nav-item">
                  <a class="nav-link" href="http://www.occident.com.cn/wap/shidian.aspx">汕头欧美城</a>
                </li>
                <li class="nav-item">
                  <a class="nav-link" href="http://www.occident.com.cn/wap/yangban.aspx">惠州欧美城</a>
                </li>
                <li class="nav-item">
                  <a class="nav-link" href="http://www.occident.com.cn/wap/job.aspx">人才招聘</a>
                </li>
                <li class="nav-item">
                  <a class="nav-link" href="http://www.occident.com.cn/wap/contact.aspx">联系我们</a>
                </li>
              </ul>
        </div>
    </div>
    <!-- Right Sidebar -->
    <ul id="slide-out" class="side-nav d-md-none list-group">
        <li class="list-group-item border-0 rounded-0 active">
            <a href="/wap/" class="d-flex justify-content-between align-items-center">首页<?xml version="1.0" standalone="no"?><!DOCTYPE svg PUBLIC "-//W3C//DTD SVG 1.1//EN" "http://www.w3.org/Graphics/SVG/1.1/DTD/svg11.dtd"><svg t="1546417302002" class="icon" style="" viewBox="0 0 1099 1024" version="1.1" xmlns="http://www.w3.org/2000/svg" p-id="4902" xmlns:xlink="http://www.w3.org/1999/xlink" width="26.8310546875" height="25"><defs><style type="text/css"></style></defs><path d="M431.46 273.2c8.1-6.4 14.3-6.5 24 3.3 0 0 200.1 194.3 207.7 201.9 5.8 5.8 9.7 10.2 9.7 16.9 0 7.5-3.9 12.8-9.7 18.1L454.96 716.5c-7.9 7.7-13.8 12.1-23.2 3.7-10.7-9.8-7-13.9 3.9-26l205.3-198.6L437.16 301C427.16 291.6 419.56 284.4 431.46 273.2z" p-id="4903" fill="#8a8a8a"></path></svg></a>
        </li>
        <li class="list-group-item border-0 rounded-0">
            <a href="http://www.occident.com.cn/wap/about.aspx" class="d-flex justify-content-between align-items-center">关于我们<?xml version="1.0" standalone="no"?><!DOCTYPE svg PUBLIC "-//W3C//DTD SVG 1.1//EN" "http://www.w3.org/Graphics/SVG/1.1/DTD/svg11.dtd"><svg t="1546417302002" class="icon" style="" viewBox="0 0 1099 1024" version="1.1" xmlns="http://www.w3.org/2000/svg" p-id="4902" xmlns:xlink="http://www.w3.org/1999/xlink" width="26.8310546875" height="25"><defs><style type="text/css"></style></defs><path d="M431.46 273.2c8.1-6.4 14.3-6.5 24 3.3 0 0 200.1 194.3 207.7 201.9 5.8 5.8 9.7 10.2 9.7 16.9 0 7.5-3.9 12.8-9.7 18.1L454.96 716.5c-7.9 7.7-13.8 12.1-23.2 3.7-10.7-9.8-7-13.9 3.9-26l205.3-198.6L437.16 301C427.16 291.6 419.56 284.4 431.46 273.2z" p-id="4903" fill="#8a8a8a"></path></svg></a>
        </li>
        <li class="list-group-item border-0 rounded-0">
            <a href="http://www.occident.com.cn/wap/project.aspx" class="d-flex justify-content-between align-items-center">文化主题项目<?xml version="1.0" standalone="no"?><!DOCTYPE svg PUBLIC "-//W3C//DTD SVG 1.1//EN" "http://www.w3.org/Graphics/SVG/1.1/DTD/svg11.dtd"><svg t="1546417302002" class="icon" style="" viewBox="0 0 1099 1024" version="1.1" xmlns="http://www.w3.org/2000/svg" p-id="4902" xmlns:xlink="http://www.w3.org/1999/xlink" width="26.8310546875" height="25"><defs><style type="text/css"></style></defs><path d="M431.46 273.2c8.1-6.4 14.3-6.5 24 3.3 0 0 200.1 194.3 207.7 201.9 5.8 5.8 9.7 10.2 9.7 16.9 0 7.5-3.9 12.8-9.7 18.1L454.96 716.5c-7.9 7.7-13.8 12.1-23.2 3.7-10.7-9.8-7-13.9 3.9-26l205.3-198.6L437.16 301C427.16 291.6 419.56 284.4 431.46 273.2z" p-id="4903" fill="#8a8a8a"></path></svg></a>
        </li>
        <li class="list-group-item border-0 rounded-0">
            <a href="http://www.occident.com.cn/wap/news.aspx" class="d-flex justify-content-between align-items-center">欧美城新闻<?xml version="1.0" standalone="no"?><!DOCTYPE svg PUBLIC "-//W3C//DTD SVG 1.1//EN" "http://www.w3.org/Graphics/SVG/1.1/DTD/svg11.dtd"><svg t="1546417302002" class="icon" style="" viewBox="0 0 1099 1024" version="1.1" xmlns="http://www.w3.org/2000/svg" p-id="4902" xmlns:xlink="http://www.w3.org/1999/xlink" width="26.8310546875" height="25"><defs><style type="text/css"></style></defs><path d="M431.46 273.2c8.1-6.4 14.3-6.5 24 3.3 0 0 200.1 194.3 207.7 201.9 5.8 5.8 9.7 10.2 9.7 16.9 0 7.5-3.9 12.8-9.7 18.1L454.96 716.5c-7.9 7.7-13.8 12.1-23.2 3.7-10.7-9.8-7-13.9 3.9-26l205.3-198.6L437.16 301C427.16 291.6 419.56 284.4 431.46 273.2z" p-id="4903" fill="#8a8a8a"></path></svg></a>
        </li>
        <li class="list-group-item border-0 rounded-0">
            <a href="http://www.occident.com.cn/wap/shidian.aspx" class="d-flex justify-content-between align-items-center">汕头欧美城<?xml version="1.0" standalone="no"?><!DOCTYPE svg PUBLIC "-//W3C//DTD SVG 1.1//EN" "http://www.w3.org/Graphics/SVG/1.1/DTD/svg11.dtd"><svg t="1546417302002" class="icon" style="" viewBox="0 0 1099 1024" version="1.1" xmlns="http://www.w3.org/2000/svg" p-id="4902" xmlns:xlink="http://www.w3.org/1999/xlink" width="26.8310546875" height="25"><defs><style type="text/css"></style></defs><path d="M431.46 273.2c8.1-6.4 14.3-6.5 24 3.3 0 0 200.1 194.3 207.7 201.9 5.8 5.8 9.7 10.2 9.7 16.9 0 7.5-3.9 12.8-9.7 18.1L454.96 716.5c-7.9 7.7-13.8 12.1-23.2 3.7-10.7-9.8-7-13.9 3.9-26l205.3-198.6L437.16 301C427.16 291.6 419.56 284.4 431.46 273.2z" p-id="4903" fill="#8a8a8a"></path></svg></a>
        </li>
        <li class="list-group-item border-0 rounded-0">
            <a href="http://www.occident.com.cn/wap/yangban.aspx" class="d-flex justify-content-between align-items-center">惠州欧美城<?xml version="1.0" standalone="no"?><!DOCTYPE svg PUBLIC "-//W3C//DTD SVG 1.1//EN" "http://www.w3.org/Graphics/SVG/1.1/DTD/svg11.dtd"><svg t="1546417302002" class="icon" style="" viewBox="0 0 1099 1024" version="1.1" xmlns="http://www.w3.org/2000/svg" p-id="4902" xmlns:xlink="http://www.w3.org/1999/xlink" width="26.8310546875" height="25"><defs><style type="text/css"></style></defs><path d="M431.46 273.2c8.1-6.4 14.3-6.5 24 3.3 0 0 200.1 194.3 207.7 201.9 5.8 5.8 9.7 10.2 9.7 16.9 0 7.5-3.9 12.8-9.7 18.1L454.96 716.5c-7.9 7.7-13.8 12.1-23.2 3.7-10.7-9.8-7-13.9 3.9-26l205.3-198.6L437.16 301C427.16 291.6 419.56 284.4 431.46 273.2z" p-id="4903" fill="#8a8a8a"></path></svg></a>
        </li>
        <li class="list-group-item border-0 rounded-0">
            <a href="http://www.occident.com.cn/wap/job.aspx" class="d-flex justify-content-between align-items-center">人才招聘<?xml version="1.0" standalone="no"?><!DOCTYPE svg PUBLIC "-//W3C//DTD SVG 1.1//EN" "http://www.w3.org/Graphics/SVG/1.1/DTD/svg11.dtd"><svg t="1546417302002" class="icon" style="" viewBox="0 0 1099 1024" version="1.1" xmlns="http://www.w3.org/2000/svg" p-id="4902" xmlns:xlink="http://www.w3.org/1999/xlink" width="26.8310546875" height="25"><defs><style type="text/css"></style></defs><path d="M431.46 273.2c8.1-6.4 14.3-6.5 24 3.3 0 0 200.1 194.3 207.7 201.9 5.8 5.8 9.7 10.2 9.7 16.9 0 7.5-3.9 12.8-9.7 18.1L454.96 716.5c-7.9 7.7-13.8 12.1-23.2 3.7-10.7-9.8-7-13.9 3.9-26l205.3-198.6L437.16 301C427.16 291.6 419.56 284.4 431.46 273.2z" p-id="4903" fill="#8a8a8a"></path></svg></a>
        </li>
        <li class="list-group-item border-0 rounded-0">
            <a href="http://www.occident.com.cn/wap/contact.aspx" class="d-flex justify-content-between align-items-center">联系我们<?xml version="1.0" standalone="no"?><!DOCTYPE svg PUBLIC "-//W3C//DTD SVG 1.1//EN" "http://www.w3.org/Graphics/SVG/1.1/DTD/svg11.dtd"><svg t="1546417302002" class="icon" style="" viewBox="0 0 1099 1024" version="1.1" xmlns="http://www.w3.org/2000/svg" p-id="4902" xmlns:xlink="http://www.w3.org/1999/xlink" width="26.8310546875" height="25"><defs><style type="text/css"></style></defs><path d="M431.46 273.2c8.1-6.4 14.3-6.5 24 3.3 0 0 200.1 194.3 207.7 201.9 5.8 5.8 9.7 10.2 9.7 16.9 0 7.5-3.9 12.8-9.7 18.1L454.96 716.5c-7.9 7.7-13.8 12.1-23.2 3.7-10.7-9.8-7-13.9 3.9-26l205.3-198.6L437.16 301C427.16 291.6 419.56 284.4 431.46 273.2z" p-id="4903" fill="#8a8a8a"></path></svg></a>
        </li>
    </ul>
</header>

    <div class="swiper-container carousel">
    <div class="swiper-wrapper">
        <div class="swiper-slide"><img src="assets/img/banner/00.jpg" class="d-block w-100" alt=""></div>
        <div class="swiper-slide"><img src="assets/img/banner/01.jpg" class="d-block w-100" alt=""></div>
        <div class="swiper-slide"><img src="assets/img/banner/02.jpg" class="d-block w-100" alt=""></div>
        <div class="swiper-slide"><img src="assets/img/banner/03.jpg" class="d-block w-100" alt=""></div>
        <div class="swiper-slide"><img src="assets/img/banner/04.jpg" class="d-block w-100" alt=""></div>
        <div class="swiper-slide"><img src="assets/img/banner/05.jpg" class="d-block w-100" alt=""></div>
        <div class="swiper-slide"><img src="assets/img/banner/06.jpg" class="d-block w-100" alt=""></div>
        <div class="swiper-slide"><img src="assets/img/banner/07.jpg" class="d-block w-100" alt=""></div>
        <div class="swiper-slide"><img src="assets/img/banner/08.jpg" class="d-block w-100" alt=""></div>
    </div>
    <div class="swiper-pagination"></div>
</div>
<main class="bd-masthead omcHome" id="content" role="main">
   <div class="container p-0">
    <!-- S about -->
    <div class="align-items-center">
        <!-- big size show title-->
        <h1 class="mb-4 mt-2 bd-text-purple-bright d-none d-md-flex">关于我们&nbsp;<small class="text-black-50">ABOUT US</small></h1>
        <!-- small size show title -->
        <h4 class="mb-2 mt-2 bd-text-purple-bright text-center s-none card-title">关于我们
            <p class="mb-0"><small>ABOUT US</small></p><i class="mb-3"></i></h4>
        <p class="text-justify">　　欧美城项目由振业集团投资并创立。为适应新常态下的消费升级需求，从构思策划、市场调研、项目决策到项目实施历经五年时间，有效延伸及融合欧美各文化特色业态，于2012 年启动并创立“欧美城文化小镇”项目，通过资源集成，打造全体验式实体平台的现代服务业、文化创意园区和高新科技企业孵化基地，为相关产业链条提供孵化服务。欧美城荣获“北京中关村高新科技企业”认证，是全国首创的“互联网+实体平台”新型商业模式，于 2016 年获评年度“全国股转 100 強企业（新三板）最具成长性十佳企业”、“全国战略转型十佳企业”荣誉。<br/>
            　　振业集团旗下控股的欧美城文化（北京）股份有限公司作为文化娱乐项目的主体公司，在全国中小股份转让系统挂牌上市，证券简称：欧美城，证券代码：430173。总部设在首都北京，进行联盟合作招商、品牌和商业模式输出，布局全国。首个欧美城文化小镇于2013年11月在广东汕头开业运营试点，规模空前、万众瞩目，这是欧美城商业试运作获得成功的开元之作，为打造惠州全国样板工程奠定了基础。2014年11月惠州欧美城文化小镇动工兴建。 
            <a href="http://www.occident.com.cn/wap/about.aspx" class="about-more"><small class="text-muted">更多详情</small></a>
        </p>
    </div>
    <!-- E about -->
    <div class="s-none mb-4">
        <iframe frameborder="0" src="https://v.qq.com/txp/iframe/player.html?vid=s0826jm4m6l" allowFullScreen="true" width="100%" height="200px"></iframe>
    </div>
    <!-- S subject -->
    <!-- 主题项目 -->
    <div class="card-deck pt-0 mb-4 s-none">
        <h4 class="mb-2 mt-2 bd-text-purple-bright text-center card-title">主题项目
            <p class="mb-0"><small>THEMATIC ITEMS</small></p><i class="mb-3"></i></h4>
        <div class="swiper-container1 topAd">
            <div class="swiper-wrapper">
                <div class="swiper-slide"><img src="assets/img/project/1.jpg" class="d-block w-100" alt=""></div>
                <div class="swiper-slide"><img src="assets/img/project/2.jpg" class="d-block w-100" alt=""></div>
                <div class="swiper-slide"><img src="assets/img/project/3.jpg" class="d-block w-100" alt=""></div>
                <div class="swiper-slide"><img src="assets/img/project/4.jpg" class="d-block w-100" alt=""></div>
                <div class="swiper-slide"><img src="assets/img/project/5.jpg" class="d-block w-100" alt=""></div>
                <div class="swiper-slide"><img src="assets/img/project/6.jpg" class="d-block w-100" alt=""></div>
                <div class="swiper-slide"><img src="assets/img/project/7.jpg" class="d-block w-100" alt=""></div>
                <div class="swiper-slide"><img src="assets/img/project/8.jpg" class="d-block w-100" alt=""></div>
                <div class="swiper-slide"><img src="assets/img/project/9.jpg" class="d-block w-100" alt=""></div>
            </div>
            <div class="swiper-button-next"></div>
            <div class="swiper-button-prev"></div>
        </div>
    </div>
    <!-- E subject -->
    <!-- small show new -->
    <!-- S news -->
    <div class="s-none mb-4 subject">
        <!-- small size show title -->
        <h4 class="mb-2 mt-2 bd-text-purple-bright text-center s-none card-title">新闻中心
            <p class="mb-0"><small>NEWS CENTER</small></p><i class="mb-3"></i></h4>
        <ul class="nav nav-tabs subject-ul" id="myTab" role="tablist">
            <li class="nav-item subject-li col p-0">
                <a class="nav-link text-center pl-0 pr-0 pt-2 pb-2 active" id="home-tab" data-toggle="tab" href="#home" role="tab" aria-controls="home" aria-selected="true">
                    欧美城资讯</a>
            </li>
            <li class="nav-item subject-li col p-0">
                <a class="nav-link text-center pl-0 pr-0 pt-2 pb-2" id="profile-tab" data-toggle="tab" href="#profile" role="tab" aria-controls="profile" aria-selected="false">
                    婚博馆资讯</a>
            </li>
            <li class="nav-item subject-li col p-0">
                <a class="nav-link text-center pl-0 pr-0 pt-2 pb-2" id="contact-tab" data-toggle="tab" href="#contact" role="tab" aria-controls="contact" aria-selected="false">
                    卡丁车馆资讯</a>
            </li>
        </ul>
        <div class="card card-body tab-content border-top-0 rounded-0" id="myTabContent">
            <div class="tab-pane fade show active" id="home" role="tabpanel" aria-labelledby="home-tab">
				<div class="media hdm">
				 <asp:Repeater ID="rpt_news1" runat="server">
				    <ItemTemplate>
					  <a href="detail.aspx?id=<%#Eval("id") %>">
						<img src="../upload/<%#Eval("NewPic") %>" class="hdm-pic mr-3" alt="">
						<div class="media-body w-50">
						 <h5 class="mt-0 text-truncate" style="margin-left:-10px"><%#DAL.DBHelper.GetSubString(Eval("title").ToString(),12)%></h5>
						 <p class="mb-0 text-justify">　　<%#DAL.DBHelper.GetSubString(Eval("desp").ToString(),50)%></p>
						</div>
					  </a>
					</ItemTemplate>
				  </asp:Repeater>
				</div>
            </div>
            <div class="tab-pane fade" id="profile" role="tabpanel" aria-labelledby="profile-tab">
                
                    <div class="media hdm">
                        <img src="assets/img/about/01.jpg" class="hdm-pic mr-3" alt="">
                        <div class="media-body w-50">
                            <h5 class="mt-0 text-truncate" style="margin-left:-10px">珠三角婚纱摄影新贵，欧美城婚博艺术中心华丽绽放</h5>
                            <p class="mb-0 text-justify">　　结婚就在欧美城：2018年9月，惠州欧美城匠心呈现欧美城婚博艺术中心，致力于为广大新人提供一站式的婚...</p>
                        </div>
                    </div>
                
                    <div class="media hdm">
                        <img src="assets/img/about/02.jpg" class="hdm-pic mr-3" alt="">
                        <div class="media-body w-50">
                            <h5 class="mt-0 text-truncate" style="margin-left:-10px">点赞100万+！抖音最火网红婚礼创意玩法都在这了！说不定就有一个你能用得上！</h5>
                            <p class="mb-0 text-justify">　　“怎么会爱上了他，并决定跟他回家，放弃了我的所有我的一切无所谓~”“我~曾~经~跨过山和大海~”“你...</p>
                        </div>
                    </div>
                
                    <div class="media hdm">
                        <img src="assets/img/about/03.jpg" class="hdm-pic mr-3" alt="">
                        <div class="media-body w-50">
                            <h5 class="mt-0 text-truncate" style="margin-left:-10px">谁说森系婚礼就不能奢华高贵？这场室内森系婚礼能一次性满足你三个愿望：奢华、浪漫、舒适</h5>
                            <p class="mb-0 text-justify">　　森系婚礼是近年来流行的婚礼风格之一，有些新人即想要它那种自然的舒适氛围，又找不到合适的户外场地，还有...</p>
                        </div>
                    </div>
                
            </div>
            <div class="tab-pane fade" id="contact" role="tabpanel" aria-labelledby="contact-tab">
                
                    <div class="media hdm">
                        <img src="assets/img/about/01.jpg" class="hdm-pic mr-3" alt="">
                        <div class="media-body w-50">
                            <h5 class="mt-0 text-truncate" style="margin-left:-10px">1月18日晚上，格林披治卡丁车月度常规赛晋级选手及比赛规则</h5>
                            <p class="mb-0 text-justify">　　与其仰望，不如并肩。签到、会议、合影、初赛、决赛、颁奖。格林披治卡丁车月度常规赛于汕头市金平区欧美城...</p>
                        </div>
                    </div>
                
                    <div class="media hdm">
                        <img src="assets/img/about/02.jpg" class="hdm-pic mr-3" alt="">
                        <div class="media-body w-50">
                            <h5 class="mt-0 text-truncate" style="margin-left:-10px">2018年终钜惠100套集结卡畅享折上折优惠仅限10天！</h5>
                            <p class="mb-0 text-justify">　　年终优惠来袭，小黄人送福利啦！集结卡：680元，原价780元。活动期间购买优惠100元。活动时间：1...</p>
                        </div>
                    </div>
                
                    <div class="media hdm">
                        <img src="assets/img/about/03.jpg" class="hdm-pic mr-3" alt="">
                        <div class="media-body w-50">
                            <h5 class="mt-0 text-truncate" style="margin-left:-10px">格林披治卡丁车馆11月月赛赛事花絮精彩回顾</h5>
                            <p class="mb-0 text-justify">　　格林披治卡丁车馆，11月月赛赛事花絮精彩回顾。还是熟悉的场地、还是熟悉的会议、还是熟悉的旗语，但是一...</p>
                        </div>
                    </div>
                
            </div>
            <a href="http://www.occident.com.cn/wap/news.aspx" class="about-more border-top pt-3"><small class="text-muted">更多详情</small></a>
        </div>
    </div>
    <!-- E news -->
    <!-- small show firendLinks -->
    <!-- S firendLinks -->
    <div class="s-none mb-4 subject">
        <!-- small size show title -->
        <h4 class="mb-2 mt-4 bd-text-purple-bright text-center s-none card-title">友情链接
            <p class="mb-0"><small>FRIENDSHIP LINK</small></p><i class="mb-3"></i></h4>
        <div class="logo row">
            <div class="col-3">
                <img class="img-fluid mx-auto p-1" src="assets/img/home/logo/1.png" width="80" height="80" alt=""/></div>
            <div class="col-3">
                <img class="img-fluid mx-auto p-1" src="assets/img/home/logo/2.png" width="80" height="80" alt=""/></div>
            <div class="col-3">
                <img class="img-fluid mx-auto p-1" src="assets/img/home/logo/3.png" width="80" height="80" alt=""/></div>
            <div class="col-3">
                <img class="img-fluid mx-auto p-1" src="assets/img/home/logo/4.png" width="80" height="80" alt=""/></div>
        </div>
    </div>
    <!-- E firendLinks -->
    <!-- small show content -->
    <!-- S content -->
    <div class="s-none contact">
        <!-- small size show title -->
        <h4 class="mb-2 mt-4 bd-text-purple-bright text-center s-none card-title">联系我们
            <p class="mb-0"><small>CONTENT US</small></p><i class="mb-3"></i></h4>
        <div class="container text-center">
            <strong>0752-2888688</strong>
            <p class="mb-0"><img class="img-fluid mx-auto border" src="assets/img/home/code/hz-m.png" width="120" height="120" alt=""/></p>
        </div>
    </div>
    <!-- E content -->
   </div>
   <div class="bgImg" style="background: url(assets/img/bg.png) no-repeat;opacity:.1;background-size:100%;"></div>
</main>
    <hr class="w-100 m-0">
    <footer class="bd-footer text-muted">
  <div class="container p-3 pt-md-5 pb-md-5">
    <p>地址：惠州市惠城小金口青塘村委会青一村小组金龙大道99号</p>
    <p>电话(总部)：0752-2898403</p>
    <p class="mb-2">版权所有 © 振业控股集团有限公司旗下</p>
  </div>
</footer>

    <script src="assets/js/vendor/jquery-2.1.0.min.js"></script>
<script src="dist/js/bootstrap.bundle.js"></script>
<script src="assets/js/vendor/jquery.swipebox.min.js"></script>   
<script src="assets/js/vendor/jquery.smoothState.min.js"></script> 
<script src="assets/js/vendor/materialize.min.js"></script>   
<script src="assets/js/vendor/jquery.mixitup.min.js"></script>
<script src="assets/js/vendor/masonry.min.js"></script>
<script src="assets/js/vendor/functions.js"></script>
<script src="https://cdn.bootcss.com/Swiper/4.4.6/js/swiper.min.js"></script>
<script type="text/javascript">
    var swiper = new Swiper('.swiper-container',{
        directon:'horizontal',//水平滑动
        speed:300,//滑动速度
        loop:true,
        autoplay:{//自动切换时间
            delay:2000,
            disableOnInteraction: false,
        },
        pagination: {
            el:'.swiper-pagination',
            dynamicBullets: true,
        }
    });
    var swiper1 = new Swiper('.swiper-container1', {
        slidesPerView: 2,
        spaceBetween: 30,
        directon:'horizontal',//水平滑动
        speed:300,//滑动速度
        loop:true,
        autoplay:{//自动切换时间
            delay:3000,
            disableOnInteraction: false,
        },
        pagination: {
            el:'.swiper-pagination1',
            dynamicBullets: false,
        },
        navigation: {
            nextEl: '.swiper-button-next',
            prevEl: '.swiper-button-prev',
        },
    });
  </script>
  </body>
</html>
