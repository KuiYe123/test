window.onload=function(){
	
	
	document.getElementById("guoji").onmouseover=function(){
		document.getElementById("guoji").style.color="black";
		document.getElementById("guoji").style.fontWeight="bold";
				
	}
	
	document.getElementById("guoji").onmouseout=function(){
		document.getElementById("guoji").style.color="";
		document.getElementById("guoji").style.fontWeight="";
	}
	
	document.getElementById("qiye").onmouseover=function(){
		document.getElementById("qiye").style.color="black";
		document.getElementById("qiye").style.fontWeight="bold";
				
	}
	
	document.getElementById("qiye").onmouseout=function(){
		document.getElementById("qiye").style.color="";
		document.getElementById("qiye").style.fontWeight="";
	}
	
	document.getElementById("password1").onmouseover=function(){
		document.getElementById("password1").style.textDecoration="underline";	
	}
	
	document.getElementById("password1").onmouseout=function(){
		document.getElementById("password1").style.textDecoration="none";
	}
	
	document.getElementById("welfare").onmouseover=function(){
		document.getElementById("welfare").style.textDecoration="underline";	
	}
	
	document.getElementById("welfare").onmouseout=function(){
		document.getElementById("welfare").style.textDecoration="none";
	}
	
	document.getElementById("english").onmouseover=function(){
		document.getElementById("english").style.textDecoration="underline";	
	}
	
	document.getElementById("english").onmouseout=function(){
		document.getElementById("english").style.textDecoration="none";
	}
	
	document.getElementById("Community").onmouseover=function(){
		document.getElementById("Community").style.textDecoration="underline";	
	}
	
	document.getElementById("Community").onmouseout=function(){
		document.getElementById("Community").style.textDecoration="none";
	}
	
	document.getElementById("union").onmouseover=function(){
		document.getElementById("union").style.textDecoration="underline";	
	}
	
	document.getElementById("union").onmouseout=function(){
		document.getElementById("union").style.textDecoration="none";
	}
	
	document.getElementById("friend").onmouseover=function(){
		document.getElementById("friend").style.textDecoration="underline";	
	}
	
	document.getElementById("friend").onmouseout=function(){
		document.getElementById("friend").style.textDecoration="none";
	}
	
	document.getElementById("phone").onmouseover=function(){
		document.getElementById("phone").style.textDecoration="underline";	
	}
	
	document.getElementById("phone").onmouseout=function(){
		document.getElementById("phone").style.textDecoration="none";
	}
	
	document.getElementById("Advertisement").onmouseover=function(){
		document.getElementById("Advertisement").style.textDecoration="underline";	
	}
	
	document.getElementById("Advertisement").onmouseout=function(){
		document.getElementById("Advertisement").style.textDecoration="none";
	}
	
	document.getElementById("business").onmouseover=function(){
		document.getElementById("business").style.textDecoration="underline";	
	}
	
	document.getElementById("business").onmouseout=function(){
		document.getElementById("business").style.textDecoration="none";
	}
	
	document.getElementById("people").onmouseover=function(){
		document.getElementById("people").style.textDecoration="underline";	
	}
	
	document.getElementById("people").onmouseout=function(){
		document.getElementById("people").style.textDecoration="none";
	}
	
	document.getElementById("us").onmouseover=function(){
		document.getElementById("us").style.textDecoration="underline";	
	}
	
	document.getElementById("us").onmouseout=function(){
		document.getElementById("us").style.textDecoration="none";
	}
	
	document.getElementById("us1").onmouseover=function(){
		document.getElementById("us1").style.textDecoration="underline";	
	}
	
	document.getElementById("us1").onmouseout=function(){
		document.getElementById("us1").style.textDecoration="none";
	}
	
	
	
	$("#yonghuming").mouseout(function(){
		$.ajax({
			url:'judge/judgeone',
			type:'post',
			dataType:'json',
			data:{
				"username":$("#yonghuming").val(),
			},
			success:function(data){
				console.log(data);
				if(data==true){
					$(".true").css("color","green");
					$(".true").empty("span");
					var str="可以注册";
					$(".true").html(str);
					$(".true").css("display","block");
				}else if(data==false){
					$(".true").css("color","red");
					$(".true").empty("span");
					var str="改账号已存在";
					$(".true").html(str);
					$(".true").css("display","block");
				}else{
					$(".true").css("color","red");
					$(".true").empty("span");
					var str=data;
					$(".true").html(str);
					$(".true").css("display","block");
				}
			}
			
		})
		
	})
	
	
	
	
	
	
	
	$("#mima").mouseout(function(){
		$.ajax({
			url:'judge/judgetwo',
			type:'post',
			dataType:'json',
			data:{
				"password":$("#mima").val(),
			},
			success:function(data){
				if(data==true){
					$(".true1").css("color","green");
					$(".true1").empty("span");
					$(".true1").html("可以使用");
					$(".true1").css("display","block");
				}else{
					$(".true1").css("color","red");
					$(".true1").empty("span");
					$(".true1").html(data);
					$(".true1").css("display","block");
				}
				
			}
			
		})
	})
	
	
	
	$("#queren").mouseout(function(){
		$.ajax({
			url:'judge/judgethree',
			type:'post',
			dataType:'json',
			data:{
				"password":$("#mima").val(),
				"zpassword":$("#queren").val(),
			},
			success:function(data){
				if(data==true){
					$(".true2").css("color","green");
					$(".true2").empty("span");
					$(".true2").html("密码一致");
					$(".true2").css("display","block");
				}else{
					$(".true2").css("color","red");
					$(".true2").empty("span");
					$(".true2").html(data);
					$(".true2").css("display","block");
				}
			}
			
		})
		
	})
	
	
	
	$("#chine").mouseout(function(){
		$.ajax({
			url:'judge/judgefour',
			type:'post',
			dataType:'json',
			data:{
				'phone':$("#chine").val(),
			},
			success:function(data){
				if(data==true){
					$("#phone").css("color","green");
					$("#phone").html("可以使用");
					$("#phone").css("display","block");
					
					$(".bodyone7").css("background-color","#ab2020");
					$(".bodyone7").css("cursor","pointer")
					$(".bodyone7").click(function(){
						$("#tijiao").submit();
					})
				}else{
					$("#phone").css("color","red");
					$("#phone").html(data);
					$("#phone").css("display","block");
					
					$(".bodyone7").css("background-color","gray");
					$(".bodyone7").css("cursor","");
					$(".bodyone7").off("click");
				}
			}
		})
		
	})
	
	
	
	
	
	/*$("#code1").mouseout(function(){
		$.ajax({
			url:'register.action',
			type:'post',
			dataType:'json',
			data:{
				'proving':$("#code1").val(),
			},
			success:function(data){
				if(data==true){
					$('#proving').html("验证码一致");
					$("#proving").css("color",'green');
					$("#proving").css("display",'block');
					var a=/[A-Za-z0-9_]{7,15}/;
					var c=/1[3-8][0-9]{9}/;
					var username=$("#yonghuming").val();
					var password=$("#mima").val();
					var zpassword=$("#queren").val();
					var phone=$("#chine").val();
					var proving=$("#code1").val();
					if(a.test(username)&a.test(password)&password==zpassword&c.test(phone)){
						$(".bodyone7").css("background-color","#ab2020");
						$(".bodyone7").css("cursor","pointer")
						$(".bodyone7").click(function(){
							$("#tijiao").submit();
						})
					}else{
						console.log("456");
					}
				}else{
					$("#proving").css("color",'red');
					$("#proving").html(data);
					$("#proving").css("display",'block');
				}
			}
		})
	})*/
	
	
	
	$("#change").click(function(){
		var timestamp = Date.parse(new Date());
		$("#imgObj").attr("src","/struts/getCode?time="+timestamp);
		//加个时间戳
	})
	
	
	
	
	
}