$(function(){
	
	$.ajax({
		url:'zupdatexinxi',
		type:'post',
		dataType:'json',
		data:{
			"id":$("#zzid").val(),
		},
	success:function(data){
		var str="<div id='jichu'><span id='title'><b>基础资料</b></span><span id='bianji'>编辑</span></div>"
			+"<div id='name'><span>姓名："+data.name+"</span></div>"
			+"<div id='birth'><span>生日："+data.birth+"</span></div>"
			+"<div id='sex'><span>性别："+data.sex+"</span></div>"
			+"<div id='address'><span><b>收获地址</b></span></div>"
			+"<div id='address1'><span>"+data.address+"</span></div>";
		$(".update").html(str);
		var str1="<div class='ztx' style='background-image:url(usertx/"+data.url+")'></div>";
		console.log(str1);
		$(".tx").html(str1);
	}												  	
	})
	
	
	$("body").on('click','#bu1',function(){
		console.log($("#input1").val());
		console.log($("#xiala1").val());
		console.log($("#xiala2").val());
		console.log($("#xiala3").val());
		console.log($("#id").val());
		console.log($("input[name='ni']:checked").val());
		$(".update").empty("div");
		$.ajax({
			url:'updatexinxi',
			type:'post',
			dataType:'json',
			data : {
				"id":$("#zzid").val(),
				"name" : $("#input1").val(),
				"year" : $("#xiala1").val(),
				"month":$("#xiala2").val(),
				"day":$("#xiala3").val(),
				"sex":$("input[name='ni']:checked").val(),
				"address":$("#input2").val(),
			},
			success:function(data){
				var str="<div id='jichu'><span id='title'><b>基础资料</b></span><span id='bianji'>编辑</span></div>"
					+"<div id='name'><span>姓名："+data.name+"</span></div>"
					+"<div id='birth'><span>生日："+data.birth+"</span></div>"
					+"<div id='sex'><span>性别："+data.sex+"</span></div>"
					+"<div id='address'><span><b>收获地址</b></span></div>"
					+"<div id='address1'><span>"+data.address+"</span></div>";
				$(".update").html(str);
			}	
		})
	})
		
	
	
	$('body').on('click',"#bianji",function(){
		$("#zzupdate").css("display","block");
	})
	
	$("#bu1").click(function(){
		$("#zzupdate").css("display","none");
	})
	
	$("#bu2").click(function(){
		$("#zzupdate").css("display","none");
	})
	
	
})