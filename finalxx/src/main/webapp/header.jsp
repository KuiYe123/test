<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Navigation</title>

<link rel = "stylesheet" type = "text/css" href = "${pageContext.request.contextPath}/css/header.css"/>
<link rel = "stylesheet" type = "text/css" href = "${pageContext.request.contextPath}/css/fonts.css">
<script type="text/javascript" src = "${pageContext.request.contextPath}/js/jquery-3.2.1.min.js"></script>

<script type="text/javascript">
$(function(){
	
	$(".user").mouseenter(function(){
		$(".user_menu").slideDown(300);
	})
	$(".user").mouseleave(function(){
		$(".user_menu").slideUp(300);
	}) 
	
	/*$.ajax({
		url:'selectShoppingCarts',
		type:'post', 
		data:{
			"userid":${us.userid},
		},
		success:function(data){
			console.log(data);
			$(".J_cartNum").text("("+data+")");
		}
	})*/
	
})



</script>

</head>
<body>


	<div class="central clearfix">
	<div class="choise">
		<a href="https://www.mi.com/index.html">小米商城</a>
		<span class="sep"> | </span>
		<a href="http://www.miui.com/">MIUI</a>
		<span class="sep"> | </span>
		<a href="file:///F:/%E4%BA%8C%E6%9C%9F%E9%A1%B9%E7%9B%AE/MI/MI_LOT.HTML">loT</a>
		<span class="sep"> | </span>
		<a href="https://i.mi.com/">云服务</a>
		<span class="sep"> | </span>
		<a class="ShuiDi" href="file:///F:/%E4%BA%8C%E6%9C%9F%E9%A1%B9%E7%9B%AE/MI/MI_Water.HTML">水滴</a>
		<span class="sep"> | </span>
		<a href="https://jr.mi.com/?from=micom"onclick="alert(12312312)">金融</a>
		<span class="sep"> | </span>
		<a href="https://youpin.mi.com/">有品</a>
		<span class="sep"> | </span>
		<a href="https://www.mi.com/index.html#J_modal-globalSites">Select Region</a>
	</div>
	<div class="info floatright">
	<a href="${pageContext.request.contextPath }/Shopping">
	<i class="iconfont"></i>购物车 (${us1.shoppingcart})
			<span class="cart-mini-num J_cartNum" style="margin-left: -6px;"></span>
	</a>
	</div>
	<c:if test="${sessionScope.user==null}">
	<div  class="login floatright ">
	<a href ="${pageContext.request.contextPath }/Login.jsp">登录</a>
	<span class="sep"> | </span>
	<a href = "https://account.xiaomi.com/pass/register">注册</a>
	<span class="sep"> | </span>
	<a href="https://order.mi.com/message/list">消息通知</a>
	</div>
	</c:if>
	<c:if test="${sessionScope.user!=null}">
	<div class = "headermessage floatright " id = "userinfo">
			<span class = "user">
				<a href = "userinfo.jsp" class = "username">
					<span class = "name">${sessionScope.user.username}</span>
					<i class = "iconfont"></i>
				</a>
				<ul class = "user_menu">
					<li><a href = "${pageContext.request.contextPath }/pollingod">个人中心</a></li>
					<li><a>评价晒单</a></li>
					<li><a>我的喜欢</a></li>
					<li><a>小米账户</a></li>
					<li><a href="${pageContext.request.contextPath }/exit">退出登录</a></li>
				</ul>
			</span>
			<span class = "separation ">|</span>
			<a href = "order.jsp" target="_black">消息通知</a>
			<span class = "separation ">|</span>
			<a href = "ni.jsp" target="_black">我的订单</a>
	</div>
	</c:if>
</div>


<form id="tologForm" action="toLog" method="post">
<input type="hidden"/>
</form>

<form id="toRegForm" action="toReg" method="post">
<input type="hidden"/>
</form>
<form action="mitwo" method="post" id="mis" style="display: block;"></form>	
<form action="indexone" method="post" id="index1" style="display: block;"></form>
<form action="togwcto" method="post" id="gwc1" style="display: block;"></form>	
</body>
</html>

