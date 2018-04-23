<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Insert title here</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/header.css" />
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/fonts.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/HomePage.css">
<link href="${pageContext.request.contextPath}/css/test.css" rel="stylesheet" />
<link href="${pageContext.request.contextPath}/css/login.css" rel="stylesheet" />
<link rel="icon" href="${pageContext.request.contextPath}/image/mi.ico" type="${pageContext.request.contextPath}/${pageContext.request.contextPath}/image/x-icon">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-3.2.1.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/search.js"></script>
</head>
<body>
	<!-- 头部-->
	<!-- 黑色框-->
	<div class="SU">
		<%@ include file="header.jsp"%>
	</div>
	<input type='hidden' id='searchTerm' value="${search}"/>
	<input type='hidden' id='up-page' value=''/>
	<input type='hidden' id='now-page' value=''/>
	<input type='hidden' id='down-page' value=''/>
	<!-- 在js里面调用 $('#PageContext').val() -->
	<input id="PageContext" type="hidden" value="${pageContext.request.contextPath}" />

	</div>
	<!-- 产品0.0----搜索框-->

	<div class="XY">
		<div class="xyy">
			<!-- 产品-->
			<div class=xy-a>
				<div class="logo-ex">
					<!--图标-->
					<a class="logo" href="//www.mi.com/index.html"> </a>
				</div>
				<ul class="nav_list">
					<li class="null_wi">
					<li class="item qure">
						<!--小米手机--> <a class="link"> <span>小米手机</span></a>
					</li>
					<li class="item">
						<!--红米--> <a class="link"> <span>红米</span></a>
					</li>
					<li class="item ">
						<!--笔记本--> <a class="link"> <span>笔记本</span></a>
					</li>
					<li class="item qure2">
						<!--电视--> <a class="link"> <span>电视</span></a>
					</li>
					<li class="item ">
						<!--盒子--> <a class="link"> <span>盒子</span></a>
					</li>
					<li class="item ">
						<!--新品--> <a class="link"> <span>新品</span></a>
					</li>
					<li class="item">
						<!--路由器--> <a class="link"> <span>路由器</span></a>
					</li>
					<li class="item">
						<!--智能硬件--> <a class="link"> <span>智能硬件</span></a>
					</li>
					<li class="item">
						<!--服务--> <a class="link"> <span>服务</span></a>
					</li>
					<li class="item">
						<!--社区--> <a class="link"> <span>社区</span></a>
					</li>
				</ul>
			</div>
			<!--搜索框-->
			<div class="xy-b">
				<div class="xy-b-s">
					<input class="xxs" placeholder="搜索您感兴趣的……" type="text"name="mesege"> 
					<input class="xxx iconfont" id='search-click' type="button" value=""> 
					<input type="hidden" name="thisPage" value="1">
					<input type="hidden" name="OnePageCount" value="8">
				</div>
			</div>
		</div>
	</div>
	<!-- 中部-->
	<div class="SY">
		<div class="SY_font">
			<a href=?>首页 </a>> <a href=?> 全部结果</a>> <span>手机</span>
			<!--获的关键字-->
		</div>
	</div>
	<div class="SY_CENTER">
	
		<div class="search-one">
			<ul>
				<li class="list_1">分类：</li>
				<li class="list_2">全部</li>
				<li class='ni'>电视</li>
				<li class='ni'>手机</li>
				<li class='ni'>路由器</li>
				<li class='ni'>耳机</li>
				<li class='ni'>箱包</li>
				<li class='ni'>平衡车</li>
				<li class='ni'>小米移动电源</li>
			</ul>
		</div>
		<div class="search-two">
			<ul>
				<li class="list_1">机型：</li>
				<li class="list_2">全部</li>
				<li class='ni'>红米 Note5</li>
				<li class='ni'>红米 5Plus</li>
				<li class='ni'>红米 5A</li>
				<li class='ni'>红米 Note5A</li>
				<li class='ni'>红米 4X</li>
			</ul>
		</div>

	</div>

	<div class="SY_FOOLTER">
	
		<div class="SY_FOOLTER_TOP">
			<ul>
				<li class='SY_FOOLTER_TOP_list_1'>推荐</li>
				<li class='SY_FOOLTER_TOP_list_2'>新品</li>
				<li class='SY_FOOLTER_TOP_list_2'><a
					href='Servletasc?thisPage=1&OnePageCount=8'>价格↓</a></li>
				<li class='SY_FOOLTER_TOP_list_2'><a
					href='Servletdesc?thisPage=1&OnePageCount=8'>价格↑</a></li>
				<li class='SY_FOOLTER_TOP_list_2'>评论最多</li>
			</ul>
		</div>
		
		<div class='SY_FOOLTER_CENTER clearfix'>
		
			<div class='img'>
				<i class='iconfont love'></i>
				<i class='iconfont shoppingcart'></i>
				<img src='${pageContext.request.contextPath}/image/xaiomi5x_gold.jpg' class='img1' >
				<img src='${pageContext.request.contextPath}/image/xiaomi6_blue.jpg' class='img2' >
				<img src='${pageContext.request.contextPath}/image/xiaomi6_black.jpg' class='img3' >
				<div class='note'>适用于随便撒子</div>
				<div class='goodsname'><span>红米5Plus </span></div>
				<div class='price'><span class='nowprice'>1688元&nbsp&nbsp&nbsp</span><span class='oldprice'><del>59元</del></span></div>
				
				<div class='ximg zximg1' ><img class='xximg' src='${pageContext.request.contextPath}/image/xaiomi5x_gold.jpg'></div>
				<div class='ximg zximg2' ><img class='xximg' src='${pageContext.request.contextPath}/image/xiaomi6_blue.jpg'></div>
				<div class='ximg zximg3' ><img class='xximg' src='${pageContext.request.contextPath}/image/xiaomi6_black.jpg'></div>
				
			</div>
			
			<div class='img'></div>
			<div class='img'></div>
			<div class='img'></div>
			<div class='img'></div>
			<div class='img'></div>
			
			
			<!--  <div class='page'>
			<div class='up-page'><</div>
			<span class='nowpage'>当前第${page.nowpage}页</span>
			<div class='down-page'>></div>
			<span class='all-pages'>一共${page.total}页</span>
			</div>-->
			
			<div class='jianxi'><div id='fill'></div></div>
			<!--  <div id='jianxi'></div>
			<div class='search-find'>
				<div class='search-zfind'>
					<h2>抱歉，没有搜索到与“<span class='search-term'>匪夷所思</span>”有关的商品</h2><br/>
					<span class='search-message'>请检查您的输入是否有误</span><br/>
					<span class='search-message'>如有任何意见或建议，期待您<span class='search-term'>反馈给我们</span></span>
					<br/><br/><br/>
					<span>您还可以尝试以下搜索：<span class='search-term'>小米</span> | <span class='search-term'>红米</span> | <span class='search-term'>笔记本</span> | <span class='search-term'>净水器</span></span>
				</div>
			</div>-->
				
		</div>
		
			
	</div>
	
	<div class='tail'>
		<div id='tail'>
			<img src='${pageContext.request.contextPath}/img/tail.png'>
		</div>
	</div>
	
	
</body>
</html>