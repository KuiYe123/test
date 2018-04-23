window.onload=function(){
	
	$.ajax({
		url:'zupdatexinxi',
		type:'post',
		dataType:'json',
		data:{
			"id":"1461991010",
		},
		success:function(data){
			var str="<div id='usertx' style='background-image:url(usertx/"+data.url+")'></div>"
			$("#zusertx").html(str);
		}
		
	})
	
	
	
	
	
	
	
	
	
	
	
	$(".headleft a").mouseover(function(){
		$(this).css("color","white")
	})
	
	$(".headleft a").mouseout(function(){
		$(this).css("color","");
	});
	
	$(".headright span").mouseover(function(){
		$(this).css("color","white")
	})
	
	$(".headright span").mouseout(function(){
		$(this).css("color","");
	});
	
	$(".zheadright").mouseover(function(){
		$(".zheadright").css("backgroundColor","white");
		$(".iconfont").css("color","#ff6700");
		$(".zheadright span").css("color","#ff6700");
	})
	
	$(".zheadright").mouseout(function(){
		$(".zheadright").css("backgroundColor","");
		$(".iconfont").css("color","");
		$(".zheadright span").css("color","");
	});
	
	
	$(".zheadtwo div").mouseover(function(){
		$(this).css("color","#ff6700");
	})
	
	$(".zheadtwo div").mouseout(function(){
		$(this).css("color","");
	})
	
	
	$(".check").mouseover(function(){
		$(this).css("color","#ff6700")
	})
	
	$(".check").mouseout(function(){
		$(this).css("color","");
	});
	
	
	$(".bodyone li").mouseover(function(){
		$(this).css("color","#ff6700")
	})
	
	$(".bodyone li").mouseout(function(){
		$(this).css("color","");
	});
	
	
	$(".bodytwo1div").mouseover(function(){
		$(this).css("color","#ff6700")
	})
	
	$(".bodytwo1div").mouseout(function(){
		$(this).css("color","");
	});
	
	$(".bodytwo2 li").mouseover(function(){
		$(this).css("color","#ff6700")
	})
	
	$(".bodytwo2 li").mouseout(function(){
		$(this).css("color","");
	});
	
	
	$("#online").mouseover(function(){
		$("#online").css("color","white")
		$("#online").css("backgroundColor","#ff6700")
	})
	
	$("#online").mouseout(function(){
		$("#online").css("color","");
		$("#online").css("backgroundColor","")
	});
	
	
	
	$(".headtwo2").mouseover(function(){
		$(".hidden1fixed").css("display","block");
	})
	
	var s
	
	$(".headtwo2").mouseout(function(){
		
		/*s=setTimeout(function(){
		$(".hidden1fixed").css("display","");
		console.log("我被计时器消失了");
		},1000);*/
		$(".hidden1fixed").css("display","");
	})
	
	$(".hidden1fixed").mouseover(function(){
		
		$(".hidden1fixed").css("display","block");
		//clearTimeout(s);
		//console.log("我清除了计时器");
	})
	
	$(".hidden1fixed").mouseout(function(){
		$(".hidden1fixed").css("display","");
		//console.log("我消失了");
	})
	
	
	
	
	$(".headtwo3").mouseover(function(){
		$(".hidden2fixed").css("display","block");
		$(".hidden2").css("display","block");
	})
	
	var q
	
	$(".headtwo3").mouseout(function(){
		/*q=setTimeout(function(){
		$(".hidden2fixed").css("display","");
		console.log("我被计时器消失了");
		},1000);*/
		$(".hidden2fixed").css("display","");
		$(".hidden2").css("display","");
	})
	
	$(".hidden2").mouseover(function(){
		/*$(".hidden2fixed").css("display","block");
		clearTimeout(q);
		console.log("我清除了计时器");*/
		$(".hidden2").css("display","block");
		$(".hidden2fixed").css("display","block");
	})
	
	$(".hidden2").mouseout(function(){
		$(".hidden2fixed").css("display","");
		$(".hidden2").css("display","");
		//console.log("我消失了");
	})
	
	
	$(".headtwo4").mouseover(function(){
		$(".hidden3fixed").css("display","block");
		$(".hidden3").css("display","block");
	})
	
	
	$(".headtwo4").mouseout(function(){
		$(".hidden3fixed").css("display","");
		$(".hidden3").css("display","");
	})
	
	$(".hidden3").mouseover(function(){
		$(".hidden3").css("display","block");
		$(".hidden3fixed").css("display","block");
	})
	
	$(".hidden3").mouseout(function(){
		$(".hidden3fixed").css("display","");
		$(".hidden3").css("display","");
	})
	
	
	$(".headtwo5").mouseover(function(){
		$(".hidden4fixed").css("display","block");
		$(".hidden4").css("display","block");
	})
	
	
	$(".headtwo5").mouseout(function(){
		$(".hidden4fixed").css("display","");
		$(".hidden4").css("display","");
	})
	
	$(".hidden4").mouseover(function(){
		$(".hidden4").css("display","block");
		$(".hidden4fixed").css("display","block");
	})
	
	$(".hidden4").mouseout(function(){
		$(".hidden4fixed").css("display","");
		$(".hidden4").css("display","");
	})
	
	
	$(".headtwo6").mouseover(function(){
		$(".hidden5fixed").css("display","block");
		$(".hidden5").css("display","block");
	})
	
	
	$(".headtwo6").mouseout(function(){
		$(".hidden5fixed").css("display","");
		$(".hidden5").css("display","");
	})
	
	$(".hidden5").mouseover(function(){
		$(".hidden5").css("display","block");
		$(".hidden5fixed").css("display","block");
	})
	
	$(".hidden5").mouseout(function(){
		$(".hidden5fixed").css("display","");
		$(".hidden5").css("display","");
	})
	
	
	$(".headtwo7").mouseover(function(){
		$(".hidden6fixed").css("display","block");
		$(".hidden6").css("display","block");
	})
	
	
	$(".headtwo7").mouseout(function(){
		$(".hidden6fixed").css("display","");
		$(".hidden6").css("display","");
	})
	
	$(".hidden6").mouseover(function(){
		$(".hidden6").css("display","block");
		$(".hidden6fixed").css("display","block");
	})
	
	$(".hidden6").mouseout(function(){
		$(".hidden6fixed").css("display","");
		$(".hidden6").css("display","");
	})
	
	
	$(".headtwo9").mouseover(function(){
		$(".hidden7fixed").css("display","block");
		$(".hidden7").css("display","block");
	})
	
	$(".headtwo9").mouseout(function(){
		$(".hidden7fixed").css("display","");
		$(".hidden7").css("display","");
	})
	
	$(".hidden7").mouseover(function(){
		$(".hidden7").css("display","block");
		$(".hidden7fixed").css("display","block");
	})
	
	$(".hidden7").mouseout(function(){
		$(".hidden7fixed").css("display","");
		$(".hidden7").css("display","");
	})
	
	
	$(".headtwo10").mouseover(function(){
		$(".hidden8fixed").css("display","block");
		$(".hidden8").css("display","block");
	})
	
	$(".headtwo10").mouseout(function(){
		$(".hidden8fixed").css("display","");
		$(".hidden8").css("display","");
	})
	
	$(".hidden8").mouseover(function(){
		$(".hidden8").css("display","block");
		$(".hidden8fixed").css("display","block");
	})
	
	$(".hidden8").mouseout(function(){
		$(".hidden8fixed").css("display","");
		$(".hidden8").css("display","");
	})
	
	
	
	
	
	
	
	
	
	
	
	$(".usernamexiala").mouseover(function(){
		$(".usernamexiala").css("backgroundColor","white");	
		$("#username").css("color","#ff6700")
		$(".more-solid.icon").css("color","#ff6700")
		//$(".hidden").slideDown(400);
		//下拉效果
		console.log("1111");
		$(".hidden").css("display","block");
	})
	
	$(".usernamexiala").mouseout(function(){
		$(".usernamexiala").css("backgroundColor","");	
		$("#username").css("color","")
		$(".more-solid.icon").css("color","")
		//$(".hidden").slideUp(400);
		//上拉收回来
		$(".hidden").css("display","");
		console.log("333");
	})
	
	$(".hidden").mouseover(function(){
		$(".hidden").css("display","block");
		$(".usernamexiala").css("backgroundColor","white");	
		$("#username").css("color","#ff6700");
		$(".more-solid.icon").css("color","#ff6700");
		console.log("222");
	})
	
	$(".hidden").mouseout(function(){
		$(".usernamexiala").css("backgroundColor","");	
		$("#username").css("color","")
		$(".more-solid.icon").css("color","")
		$(".hidden").css("display","");
		console.log("222");		
	});
	
	
	$(".movegoods").mouseover(function(){
		$(this).css("backgroundColor","#ff6700");
	})
	
	$(".movegoods").mouseout(function(){
		$(this).css("backgroundColor","");
	})
	
	
	$(".hidden span").mouseover(function(){
		$(this).css("color","#ff6700");
	})
	
	$(".hidden span").mouseout(function(){
		$(this).css("color","");
	})
	
	
	
	
	$(".hidden1fixed li").mouseover(function(){
		$(this).css("color","#ff6700")
	})
	
	$(".hidden1fixed li").mouseout(function(){
		$(this).css("color","");
	});
	
	
	
	
	
	$("#goods1").mouseover(function(){
		$(".goodslist1").css("display","block")
		
	})
	
	$("#goods1").mouseout(function(){
		$(".goodslist1").css("display","")
	});
	
	$(".goodslist1").mouseover(function(){
		$(".goodslist1").css("display","block")
		
	})
	$(".goodslist1").mouseout(function(){
		$(".goodslist1").css("display","")
	});
	
	
	$("#goods2").mouseover(function(){
		$(".goodslist2").css("display","block")
		
	})
	
	$("#goods2").mouseout(function(){
		$(".goodslist2").css("display","")
	});
	
	$(".goodslist2").mouseover(function(){
		$(".goodslist2").css("display","block")
		
	})
	$(".goodslist2").mouseout(function(){
		$(".goodslist2").css("display","")
	});
	
	$("#goods3").mouseover(function(){
		$(".goodslist3").css("display","block")
		
	})
	
	$("#goods3").mouseout(function(){
		$(".goodslist3").css("display","")
	});
	
	$(".goodslist3").mouseover(function(){
		$(".goodslist3").css("display","block")
		
	})
	$(".goodslist3").mouseout(function(){
		$(".goodslist3").css("display","")
	});
	
	$("#goods4").mouseover(function(){
		$(".goodslist4").css("display","block")
		
	})
	
	$("#goods4").mouseout(function(){
		$(".goodslist4").css("display","")
	});
	
	$(".goodslist4").mouseover(function(){
		$(".goodslist4").css("display","block")
		
	})
	$(".goodslist4").mouseout(function(){
		$(".goodslist4").css("display","")
	});
	
	$("#goods5").mouseover(function(){
		$(".goodslist5").css("display","block")
		
	})
	
	$("#goods5").mouseout(function(){
		$(".goodslist5").css("display","")
	});
	
	$(".goodslist5").mouseover(function(){
		$(".goodslist5").css("display","block")
		
	})
	$(".goodslist5").mouseout(function(){
		$(".goodslist5").css("display","")
	});
	
	$("#goods6").mouseover(function(){
		$(".goodslist6").css("display","block")
		
	})
	
	$("#goods6").mouseout(function(){
		$(".goodslist6").css("display","")
	});
	
	$(".goodslist6").mouseover(function(){
		$(".goodslist6").css("display","block")
		
	})
	$(".goodslist6").mouseout(function(){
		$(".goodslist6").css("display","")
	});
	
	$("#goods7").mouseover(function(){
		$(".goodslist7").css("display","block")
		
	})
	
	$("#goods7").mouseout(function(){
		$(".goodslist7").css("display","")
	});
	
	$(".goodslist7").mouseover(function(){
		$(".goodslist7").css("display","block")
		
	})
	$(".goodslist7").mouseout(function(){
		$(".goodslist7").css("display","")
	});
	
	$("#goods8").mouseover(function(){
		$(".goodslist8").css("display","block")
		
	})
	
	$("#goods8").mouseout(function(){
		$(".goodslist8").css("display","")
	});
	
	$(".goodslist8").mouseover(function(){
		$(".goodslist8").css("display","block")
		
	})
	$(".goodslist8").mouseout(function(){
		$(".goodslist8").css("display","")
	});
	
	$("#goods9").mouseover(function(){
		$(".goodslist9").css("display","block")
		
	})
	
	$("#goods9").mouseout(function(){
		$(".goodslist9").css("display","")
	});
	
	$(".goodslist9").mouseover(function(){
		$(".goodslist9").css("display","block")
		
	})
	$(".goodslist9").mouseout(function(){
		$(".goodslist9").css("display","")
	});
	
	$("#goods10").mouseover(function(){
		$(".goodslist10").css("display","block")
		
	})
	
	$("#goods10").mouseout(function(){
		$(".goodslist10").css("display","")
	});
	
	$(".goodslist10").mouseover(function(){
		$(".goodslist10").css("display","block")
		
	})
	$(".goodslist10").mouseout(function(){
		$(".goodslist10").css("display","")
	});
		
	
}


