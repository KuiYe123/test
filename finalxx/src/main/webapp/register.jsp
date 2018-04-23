<%@ page language="java" contentType="text/html; charset=utf8"
    pageEncoding="utf8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf8">
 <title>register</title>
 <script type="text/javascript" src="js/register.js"></script>
 <link rel="stylesheet" type="text/css" href="css/register.css">
 <script type="text/javascript" src="js/jquery-3.2.1.min.js"></script>
</head>
<body>
	<div class="headmax">
		<div class="head">
			<img class="gesture" src="img/jindong.png"/>
			<div class="logotitle">
				欢迎注册
			</div>
			<div class="headcontent">
				<span id="username">已有账号？</span>
				<a id="password1" href="https://www.baidu.com/">请登录</a>
			</div>
		</div>
	</div>
	
	<div class="lineone">
	</div>
	
	<div class="superbody">
		<div class="body">
			<div class="bodyone">
			 <form action='first/registersuccess' method='post' id='tijiao'>
				<div class="bodyone1">
					<div class="choose">
						用户名
					</div>
					<input id="yonghuming" name='username' class="bodyinput" placeholder="你的账户名和登录名">
					<div class='true'>
						<span>可以注册</span>
					</div>
				</div>
				
				<div class="bodyone2">
					<div class="choose">
						设置密码
					</div>
					<input id="mima" class="bodyinput" name='password' type='password' placeholder="建议至少使用两种字符组合">
					<div class="true1">
						<span>可以使用</span>
					</div>
				</div>	
				<div class="bodyone3">
					<div class="choose">
						确认密码
					</div>
					<input id="queren" class="bodyinput" type="password" placeholder="请再次输入密码">
					<div class='true2'>
						<span>可以使用</span>
					</div>
				</div>	
				<div class="bodyone4">	
					<div class="choose">
						中国0086
					</div>
					<input id="chine" name='phone' class="bodyinput" placeholder="建议使用常用手机">
					<div id='phone'>
					
					</div>
				</div>
				<div class="bodyone5">	
					<div class="choose">
						验证码
					</div>
					<input id="code1" class="bodyinput" placeholder="请输入验证码">
					<img id="imgObj" alt="验证码" src="${pageContext.request.contextPath}/getCode">
					<span id='change'>换一张</span>
					<div id='proving'>
						验证一致
					</div>
				</div>
				<div class="bodyone6">	
					<div class="choose">
						手机验证码
					</div>
					<input id="code2" class="bodyinput" placeholder="请输入手机验证码">
					<div class="Verification gesture">
						获取验证码
					</div>
				</div>
				<div class="bodyone7">	
					立即注册
				</div>
			 </form>					
			</div>
			<div class="bodytwo">
				<div class="bodytwo1">
					<img src="img/401.png">
					<span id="qiye" class="gesture">企业用户注册</span>
				</div>
				<div class="bodytwo2">
					<img src="img/402.png">
					<span id="guoji" class="gesture">INTERNATIONAL<br/>CUSTOMERS</span>
				</div>
			</div>
		</div>
		
	


	</div>
	
	<div class="linetwo">
	</div>

	<div class="tail">
		<div class="tailone">
			<span class="tailtext gesture" id="us">关于我们</span>&nbsp&nbsp|<span class="tailtext gesture" id="us1">联系我们</span>&nbsp&nbsp|
			<span class="tailtext gesture" id="people">人才招聘</span>&nbsp&nbsp|<span class="tailtext gesture" id="business">商家入驻</span>&nbsp&nbsp|
			<span class="tailtext gesture" id="Advertisement">广告服务</span>&nbsp&nbsp|<span class="tailtext gesture" id="phones">手机京东</span>&nbsp&nbsp|
			<span class="tailtext gesture" id="friend">友情链接</span>&nbsp&nbsp|<span class="tailtext gesture" id="union">销售联盟</span>&nbsp&nbsp|
			<span class="tailtext gesture" id="Community">京东社区</span>&nbsp&nbsp|<span class="tailtext gesture" id="welfare">京东公益</span>&nbsp&nbsp|
			<span class="tailtext gesture" id="english">English Sit</span>
		</div>
		<div class="tailtwo">
			Copyright©2004-2016  京东JD.com 版权所有
		</div>
	</div>
</body>
</html>