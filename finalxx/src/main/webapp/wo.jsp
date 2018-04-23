<%@ page language="java" contentType="text/html; charset=utf8"
	pageEncoding="utf8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>个人中心</title>
<meta http-equiv="content-type" content="text/html; charset=utf8">
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-3.2.1.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/personal.js"></script>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/core.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/fonts.css">
<link rel="shortcut icon" href="${pageContext.request.contextPath}/img/tubiao.png">
<!--插入头部小图标-->
<script>
	
$(function(){
	$("#zdingdan").click(function(){
		$("#dingdan").submit();
		console.log("123");
	})
})

</script>
</head>
<body>
	<div class="head">
		<div class="headfixed">
			<div class="headleft">
				<a>小米商城</a><a>MIUI</a><a>loT</a><a>云服务</a>
				<a>水滴</a><a>金融</a><a>有品</a><a>Select region</a>
			</div>
			<div class="headright">
				<div class="usernamexiala">
					<span id="username">1461991010</span>
					<div id="usernamexiala">
						<div class="more-solid icon"></div>
					</div>
				</div>
				<div class="headrightone">
					<span>消息通知</span>
				</div>
				<div class="headrighttwo">
					<span>我的订单</span>
				</div>
			</div>
			<div class="zheadright">
				<div class="shopcar">
					<i class="iconfont"></i>
				</div>
				<span>购物车<%--${} --%>0</span>
			</div>
		</div>
	</div>
	<div class="headone">
		<div class="hidden">
			<span>个人中心</span><br/>
			<span>评价晒单</span><br/>
			<span>我的喜欢</span><br/>
			<span>小米帐户</span><br/>
			<span>退出登录</span>
		</div>
	</div>
	<div class="headtwo">
		<div class="zheadtwo">
			<div class="headtwo1">
			</div>
			<div class="headtwo2">
				全部商品分类<!-- <span>全部商品分类</span>-->
			</div>
			<div class="headtwo3">
				小米手机
			</div>
			<div class="headtwo4">
				红米
			</div>
			<div class="headtwo5">
				笔记本
			</div>
			<div class="headtwo6">
				电视
			</div>
			<div class="headtwo7">
				盒子
			</div>
			<div class="headtwo8">
				新品
			</div>
			<div class="headtwo9">
				路由器
			</div>
			<div class="headtwo10">
				智能硬件
			</div>
			<div class="headtwo11">
				服务
			</div>
			<div class="headtwo12">
				社区
			</div>
		</div>
	</div>
	<div class="bodyone">
		<div class="hidden1">
			<div class="hidden1fixed">
				<div class="allgoods">
					<div id="goods1" class="movegoods">
						&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<span>手机 &nbsp&nbsp电话卡</span>
						<div class="qianjing">
							<div class="arrow-right icon"></div>
						</div>
					</div>
					
					<div id="goods2" class="movegoods">
						&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<span>笔记本</span>
						<div class="qianjing">
							<div class="arrow-right icon"></div>
						</div>
					</div>
					
					<div id="goods3" class="movegoods">
						&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<span>电视 &nbsp&nbsp盒子</span>
						<div class="qianjing">
							<div class="arrow-right icon"></div>
						</div>
					</div>
					
					<div id="goods4" class="movegoods">
						&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<span>智能 &nbsp&nbsp家电</span>
						<div class="qianjing">
							<div class="arrow-right icon"></div>
						</div>
					</div>
					
					<div id="goods5" class="movegoods">
						&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<span>健康 &nbsp&nbsp家居 </span>
						<div class="qianjing">
							<div class="arrow-right icon"></div>
						</div>
					</div>
					
					<div id="goods6" class="movegoods">
						&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<span>耳机 &nbsp&nbsp机箱</span>
						<div class="qianjing">
							<div class="arrow-right icon"></div>
						</div>
					</div>
					
					<div id="goods7" class="movegoods">
						&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<span>出行 &nbsp&nbsp儿童</span>
						<div class="qianjing">
							<div class="arrow-right icon"></div>
						</div>
					</div>
					
					<div id="goods8" class="movegoods">
						&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<span>路由器 &nbsp&nbsp手机配件 </span>
						<div class="qianjing">
							<div class="arrow-right icon"></div>
						</div>
					</div>
					
					<div id="goods9" class="movegoods">
						&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<span>移动电源 &nbsp&nbsp插线板 </span>
						<div class="qianjing">
							<div class="arrow-right icon"></div>
						</div>
					</div>
					
					<div id="goods10" class="movegoods">
						&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<span>米兔 &nbsp&nbsp生活周边</span>
						<div class="qianjing">
							<div class="arrow-right icon"></div>
						</div>
					</div>
					
				</div>
				
				<div class="goodslist1">
					<div id="li1">
					</div>
					<ul class="phone1" >
						<c:forEach items="${phone1.dataList}" var="shuju"> 
						<li>${shuju}</li>
						</c:forEach>
					</ul>
					<div id="li2">
					</div>
					<ul class="phone2" >
						<c:forEach items="${phone2.dataList}" var="shuju"> 
						<li>${shuju}</li>
						</c:forEach>
					</ul>
					<div id="li3">
					</div>
					<ul class="phone3" >
						<c:forEach items="${phone3.dataList}" var="shuju"> 
						<li>${shuju}</li>
						</c:forEach>
					</ul>
				</div>
				
				<div class="goodslist2">
					<div id="li4">
					</div>
					<ul class="phone4">
						<c:forEach items="${notebook1.dataList}" var="shuju"> 
						<li>${shuju}</li>
						</c:forEach>
					</ul>
					<div id="li5">
					</div>
					<ul class="phone5">
						<c:forEach items="${notebook2.dataList}" var="shuju"> 
						<li>${shuju}</li>
						</c:forEach>
					</ul>
					<div id="li6">
					</div>
					<ul class="phone6">
						<c:forEach items="${notebook3.dataList}" var="shuju"> 
						<li>${shuju}</li>
						</c:forEach>
					</ul>
				</div>
				
				<div class="goodslist3">
					<div id="li7">
					</div>
					<ul class="phone7">
						<c:forEach items="${tv1.dataList}" var="shuju"> 
						<li>${shuju}</li>
						</c:forEach>
					</ul>
					<div id="li8">
					</div>
					<ul class="phone8">
						<c:forEach items="${tv2.dataList}" var="shuju"> 
						<li>${shuju}</li>
						</c:forEach>
					</ul>
					<div id="li9">
					</div>
					<ul class="phone9">
						<c:forEach items="${tv3.dataList}" var="shuju"> 
						<li>${shuju}</li>
						</c:forEach>
					</ul>
				</div>
				
				<div class="goodslist4">
					<div id="li10">
					</div>
					<ul class="phone10">
						<c:forEach items="${Intelligence1.dataList}" var="shuju"> 
						<li>${shuju}</li>
						</c:forEach>
					</ul>
					<div id="li11">
					</div>
					<ul class="phone11">
						<c:forEach items="${Intelligence2.dataList}" var="shuju"> 
						<li>${shuju}</li>
						</c:forEach>
					</ul>
					<div id="li12">
					</div>
					<ul class="phone12">
						<c:forEach items="${Intelligence3.dataList}" var="shuju"> 
						<li>${shuju}</li>
						</c:forEach>
					</ul>
				</div>
				
				<div class="goodslist5">
					<div id="li13">
					</div>
					<ul class="phone13">
						<c:forEach items="${Furnishing1.dataList}" var="shuju"> 
						<li>${shuju}</li>
						</c:forEach>
					</ul>
					<div id="li14">
					</div>
					<ul class="phone14">
						<c:forEach items="${Furnishing2.dataList}" var="shuju"> 
						<li>${shuju}</li>
						</c:forEach>
					</ul>
					<div id="li15">
					</div>
					<ul class="phone15">
						<c:forEach items="${Furnishing3.dataList}" var="shuju"> 
						<li>${shuju}</li>
						</c:forEach>
					</ul>
				</div>
				
				<div class="goodslist6">
					<div id="li16">
					</div>
					<ul class="phone16">
						<c:forEach items="${Headset1.dataList}" var="shuju"> 
						<li>${shuju}</li>
						</c:forEach>
					</ul>
					<div id="li17">
					</div>
					<ul class="phone17">
						<c:forEach items="${Headset2.dataList}" var="shuju"> 
						<li>${shuju}</li>
						</c:forEach>
					</ul>
					<div id="li18">
					</div>
					<ul class="phone18">
						<c:forEach items="${Headset3.dataList}" var="shuju"> 
						<li>${shuju}</li>
						</c:forEach>
					</ul>
				</div>
				
				<div class="goodslist7">
					<div id="li19">
					</div>
					<ul class="phone19">
						<c:forEach items="${Travel1.dataList}" var="shuju"> 
						<li>${shuju}</li>
						</c:forEach>
					</ul>
					<div id="li20">
					</div>
					<ul class="phone20">
						<c:forEach items="${Travel2.dataList}" var="shuju"> 
						<li>${shuju}</li>
						</c:forEach>
					</ul>
					<div id="li21">
					</div>
					<ul class="phone21">
						<c:forEach items="${Travel3.dataList}" var="shuju"> 
						<li>${shuju}</li>
						</c:forEach>
					</ul>
				</div>
				
				<div class="goodslist8">
					<div id="li22">
					</div>
					<ul class="phone22">
						<c:forEach items="${Router1.dataList}" var="shuju"> 
						<li>${shuju}</li>
						</c:forEach>
					</ul>
					<div id="li23">
					</div>
					<ul class="phone23">
						<c:forEach items="${Router2.dataList}" var="shuju"> 
						<li>${shuju}</li>
						</c:forEach>
					</ul>
					<div id="li24">
					</div>
					<ul class="phone24">
						<c:forEach items="${Router3.dataList}" var="shuju"> 
						<li>${shuju}</li>
						</c:forEach>
					</ul>
				</div>
				
				<div class="goodslist9">
					<div id="li25">
					</div>
					<ul class="phone25">
						<c:forEach items="${board1.dataList}" var="shuju"> 
						<li>${shuju}</li>
						</c:forEach>
					</ul>
					<div id="li26">
					</div>
					<ul class="phone26">
						<c:forEach items="${board2.dataList}" var="shuju"> 
						<li>${shuju}</li>
						</c:forEach>
					</ul>
					<div id="li27">
					</div>
					<ul class="phone27">
						<c:forEach items="${board3.dataList}" var="shuju"> 
						<li>${shuju}</li>
						</c:forEach>
					</ul>
				</div>
				
				<div class="goodslist10">
					<div id="li28">
					</div>
					<ul class="phone28">
						<c:forEach items="${life1.dataList}" var="shuju"> 
						<li>${shuju}</li>
						</c:forEach>
					</ul>
					<div id="li29">
					</div>
					<ul class="phone29">
						<c:forEach items="${life2.dataList}" var="shuju"> 
						<li>${shuju}</li>
						</c:forEach>
					</ul>
					<div id="li30">
					</div>
					<ul class="phone30">
						<c:forEach items="${life3.dataList}" var="shuju"> 
						<li>${shuju}</li>
						</c:forEach>
					</ul>
				</div>
				
			</div>
		</div>
		
		<div class="hidden2">
			<div class="hidden2fixed">
				<div class="hot1">
				新品
				</div>
				<div class="hot2">
				新品
				</div>
				<div class="hidden2-1">
					<img src="${pageContext.request.contextPath}/img/phone1.png">
					<br><br><span>小米MIX2</span>
					<br><span class="price">3299起</span>
				</div>
				<div class="hidden2-2">
					<img src="${pageContext.request.contextPath}/img/phone2.png">
					<br><br><span>小米MIX2</span>
					<br><span class="price">3299起</span>
				</div>
				<div class="hidden2-3">
					<img src="${pageContext.request.contextPath}/img/phone3.png">
					<br><br><span>小米MIX2</span>
					<br><span class="price">3299起</span>
				</div>
				<div class="hidden2-4">
					<img src="${pageContext.request.contextPath}/img/phone4.png">
					<br><br><span>小米MIX2</span>
					<br><span class="price">3299起</span>
				</div>
				<div class="hidden2-5">
					<img src="${pageContext.request.contextPath}/img/phone5.png">
					<br><br><span>小米MIX2</span>
					<br><span class="price">3299起</span>
				</div>
			</div>
		</div>
		
		<div class="hidden3">
			<div class="hidden3fixed">
				<div class="hot1">
				新品
				</div>
				<div class="hot2">
				新品
				</div>
				<div class="hidden3-1">
					<img src="${pageContext.request.contextPath}/img/phone6.png">
					<br><br><span>小米MIX2</span>
					<br><span class="price">3299起</span>
				</div>
				<div class="hidden3-2">
					<img src="${pageContext.request.contextPath}/img/phone7.png">
					<br><br><span>小米MIX2</span>
					<br><span class="price">3299起</span>
				</div>
				<div class="hidden3-3">
					<img src="${pageContext.request.contextPath}/img/phone8.png">
					<br><br><span>小米MIX2</span>
					<br><span class="price">3299起</span>
				</div>
				<div class="hidden3-4">
					<img src="${pageContext.request.contextPath}/img/phone9.png">
					<br><br><span>小米MIX2</span>
					<br><span class="price">3299起</span>
				</div>
				<div class="hidden3-5">
					<img src="${pageContext.request.contextPath}/img/phone10.png">
					<br><br><span>小米MIX2</span>
					<br><span class="price">3299起</span>
				</div>
			</div>
		</div>
		
		<div class="hidden4">
			<div class="hidden4fixed">
				<div class="hot1">
				新品
				</div>
				<div class="hot2">
				新品
				</div>
				<div class="hidden4-1">
					<img src="${pageContext.request.contextPath}/img/phone11.png">
					<br><br><span>小米MIX2</span>
					<br><span class="price">3299起</span>
				</div>
				<div class="hidden4-2">
					<img src="${pageContext.request.contextPath}/img/phone12.png">
					<br><br><span>小米MIX2</span>
					<br><span class="price">3299起</span>
				</div>
				<div class="hidden4-3">
					<img src="${pageContext.request.contextPath}/img/phone13.png">
					<br><br><span>小米MIX2</span>
					<br><span class="price">3299起</span>
				</div>
				<div class="hidden4-4">
					<img src="${pageContext.request.contextPath}/img/phone14.png">
					<br><br><span>小米MIX2</span>
					<br><span class="price">3299起</span>
				</div>
				
			</div>
		</div>
		
		<div class="hidden5">
			<div class="hidden5fixed">
				<div class="hot1">
				新品
				</div>
				<div class="hot2">
				新品
				</div>
				<div class="hidden5-1">
					<img src="${pageContext.request.contextPath}/img/phone15.png">
					<br><br><span>小米MIX2</span>
					<br><span class="price">3299起</span>
				</div>
				<div class="hidden5-2">
					<img src="${pageContext.request.contextPath}/img/phone16.png">
					<br><br><span>小米MIX2</span>
					<br><span class="price">3299起</span>
				</div>
				<div class="hidden5-3">
					<img src="${pageContext.request.contextPath}/img/phone17.png">
					<br><br><span>小米MIX2</span>
					<br><span class="price">3299起</span>
				</div>
				<div class="hidden5-4">
					<img src="${pageContext.request.contextPath}/img/phone18.png">
					<br><br><span>小米MIX2</span>
					<br><span class="price">3299起</span>
				</div>
				<div class="hidden5-5">
					<img src="${pageContext.request.contextPath}/img/phone19.png">
					<br><br><span>小米MIX2</span>
					<br><span class="price">3299起</span>
				</div>
				
			</div>
		</div>
		
		<div class="hidden6">
			<div class="hidden6fixed">
				<div class="hidden6-1">
					<img src="${pageContext.request.contextPath}/img/phone20.png">
					<br><br><span>小米MIX2</span>
					<br><span class="price">3299起</span>
				</div>
				<div class="hidden6-2">
					<img src="${pageContext.request.contextPath}/img/phone21.png">
					<br><br><span>小米MIX2</span>
					<br><span class="price">3299起</span>
				</div>
				<div class="hidden6-3">
					<img id="custom1" src="${pageContext.request.contextPath}/img/phone22.png">
					<br><br><span>小米MIX2</span>
					<br><span class="price">3299起</span>
				</div>
				<div class="hidden6-4">
					<img src="${pageContext.request.contextPath}/img/phone23.png">
					<br><br><span>小米MIX2</span>
					<br><span class="price">3299起</span>
				</div>
			</div>
		</div>
		
		<div class="hidden7">
			<div class="hidden7fixed">
				<div class="hot1">
				大容量
				</div>
				<div class="hot2">
				双千兆
				</div>
				<div class="hot3">
				双频
				</div>
				<div class="hidden7-1">
					<img src="${pageContext.request.contextPath}/img/phone24.png">
					<br><br><span>小米MIX2</span>
					<br><span class="price">3299起</span>
				</div>
				<div class="hidden7-2">
					<img src="${pageContext.request.contextPath}/img/phone25.png">
					<br><br><span>小米MIX2</span>
					<br><span class="price">3299起</span>
				</div>
				<div class="hidden7-3">
					<img src="${pageContext.request.contextPath}/img/phone26.png">
					<br><br><span>小米MIX2</span>
					<br><span class="price">3299起</span>
				</div>
				<div class="hidden7-4">
					<img src="${pageContext.request.contextPath}/img/phone27.png">
					<br><br><span>小米MIX2</span>
					<br><span class="price">3299起</span>
				</div>
				<div class="hidden7-5">
					<img src="${pageContext.request.contextPath}/img/phone28.png">
					<br><br><span>小米MIX2</span>
					<br><span class="price">3299起</span>
				</div>
			</div>
		</div>
		
		<div class="hidden8">
			<div class="hidden8fixed">
				<div class="hot1">
				航拍利器
				</div>
				<div class="hot2">
				热卖
				</div>
				<div class="hidden8-1">
					<img src="${pageContext.request.contextPath}/img/phone30.png">
					<br><br><span>小米MIX2</span>
					<br><span class="price">3299起</span>
				</div>
				<div class="hidden8-2">
					<img src="${pageContext.request.contextPath}/img/phone31.png">
					<br><br><span>小米MIX2</span>
					<br><span class="price">3299起</span>
				</div>
				<div class="hidden8-3">
					<img src="${pageContext.request.contextPath}/img/phone32.png">
					<br><br><span>小米MIX2</span>
					<br><span class="price">3299起</span>
				</div>
				<div class="hidden8-4">
					<img src="${pageContext.request.contextPath}/img/phone33.png">
					<br><br><span>小米MIX2</span>
					<br><span class="price">3299起</span>
				</div>
			</div>
		</div>
		
		
		<div class="bodyonefixed">
			<div class="userseat">
				<br/><span>首页</span><span> &nbsp></span><span> &nbsp个人中心</span>
			</div>
			<div class="bodyone1">
				<div class="bodyone1-1">
					<br/><span>订单中心</span>
					<ul style="list-style-type:none">
						<li id="zdingdan">我的订单</li>
						<form  id="dingdan" action="dingdan">
						</form>
						<li>意外保</li>
						<li>团购订单</li>
						<li>评价晒单</li>
						<li>话费充值订单</li>
						<li>以旧换新单</li>
					</ul>
				</div>
				<div class="bodyone1-2">
					<br/><span>个人中心</span>
					<ul style="list-style-type:none">
						<li>我的个人中心</li>
						<li>消息通知</li>
						<li>购买资格</li>
						<li>现金账户</li>
						<li>小米礼品卡</li>
						<li>现金券</li>
						<li>喜欢的商品</li>
						<li>优惠券</li>
						<li>收货地址</li>
					</ul>
				</div>
				<div class="bodyone1-3">
					<br/><span>售后服务</span>
					<ul style="list-style-type:none">
						<li>服务记录</li>
						<li>申请记录</li>
						<li>领取快递报销</li>
					</ul>
				</div>
				
			</div>
			
			<div class="bodyone2">
				<div class="personal">	
					<div id="zusertx">
						<!-- <div id="usertx" style="background-image:url(${pageContext.request.contextPath}/img/phone3000.png)">
						</div> -->
					</div>
					<div class="message">
						<span id="zhanghao">1461991010</span>
						<br/><span id="morning">下午好</span><br/>
						<span id="update"><a href="${pageContext.request.contextPath}/update">修改个人信息</a></span>
					</div>
				</div>
				<div class="danger">
					<span>账号安全：<span><span id="rank">普通</span>
					<br/>
					<span>绑定手机：185******05</span>
					<br/>
					<span>绑定邮箱：</span>
				</div>
				<div class="binding">
					绑定
				</div>
				<div class="line">
				</div>
				<div class="details">
					<div class="payment">
						<img src="${pageContext.request.contextPath}/img/phone35.png">
						<div class="demo">
							<span>待支付的订单:0</span><br/>
							<span class="check">查看待支付的订单></span>
						</div>
					</div>
					<div class="receipt">
						<img src="${pageContext.request.contextPath}/img/phone36.png">
						<div class="demo">
							<span>待收获订单:0</span><br/>
							<span class="check">查看待收获订单></span>
						</div>
					</div>
					<div class="evaluate">
						<img src="${pageContext.request.contextPath}/img/phone37.png">
						<div class="demo">
							<span>待评价的商品:0</span><br/>
							<span class="check">查看待评价商品></span>
						</div>
					</div>
					<div class="like">
						<img src="${pageContext.request.contextPath}/img/phone38.png">
						<div class="demo">
							<span>喜欢的商品:0</span><br/>
							<span class="check">查看喜欢的商品></span>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	
	<div class="bodytwo">
		<div class="bodytwofixed">
			<div class="bodytwo1">
				<div class="bodytwo1div bodytwo1-1">
					<i class="iconfont"></i>&nbsp<span>预约维修服务</span>
				</div>
				<div class="bodytwo1div bodytwo1-2">
					<i class="iconfont"></i>&nbsp<span>7天无理由退货</span>
				</div>
				<div class="bodytwo1div bodytwo1-3">
					<i class="iconfont"></i>&nbsp<span>15天免费换货</span>
				</div>
				<div class="bodytwo1div bodytwo1-4">
					<i class="iconfont"></i>&nbsp<span>满150包邮</span>
				</div>
				<div class="bodytwo1div bodytwo1-5">
					<i class="iconfont"></i>&nbsp<span>520余家售后网点</span>
				</div>
			</div>
			
			<div class="bodytwo2">
				<div class="bodytwo2-1">
					<span>帮助中心</span><span>服务支持</span><span>线下门店</span><span>关于小米</span><span>关注我们</span><span>特色服务</span>
					<ul class="bodytwo2ul1">
						<li>账户管理</li>
						<li>购物指南</li>
						<li>订单操作</li>
					</ul>
					<ul class="bodytwo2ul2">
						<li>售后政策</li>
						<li>自助服务</li>
						<li>相关下载</li>
					</ul>
					<ul class="bodytwo2ul3">
						<li>小米之家</li>
						<li>服务网点</li>
						<li>零售网点</li>
					</ul>
					<ul class="bodytwo2ul4">
						<li>了解小米</li>
						<li>加入小米</li>
						<li>联系我们</li>
					</ul>
					<ul class="bodytwo2ul5">
						<li>新浪微博</li>
						<li>小米部落</li>
						<li>官方微信</li>
					</ul>
					<ul class="bodytwo2ul6">
						<li>F码通道</li>
						<li>礼物码</li>
						<li>防伪查询</li>
					</ul>
				</div>
			
				<div id="lianxikefu">
					<img src="${pageContext.request.contextPath}/img/zphone.png" id="zphone">
					<div id="online">
						24小时在线客服
					</div>
				</div>
			</div>
		</div>
	</div>
	
	<div class="bodyfoot">
		<div id="tail">
			<img src="${pageContext.request.contextPath}/img/tail.png">
		</div>
	</div>	
	
</body>
</html>