<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-3.2.1.min.js"></script>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/login.css" />
<link rel="shortcut icon" href="image/favicon.ico" type="image/x-icon" />
<title>小米账号—登录</title>
<script type="text/javascript">
$(function(){
	$(".login-link").click(function() {
		$(".tab-con").css("display", "block")
		$(".table").css("display", "none")
	});
	
	$("#zhanghao").click(function() {
		$(".tab-con").css("display", "none")
		$(".table").css("display", "block")
	});
	
	$(".buttons").click(function(){
		console.log($("#username").val());
		$.ajax({
			url:'${pageContext.request.contextPath}/judge/loginjudge',
			type:'post',
			dataType:'json',
			data:{
				'username':$("#username").val(),
				'password':$("#password").val(),
			},
			success:function(data){
				console.log(data);
				if(data==true){
					$('#wo').submit();
				}else{
					$("#judge").css("display","block");
				}
			}
		})
	})
	
	
})
</script>


</head>
<body>
	<div class="title-panel">
		<div class="title-log">
			<a href=""><img src="${pageContext.request.contextPath}/image/logo.png" /></a>
		</div>

	</div>
	<div class="login-center">
		<a id="backgrounds" href="https://www.baidu.com/"><img
			width="1550px" src="${pageContext.request.contextPath}/image/logon-b.png" /></a>
		<div class="logins-a">
			<div class="login-system">
				<div class="login-tabs">
					<a id="zhanghao" class="login-link">账号登录</a> <span
						class="login-line"> </span> <a class="login-link">扫码登录</a>
				</div>
			</div>
			<!-- 登录框 -->
			<div class="tab-con">
				<div class="tab-qrcon">
					<div class="tab-code">
						<img src="${pageContext.request.contextPath}/image/erweima.png" />


					</div>

				</div>

			</div>
			<div class="table">
				<div class="login-text">
					<form action="${pageContext.request.contextPath}/first/loginsuccess" id='wo' method="post">
						<div class="put-text">
							<div class="pos">
								<label class="put-in"> <input class="puts" type="text"
									name="username" id='username' placeholder="邮箱/手机号码/小米ID" _type="text" />
								</label> <label class="put-pass"> <input class="puts"
									type="password" id='password' name="password" placeholder="密码" />
								</label>
								<div id='judge' style="
    								float:  left;
	  								display:  none; 
    								font-size: 14px;
    								color: red;">
								账号密码不正确
								</div>
								<p>${message}</p>
							</div>
						</div>
						<div class="log-button">
							<input class="buttons" readonly="readonly" value="登录" />
						</div>
					</form>
				</div>

			</div>

			<div class="other">
				<span class="SMS"> <a class="put-sms">手机短信登录/注册</a>

				</span>
				<div class="reverse">
					<a class="reg-out"
						href="${pageContext.request.contextPath}/register.jsp">立即注册</a> <span>|</span>
					<a class="reg-out" href="${pageContext.request.contextPath}/updates.jsp">忘记密码？</a>
				</div>
			</div>
			<div class="qts">
				<div class="qts-a">
					<div class="qts-a-a">————————其他登录方式————————</div>
				</div>
				<div class="qts-b">
					<div class="qts-b-a">
						&nbsp &nbsp &nbsp &nbsp &nbsp<img class="qts-b-b"
							src="${pageContext.request.contextPath}/image/qq.png" /> &nbsp &nbsp &nbsp &nbsp &nbsp<img
							class="qts-b-b" src="${pageContext.request.contextPath}/image/weibo.png" /> &nbsp &nbsp &nbsp &nbsp
						&nbsp<img class="qts-b-b" src="${pageContext.request.contextPath}/image/zhifubao.png" /> &nbsp &nbsp
						&nbsp &nbsp &nbsp<img class="qts-b-b" src="${pageContext.request.contextPath}/image/weixing.png" />
					</div>

				</div>
			</div>

		</div>
	</div>
	<div class="n-footer">
		<div class="nf-link">
			<ul class="lang">
				<li>简体 |</li>
				<li>繁体 |</li>
				<li>English |</li>
				<li>常见问题</li>
			</ul>

		</div>
		<div class="nf-intro">
			小米公司版权所有-京ICP备10046444- <a
				href="http://www.beian.gov.cn/portal/registerSystemInfo?recordcode=11010802020134">
				<span> <img src="${pageContext.request.contextPath}/image/gongan.png" />
			</span> 京公安备11010802020134号
			</a> -京ICP证110507号
		</div>
	</div>
</body>
</html>