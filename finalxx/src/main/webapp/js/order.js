$(function(){
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
	
	$("#youxiao").click(function(){
		$("#daizhifu").css("color","rgba(21, 2, 2, 0.74)");
		$("#daishouhuo").css("color","rgba(21, 2, 2, 0.74)");
		$("#yiguanbi").css("color","rgba(21, 2, 2, 0.74)");
		$("#youxiao").css("color","#ff6700");
		$("#zhifudetails").css("display","none");
		$("#shouhuodetails").css("display","none");
		$("#closedetails").css("display","none");
		$("#youxiaodetails").css("display","block");
	})
	
	$("#daizhifu").click(function(){
		$("#youxiao").css("color","rgba(21, 2, 2, 0.74)");
		$("#daishouhuo").css("color","rgba(21, 2, 2, 0.74)");
		$("#yiguanbi").css("color","rgba(21, 2, 2, 0.74)");
		$("#daizhifu").css("color","#ff6700");
		$("#youxiaodetails").css("display","none");
		$("#shouhuodetails").css("display","none");
		$("#closedetails").css("display","none");
		$("#zhifudetails").css("display","block");
	})
	
	$("#daishouhuo").click(function(){
		$("#youxiao").css("color","rgba(21, 2, 2, 0.74)");
		$("#daizhifu").css("color","rgba(21, 2, 2, 0.74)");
		$("#yiguanbi").css("color","rgba(21, 2, 2, 0.74)");
		$("#daishouhuo").css("color","#ff6700");
		$("#youxiaodetails").css("display","none");
		$("#zhifudetails").css("display","none");
		$("#closedetails").css("display","none");
		$("#shouhuodetails").css("display","block");
	})
	
	$("#yiguanbi").click(function(){
		$("#youxiao").css("color","rgba(21, 2, 2, 0.74)");
		$("#daizhifu").css("color","rgba(21, 2, 2, 0.74)");
		$("#daishouhuo").css("color","rgba(21, 2, 2, 0.74)");
		$("#yiguanbi").css("color","#ff6700");
		$("#youxiaodetails").css("display","none");
		$("#zhifudetails").css("display","none");
		$("#shouhuodetails").css("display","none");
		$("#closedetails").css("display","block");
	})
	
	
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
	
	$("#know").mouseover(function(){
		$("#know").css("text-decoration","underline")
	})
	
	$("#know").mouseout(function(){
		$("#know").css("text-decoration","");
	});
	
	
	$("#online").mouseover(function(){
		$("#online").css("color","white")
		$("#online").css("backgroundColor","#ff6700")
	})
	
	$("#online").mouseout(function(){
		$("#online").css("color","");
		$("#online").css("backgroundColor","")
	});
	
	$("body").on("mouseover",".dingdanxiangqing",function(){
		$(this).css("color","white")
		$(this).css("backgroundColor","rgba(33, 8, 7, 0.51)")
	})
	
	$("body").on("mouseout",".dingdanxiangqing",function(){
		$(this).css("color","");
		$(this).css("backgroundColor","")
	})
	
	$("body").on("mouseover",".dingdanxiangqing2",function(){
		$(this).css("color","white")
		$(this).css("backgroundColor","rgba(33, 8, 7, 0.51)")
	})
	
	$("body").on("mouseout",".dingdanxiangqing2",function(){
		$(this).css("color","");
		$(this).css("backgroundColor","")
	})
	
	$("body").on("mouseover",".queren",function(){
		$(this).css("color","white")
		$(this).css("backgroundColor","rgba(33, 8, 7, 0.51)")
	})
	
	$("body").on("mouseout",".queren",function(){
		$(this).css("color","");
		$(this).css("backgroundColor","")
	})
	
	
	
	$("body").on("mouseover",".dingdanxiangqing1",function(){
		$(this).css("color","white")
		$(this).css("backgroundColor","rgba(33, 8, 7, 0.51)")
	})
	
	$("body").on("mouseout",".dingdanxiangqing1",function(){
		$(this).css("color","");
		$(this).css("backgroundColor","")
	})
	
	$("body").on("mouseover",".shenqingshouhou",function(){
		$(this).css("color","white")
		$(this).css("backgroundColor","rgba(33, 8, 7, 0.51)")
	})
	
	$("body").on("mouseout",".shenqingshouhou",function(){
		$(this).css("color","");
		$(this).css("backgroundColor","")
	});
	
	$(".headtwo2").mouseover(function(){
		$(".hidden1fixed").css("display","block");
	})
	
	var s
	
	$(".headtwo2").mouseout(function(){
		
		/*s=setTimeout(function(){
		$(".hidden1fixed").css("display","");
		console.log("�ұ���ʱ����ʧ��");
		},1000);*/
		$(".hidden1fixed").css("display","");
	})
	
	$(".hidden1fixed").mouseover(function(){
		
		$(".hidden1fixed").css("display","block");
		//clearTimeout(s);
		//console.log("������˼�ʱ��");
	})
	
	$(".hidden1fixed").mouseout(function(){
		$(".hidden1fixed").css("display","");
		//console.log("����ʧ��");
	})
	
	
	$(".headtwo3").mouseover(function(){
		$(".hidden2fixed").css("display","block");
		$(".hidden2").css("display","block");
	})
	
	var q
	
	$(".headtwo3").mouseout(function(){
		/*q=setTimeout(function(){
		$(".hidden2fixed").css("display","");
		console.log("�ұ���ʱ����ʧ��");
		},1000);*/
		$(".hidden2fixed").css("display","");
		$(".hidden2").css("display","");
	})
	
	$(".hidden2").mouseover(function(){
		/*$(".hidden2fixed").css("display","block");
		clearTimeout(q);
		console.log("������˼�ʱ��");*/
		$(".hidden2").css("display","block");
		$(".hidden2fixed").css("display","block");
	})
	
	$(".hidden2").mouseout(function(){
		$(".hidden2fixed").css("display","");
		$(".hidden2").css("display","");
		//console.log("����ʧ��");
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
	
	//隐藏收货框
	$("#Determine").click(function(){
		$("#queren").slideUp(400);
		//上拉效果隐藏
	})	
	
	//隐藏购买框1
	$("#Determine1").click(function(){
		$("#success1").slideUp(400);
	})
	
	//隐藏购买框2
	$("#Determine3").click(function(){
		$("#success2").slideUp(400);
	})
	
	//隐藏余额不足框
	$("#Determine2").click(function(){
		$("#fail").slideUp(400);
	})
	
	//判断1显示框
	$("body").on("click","#lijizhifu0",function(){
		var money=parseInt($("#zmoney1").val());
		parseInt($("#zmoney1").val())//把该值转成int类型
		var nowmoney=parseInt($("#nowmoney").val());
		console.log(money);
		console.log(nowmoney);
		console.log(nowmoney-money);
		if((nowmoney-money)>0){
			$("#success1").slideDown(400);
		}else{
			$("#fail").slideDown(400);
		}
	})
	
	//点击支付确定后刷新ajax并修改数据
	$("#Determine1").click(function(){
		$("#zhifudetails").empty("div");
		$.ajax({
			url:'updatezhifu',
			type:'post',
			dataType:'json',
			data : {
				"id" : $("#id1").val(),
			},
			success:function(data){
				if(data.dataList.length>0){
					var str="";
					for(var i=0;i<data.dataList.length;i++){
						str +="<div class='zdetails3'>"
							+"<span class='dengdaifukuan'>等待付款</span>"
							+"<span class='xiangqing1'>"+data.dataList[i].time+"| "+data.dataList[i].name+" | 订单号：| "+data.dataList[i].id+" | 在线支付</span>"
							+"<span class='balance'>订单金额：<span class='money'>"+data.dataList[i].money+"</span>元</span>"
							+"</div><div class='zdetails4'>"
							+"<img class='xphone' src='img/"+data.dataList[i].url+"'><span class='zname'>"+data.dataList[i].goodsname+"</span>"
							+"<span class='shuliang'>"+data.dataList[i].price+" 元 x "+data.dataList[i].number+"</span>"
							+"<div class='lijizhifu' id='lijizhifu"+[i]+"'>立即支付</div>"
							+"<div class='dingdanxiangqing1'>订单详情</div>"
							+"</div><div class='space'></div>"
					}
					$("#nowpage").val(data.nowPage);
					$("#zup").val(data.nowPage-1);
					$("#zdown").val(data.nowPage+1);
					if(data.dataList.length==1){
						console.log("我进1了");
						$("#zmoney1").val(data.dataList[0].money);
						$("#id1").val(data.dataList[0].id);
					}
					if(data.dataList.length==2){
						console.log("我进2了");
						$("#zmoney1").val(data.dataList[0].money);
						$("#zmoney2").val(data.dataList[1].money);
						$("#id1").val(data.dataList[0].id);
						$("#id2").val(data.dataList[1].id);
					}
					str +="<input class='up' id='up1' type='button' value='上一页'>"
					+"<input class='down' id='down1' type='button' value='下一页'>"
					+"<div class='space'></div>"
					$("#zhifudetails").html(str);
				}else{
					var str="<div class='empty'>当前没有待支付订单。</div>";
					$("#zhifudetails").html(str);
				}
			}
		})
	})
	
	//判断2显示框
	$("body").on("click","#lijizhifu1",function(){
		var money=parseInt($("#zmoney2").val());
		var nowmoney=parseInt($("#nowmoney").val());
		console.log(money);
		console.log(nowmoney);
		console.log(nowmoney-money);
		if((nowmoney-money)>0){
			$("#success2").slideDown(400);
		}else{
			$("#fail").slideDown(400);
		}
	})
	
	$("#Determine3").click(function(){
		$("#zhifudetails").empty("div");
		$.ajax({
			url:'updatezhifu',
			type:'post',
			dataType:'json',
			data : {
				"id" : $("#id2").val(),
			},
			success:function(data){
				if(data.dataList.length>0){
					var str="";
					for(var i=0;i<data.dataList.length;i++){
						str +="<div class='zdetails3'>"
							+"<span class='dengdaifukuan'>等待付款</span>"
							+"<span class='xiangqing1'>"+data.dataList[i].time+"| "+data.dataList[i].name+" | 订单号：| "+data.dataList[i].id+" | 在线支付</span>"
							+"<span class='balance'>订单金额：<span class='money'>"+data.dataList[i].money+"</span>元</span>"
							+"</div><div class='zdetails4'>"
							+"<img class='xphone' src='img/"+data.dataList[i].url+"'><span class='zname'>"+data.dataList[i].goodsname+"</span>"
							+"<span class='shuliang'>"+data.dataList[i].price+" 元 x "+data.dataList[i].number+"</span>"
							+"<div class='lijizhifu' id='lijizhifu"+[i]+"'>立即支付</div>"
							+"<div class='dingdanxiangqing1'>订单详情</div>"
							+"</div><div class='space'></div>"
					}
					$("#nowpage").val(data.nowPage);
					$("#zup").val(data.nowPage-1);
					$("#zdown").val(data.nowPage+1);
					if(data.dataList.length==1){
						console.log("我进1了");
						$("#zmoney1").val(data.dataList[0].money);
						$("#id1").val(data.dataList[0].id);
					}
					if(data.dataList.length==2){
						console.log("我进2了");
						$("#zmoney1").val(data.dataList[0].money);
						$("#zmoney2").val(data.dataList[1].money);
						$("#id1").val(data.dataList[0].id);
						$("#id2").val(data.dataList[1].id);
					}
					str +="<input class='up' id='up1' type='button' value='上一页'>"
					+"<input class='down' id='down1' type='button' value='下一页'>"
					+"<div class='space'></div>"
					$("#zhifudetails").html(str);
				}else{
					var str="<div class='empty'>当前没有待支付订单。</div>";
					$("#zhifudetails").html(str);
				}
			}
		})
	})
	
	//点击确认收获1
	$("body").on("click","#queren0",function(){
		$("#queren").slideDown(400);
	})
	
	//点击确认收货后执行ajax
	$("#Determine").click(function(){
		$("#shouhuodetails").empty("div");
		$.ajax({
			url:'updatereceipt',
			type:'post',
			dataType:'json',
			data : {
				"id" : $("#id1").val(),
			},
			success:function(data){
				if(data.dataList.length>0){
					var str="";
					for(var i=0;i<data.dataList.length;i++){
						str +="<div class='zdetails3'>"
							+"<span class='dengdaifukuan'>等待收货</span>"
							+"<span class='xiangqing1'>"+data.dataList[i].time+"| "+data.dataList[i].name+" | 订单号：| "+data.dataList[i].id+" | 在线支付</span>"
							+"<span class='balance'>订单金额：<span class='money'>"+data.dataList[i].money+"</span>元</span>"
							+"</div><div class='zdetails4'>"
							+"<img class='xphone' src='img/"+data.dataList[i].url+"'><span class='zname'>"+data.dataList[i].goodsname+"</span>"
							+"<span class='shuliang'> "+data.dataList[i].price+" 元 x "+data.dataList[i].number+"</span>"
							+"<div class='queren'>确认收货</div>"
							+"<div class='dingdanxiangqing2'>订单详情</div>"
							+"</div><div class='space'></div>"
					}
					$("#nowpage").val(data.nowPage);
					$("#zup").val(data.nowPage-1);
					$("#zdown").val(data.nowPage+1);
					if(data.dataList.length==1){
						$("#id1").val(data.dataList[0].id);
					}
					if(data.dataList.length==2){
						$("#id1").val(data.dataList[0].id);
						$("#id2").val(data.dataList[1].id);
					}
					str +="<input class='up' id='up2' type='button' value='上一页'>"
					+"<input class='down' id='down2' type='button' value='下一页'>"
					+"<div class='space'></div>"
					$("#shouhuodetails").html(str);
				}else{
					var str="<div class='empty'>当前没有待收获订单。</div>";
					$("#shouhuodetails").html(str);
				}
				
			}
		})
	})
	
	//点击确认收获2
	$("body").on("click","#queren1",function(){
		$("#queren2").slideDown(400);
	})
	
	$("#Determine4").click(function(){
		$("#shouhuodetails").empty("div");
		$.ajax({
			url:'updatereceipt',
			type:'post',
			dataType:'json',
			data : {
				"id" : $("#id2").val(),
			},
			success:function(data){
				if(data.dataList.length>0){
					var str="";
					for(var i=0;i<data.dataList.length;i++){
						str +="<div class='zdetails3'>"
							+"<span class='dengdaifukuan'>等待收货</span>"
							+"<span class='xiangqing1'>"+data.dataList[i].time+"| "+data.dataList[i].name+" | 订单号：| "+data.dataList[i].id+" | 在线支付</span>"
							+"<span class='balance'>订单金额：<span class='money'>"+data.dataList[i].money+"</span>元</span>"
							+"</div><div class='zdetails4'>"
							+"<img class='xphone' src='img/"+data.dataList[i].url+"'><span class='zname'>"+data.dataList[i].goodsname+"</span>"
							+"<span class='shuliang'> "+data.dataList[i].price+" 元 x "+data.dataList[i].number+"</span>"
							+"<div class='queren'>确认收货</div>"
							+"<div class='dingdanxiangqing2'>订单详情</div>"
							+"</div><div class='space'></div>"
					}
					$("#nowpage").val(data.nowPage);
					$("#zup").val(data.nowPage-1);
					$("#zdown").val(data.nowPage+1);
					if(data.dataList.length==1){
						$("#id1").val(data.dataList[0].id);
					}
					if(data.dataList.length==2){
						$("#id1").val(data.dataList[0].id);
						$("#id2").val(data.dataList[1].id);
					}
					str +="<input class='up' id='up2' type='button' value='上一页'>"
					+"<input class='down' id='down2' type='button' value='下一页'>"
					+"<div class='space'></div>"
					$("#shouhuodetails").html(str);
				}else{
					var str="<div class='empty'>当前没有待收获订单。</div>";
					$("#shouhuodetails").html(str);
				}
				
			}
		})
	})
	
	
	//有效点击ajax
	$("#youxiao").click(function(){
		$("#youxiaodetails").empty("div");
		$.ajax({
			url:'details',
			//ajax 逗号结束 不是分号
			type:'post',
			//提交方式
			dataType:'json',
			success:function(data){
				if(data.dataList.length>0){
					var str="";
					for(var i=0;i<data.dataList.length;i++){
						str +="<div class='zdetails1'>"
							+"<span class='yishouhuo'>已收货</span>"
							+"<span class='xiangqing'>"+data.dataList[i].time+" | "+data.dataList[i].name+" | 订单号："+data.dataList[i].id+" | 在线支付</span>"
							+"<span class='balance'>订单金额：<span class='money'>"+data.dataList[i].money+"</span>元</span>"
							+"</div><div class='zdetails2'>"
							+"<img class='xphone' src='img/"+data.dataList[i].url+"'><span class='zname'>"+data.dataList[i].goodsname+"</span>"
							+"<span class='shuliang'> "+data.dataList[i].price+" 元 x "+data.dataList[i].number+"</span>"
							+"<div class='dingdanxiangqing'>订单详情</div>"
							+"<div class='shenqingshouhou'>申请售后</div>"
							+"</div><div class='space'></div>"
					}
					$("nowpage").val(data.nowPage);
					$("#zup").val(data.nowPage-1);
					$("#zdown").val(data.nowPage+1);
					str +="<input class='up' id='up' type='button' value='上一页'>"
						+"<input class='down' id='down' type='button' value='下一页'>"
						+"<div class='space'></div>"
					$("#youxiaodetails").html(str);
				}else{
					var str="<div class='empty'>当前没有交易订单。</div>";
					$("#youxiaodetails").html(str);
				}
				
					
			}
		})
	})
	
	//有效上页点击
	$("body").on("click","#up",function(){
		$("#youxiaodetails").empty("div");
		//清空
		console.log($("#zup").val());
		$.ajax({
			url:'details',
			type:'post',
			dataType:'json',
			data : {
				"currentPage" : $("#zup").val(),
			},
			success:function(data){
				var str="";
				for(var i=0;i<data.dataList.length;i++){
					str +="<div class='zdetails1'>"
						+"<span class='yishouhuo'>已收货</span>"
						+"<span class='xiangqing'>"+data.dataList[i].time+" | "+data.dataList[i].name+" | 订单号："+data.dataList[i].id+" | 在线支付</span>"
						+"<span class='balance'>订单金额：<span class='money'>"+data.dataList[i].money+"</span>元</span>"
						+"</div><div class='zdetails2'>"
						+"<img class='xphone' src='img/"+data.dataList[i].url+"'><span class='zname'>"+data.dataList[i].goodsname+"</span>"
						+"<span class='shuliang'> "+data.dataList[i].price+" 元 x "+data.dataList[i].number+"</span>"
						+"<div class='dingdanxiangqing'>订单详情</div>"
						+"<div class='shenqingshouhou'>申请售后</div>"
						+"</div><div class='space'></div>"
				}
				$("#nowpage").val(data.nowPage);
				$("#zup").val(data.nowPage-1);
				$("#zdown").val(data.nowPage+1);
				str +="<input class='up' id='up' type='button' value='上一页'>"
					+"<input class='down' id='down' type='button' value='下一页'>"
					+"<div class='space'></div>"
				$("#youxiaodetails").html(str);
			}
		})
	})
	
	//有效下页点击
	$("body").on("click","#down",function(){
		$("#youxiaodetails").empty("div");
		//清空
		console.log($("#zdown").val());
		$.ajax({
			url:'details',
			type:'post',
			dataType:'json',
			data : {
				"currentPage" : $("#zdown").val(),
			},
			success:function(data){
				var str="";
				for(var i=0;i<data.dataList.length;i++){
					str +="<div class='zdetails1'>"
						+"<span class='yishouhuo'>已收货</span>"
						+"<span class='xiangqing'>"+data.dataList[i].time+" | "+data.dataList[i].name+" | 订单号："+data.dataList[i].id+" | 在线支付</span>"
						+"<span class='balance'>订单金额：<span class='money'>"+data.dataList[i].money+"</span>元</span>"
						+"</div><div class='zdetails2'>"
						+"<img class='xphone' src='img/"+data.dataList[i].url+"'><span class='zname'>"+data.dataList[i].goodsname+"</span>"
						+"<span class='shuliang'> "+data.dataList[i].price+" 元 x "+data.dataList[i].number+"</span>"
						+"<div class='dingdanxiangqing'>订单详情</div>"
						+"<div class='shenqingshouhou'>申请售后</div>"
						+"</div><div class='space'></div>"
				}
				$("#nowpage").val(data.nowPage);
				$("#zup").val(data.nowPage-1);
				$("#zdown").val(data.nowPage+1);
				str +="<input class='up' id='up' type='button' value='上一页'>"
					+"<input class='down' id='down' type='button' value='下一页'>"
					+"<div class='space'></div>"
				$("#youxiaodetails").html(str);
			}
		})
	})
	
	
	//待支付点击
	$("#daizhifu").click(function(){
		$("#zhifudetails").empty("div");
		$.ajax({
			url:'zhifudetails',
			type:'post',
			dataType:'json',
			success:function(data){
				if(data.dataList.length>0){
					var str="";
					for(var i=0;i<data.dataList.length;i++){
						str +="<div class='zdetails3'>"
							+"<span class='dengdaifukuan'>等待付款</span>"
							+"<span class='xiangqing1'>"+data.dataList[i].time+"| "+data.dataList[i].name+" | 订单号：| "+data.dataList[i].id+" | 在线支付</span>"
							+"<span class='balance'>订单金额：<span class='money'>"+data.dataList[i].money+"</span>元</span>"
							+"</div><div class='zdetails4'>"
							+"<img class='xphone' src='img/"+data.dataList[i].url+"'><span class='zname'>"+data.dataList[i].goodsname+"</span>"
							+"<span class='shuliang'>"+data.dataList[i].price+" 元 x "+data.dataList[i].number+"</span>"
							+"<div class='lijizhifu' id='lijizhifu"+[i]+"'>立即支付</div>"
							+"<div class='dingdanxiangqing1'>订单详情</div>"
							+"</div><div class='space'></div>"
					}
					$("#nowpage").val(data.nowPage);
					$("#zup").val(data.nowPage-1);
					$("#zdown").val(data.nowPage+1);
					if(data.dataList.length==1){
						console.log("我进1了");
						$("#zmoney1").val(data.dataList[0].money);
						$("#id1").val(data.dataList[0].id);
					}
					if(data.dataList.length==2){
						console.log("我进2了");
						$("#zmoney1").val(data.dataList[0].money);
						$("#zmoney2").val(data.dataList[1].money);
						$("#id1").val(data.dataList[0].id);
						$("#id2").val(data.dataList[1].id);
					}
					str +="<input class='up' id='up1' type='button' value='上一页'>"
					+"<input class='down' id='down1' type='button' value='下一页'>"
					+"<div class='space'></div>"
					$("#zhifudetails").html(str);
				}else{
					var str="<div class='empty'>当前没有待支付订单。</div>";
					$("#zhifudetails").html(str);
				}
				
			}
		})
	})
	
	//待支付上页点击
	$("body").on("click","#up1",function(){
		$("#zhifudetails").empty("div");
		console.log($("#zup").val());
		$.ajax({
			url:'zhifudetails',
			type:'post',
			dataType:'json',
			data : {
				"currentPage" : $("#zup").val(),
			},
			success:function(data){
				var str="";
				for(var i=0;i<data.dataList.length;i++){
					str +="<div class='zdetails3'>"
						+"<span class='dengdaifukuan'>等待付款</span>"
						+"<span class='xiangqing1'>"+data.dataList[i].time+"| "+data.dataList[i].name+" | 订单号：| "+data.dataList[i].id+" | 在线支付</span>"
						+"<span class='balance'>订单金额：<span class='money'>"+data.dataList[i].money+"</span>元</span>"
						+"</div><div class='zdetails4'>"
						+"<img class='xphone' src='img/"+data.dataList[i].url+"'><span class='zname'>"+data.dataList[i].goodsname+"</span>"
						+"<span class='shuliang'>"+data.dataList[i].price+" 元 x "+data.dataList[i].number+"</span>"
						+"<div class='lijizhifu' id='lijizhifu"+[i]+"'>立即支付</div>"
						+"<div class='dingdanxiangqing1'>订单详情</div>"
						+"</div><div class='space'></div>"
				}
				$("#nowpage").val(data.nowPage);
				$("#zup").val(data.nowPage-1);
				$("#zdown").val(data.nowPage+1);
				if(data.dataList.length==1){
					console.log("我进1了");
					$("#zmoney1").val(data.dataList[0].money);
					$("#id1").val(data.dataList[0].id);
				}
				if(data.dataList.length==2){
					console.log("我进2了");
					$("#zmoney1").val(data.dataList[0].money);
					$("#zmoney2").val(data.dataList[1].money);
					$("#id1").val(data.dataList[0].id);
					$("#id2").val(data.dataList[1].id);
				}
				str +="<input class='up' id='up1' type='button' value='上一页'>"
				+"<input class='down' id='down1' type='button' value='下一页'>"
				+"<div class='space'></div>"
				$("#zhifudetails").html(str);
			}
		})
	})
	
	//待支付下页点击
	$("body").on("click","#down1",function(){
		$("#zhifudetails").empty("div");
		console.log($("#zdown").val());
		$.ajax({
			url:'zhifudetails',
			type:'post',
			dataType:'json',
			data : {
				"currentPage" : $("#zdown").val(),
			},
			success:function(data){
				var str="";
				for(var i=0;i<data.dataList.length;i++){
					str +="<div class='zdetails3'>"
						+"<span class='dengdaifukuan'>等待付款</span>"
						+"<span class='xiangqing1'>"+data.dataList[i].time+"| "+data.dataList[i].name+" | 订单号：| "+data.dataList[i].id+" | 在线支付</span>"
						+"<span class='balance'>订单金额：<span class='money'>"+data.dataList[i].money+"</span>元</span>"
						+"</div><div class='zdetails4'>"
						+"<img class='xphone' src='img/"+data.dataList[i].url+"'><span class='zname'>"+data.dataList[i].goodsname+"</span>"
						+"<span class='shuliang'>"+data.dataList[i].price+" 元 x "+data.dataList[i].number+"</span>"
						+"<div class='lijizhifu' id='lijizhifu"+[i]+"'>立即支付</div>"
						+"<div class='dingdanxiangqing1'>订单详情</div>"
						+"</div><div class='space'></div>"
				}
				$("#nowpage").val(data.nowPage);
				$("#zup").val(data.nowPage-1);
				$("#zdown").val(data.nowPage+1);
				if(data.dataList.length==1){
					$("#zmoney1").val(data.dataList[0].money);
					$("#id1").val(data.dataList[0].id);
				}
				if(data.dataList.length==2){
					$("#zmoney1").val(data.dataList[0].money);
					$("#zmoney2").val(data.dataList[1].money);
					$("#id1").val(data.dataList[0].id);
					$("#id2").val(data.dataList[1].id);
				}	
				str +="<input class='up' id='up1' type='button' value='上一页'>"
				+"<input class='down' id='down1' type='button' value='下一页'>"
				+"<div class='space'></div>"
				$("#zhifudetails").html(str);
			}
		})
	})
	
	//收货点击
	$("#daishouhuo").click(function(){
		$("#shouhuodetails").empty("div");
		$.ajax({
			url:'shouhuodetails',
			type:'post',
			dataType:'json',
			success:function(data){
				if(data.dataList.length>0){
					var str="";
					for(var i=0;i<data.dataList.length;i++){
						str +="<div class='zdetails3'>"
							+"<span class='dengdaifukuan'>等待收货</span>"
							+"<span class='xiangqing1'>"+data.dataList[i].time+"| "+data.dataList[i].name+" | 订单号：| "+data.dataList[i].id+" | 在线支付</span>"
							+"<span class='balance'>订单金额：<span class='money'>"+data.dataList[i].money+"</span>元</span>"
							+"</div><div class='zdetails4'>"
							+"<img class='xphone' src='img/"+data.dataList[i].url+"'><span class='zname'>"+data.dataList[i].goodsname+"</span>"
							+"<span class='shuliang'> "+data.dataList[i].price+" 元 x "+data.dataList[i].number+"</span>"
							+"<div class='queren' id='queren"+[i]+"'>确认收货</div>"
							+"<div class='dingdanxiangqing2'>订单详情</div>"
							+"</div><div class='space'></div>"
					}
					$("#nowpage").val(data.nowPage);
					$("#zup").val(data.nowPage-1);
					$("#zdown").val(data.nowPage+1);
					if(data.dataList.length==1){
						$("#id1").val(data.dataList[0].id);
					}
					if(data.dataList.length==2){
						$("#id1").val(data.dataList[0].id);
						$("#id2").val(data.dataList[1].id);
					}	
					str +="<input class='up' id='up2' type='button' value='上一页'>"
					+"<input class='down' id='down2' type='button' value='下一页'>"
					+"<div class='space'></div>"
					$("#shouhuodetails").html(str);
				}else{
					var str="<div class='empty'>当前没有待收获订单。</div>";
					$("#shouhuodetails").html(str);
				}
				
			}
		})
	})
	
	//收货上页点击
	$("body").on("click","#up2",function(){
		$("#shouhuodetails").empty("div");
		console.log($("#up").val());
		$.ajax({
			url:'shouhuodetails',
			type:'post',
			dataType:'json',
			data : {
				"currentPage" : $("#zup").val(),
			},
			success:function(data){
				var str="";
				for(var i=0;i<data.dataList.length;i++){
					str +="<div class='zdetails3'>"
						+"<span class='dengdaifukuan'>等待收货</span>"
						+"<span class='xiangqing1'>"+data.dataList[i].time+"| "+data.dataList[i].name+" | 订单号：| "+data.dataList[i].id+" | 在线支付</span>"
						+"<span class='balance'>订单金额：<span class='money'>"+data.dataList[i].money+"</span>元</span>"
						+"</div><div class='zdetails4'>"
						+"<img class='xphone' src='img/"+data.dataList[i].url+"'><span class='zname'>"+data.dataList[i].goodsname+"</span>"
						+"<span class='shuliang'> "+data.dataList[i].price+" 元 x "+data.dataList[i].number+"</span>"
						+"<div class='queren' id='queren"+[i]+"'>确认收货</div>"
						+"<div class='dingdanxiangqing2'>订单详情</div>"
						+"</div><div class='space'></div>"
				}
				$("#nowpage").val(data.nowPage);
				$("#zup").val(data.nowPage-1);
				$("#zdown").val(data.nowPage+1);
				if(data.dataList.length==1){
					$("#id1").val(data.dataList[0].id);
				}
				if(data.dataList.length==2){
					$("#id1").val(data.dataList[0].id);
					$("#id2").val(data.dataList[1].id);
				}	
				str +="<input class='up' id='up2' type='button' value='上一页'>"
				+"<input class='down' id='down2' type='button' value='下一页'>"
				+"<div class='space'></div>"
				$("#shouhuodetails").html(str);
			}
		})
	})
	
	//收货下页点击
	$("body").on("click","#down2",function(){
		$("#shouhuodetails").empty("div");
		console.log($("#zdown").val());
		$.ajax({
			url:'shouhuodetails',
			type:'post',
			dataType:'json',
			data : {
				"currentPage" : $("#zdown").val(),
			},
			success:function(data){
				var str="";
				for(var i=0;i<data.dataList.length;i++){
					str +="<div class='zdetails3'>"
						+"<span class='dengdaifukuan'>等待收货</span>"
						+"<span class='xiangqing1'>"+data.dataList[i].time+"| "+data.dataList[i].name+" | 订单号：| "+data.dataList[i].id+" | 在线支付</span>"
						+"<span class='balance'>订单金额：<span class='money'>"+data.dataList[i].money+"</span>元</span>"
						+"</div><div class='zdetails4'>"
						+"<img class='xphone' src='img/"+data.dataList[i].url+"'><span class='zname'>"+data.dataList[i].goodsname+"</span>"
						+"<span class='shuliang'> "+data.dataList[i].price+" 元 x "+data.dataList[i].number+"</span>"
						+"<div class='queren' id='queren"+[i]+"'>确认收货</div>"
						+"<div class='dingdanxiangqing2'>订单详情</div>"
						+"</div><div class='space'></div>"
				}
				$("#nowpage").val(data.nowPage);
				$("#zup").val(data.nowPage-1);
				$("#zdown").val(data.nowPage+1);
				if(data.dataList.length==1){
					$("#id1").val(data.dataList[0].id);
				}
				if(data.dataList.length==2){
					$("#id1").val(data.dataList[0].id);
					$("#id2").val(data.dataList[1].id);
				}	
				str +="<input class='up' id='up2' type='button' value='上一页'>"
				+"<input class='down' id='down2' type='button' value='下一页'>"
				+"<div class='space'></div>"
				$("#shouhuodetails").html(str);
			}
		})
	})
	
	//已关闭点击
	$("#yiguanbi").click(function(){
		$("#closedetails").empty("div");
		$.ajax({
			url:'closedetails',
			type:'post',
			dataType:'json',
			success:function(data){
				if(data.dataList.length>0){
					var str="";
					for(var i=0;i<data.dataList.length;i++){
						str +="<div class='zdetails1'>"
							+"<span class='yishouhuo'>已收货</span>"
							+"<span class='xiangqing'>"+data.dataList[i].time+" | "+data.dataList[i].name+" | 订单号："+data.dataList[i].id+" | 在线支付</span>"
							+"<span class='balance'>订单金额：<span class='money'>"+data.dataList[i].money+"</span>元</span>"
							+"</div><div class='zdetails2'>"
							+"<img class='xphone' src='img/"+data.dataList[i].url+"'><span class='zname'>"+data.dataList[i].goodsname+"</span>"
							+"<span class='shuliang'> "+data.dataList[i].price+" 元 x "+data.dataList[i].number+"</span>"
							+"<div class='dingdanxiangqing'>订单详情</div>"
							+"<div class='shenqingshouhou'>申请售后</div>"
							+"</div><div class='space'></div>"
					}
					$("#nowpage").val(data.nowPage);
					$("#zup").val(data.nowPage-1);
					$("#zdown").val(data.nowPage+1);
					str +="<input class='up' id='up3' type='button' value='上一页'>"
					+"<input class='down' id='down3' type='button' value='下一页'>"
					+"<div class='space'></div>"
					$("#closedetails").html(str);
				}else{
					var str="<div class='empty'>当前没有已关闭订单。</div>";
					$("#closedetails").html(str);
				}
				
			}
		})
	})
	
	//已关闭上页点击
	$("body").on("click","#up3",function(){
		$("#closedetails").empty("div");
		$.ajax({
			url:'closedetails',
			type:'post',
			dataType:'json',
			data : {
				"currentPage" : $("#zup").val(),
			},
			success:function(data){
				var str="";
				for(var i=0;i<data.dataList.length;i++){
					str +="<div class='zdetails1'>"
						+"<span class='yishouhuo'>已收货</span>"
						+"<span class='xiangqing'>"+data.dataList[i].time+" | "+data.dataList[i].name+" | 订单号："+data.dataList[i].id+" | 在线支付</span>"
						+"<span class='balance'>订单金额：<span class='money'>"+data.dataList[i].money+"</span>元</span>"
						+"</div><div class='zdetails2'>"
						+"<img class='xphone' src='img/"+data.dataList[i].url+"'><span class='zname'>"+data.dataList[i].goodsname+"</span>"
						+"<span class='shuliang'> "+data.dataList[i].price+" 元 x "+data.dataList[i].number+"</span>"
						+"<div class='dingdanxiangqing'>订单详情</div>"
						+"<div class='shenqingshouhou'>申请售后</div>"
						+"</div><div class='space'></div>"
				}
				$("#nowpage").val(data.nowPage);
				$("#zup").val(data.nowPage-1);
				$("#zdown").val(data.nowPage+1);
				str +="<input class='up' id='up3' type='button' value='上一页'>"
				+"<input class='down' id='down3' type='button' value='下一页'>"
				+"<div class='space'></div>"
				$("#closedetails").html(str);
			}
		})
	})
	
	//已关闭下页点击
	$("body").on("click","#down3",function(){
		$("#closedetails").empty("div");
		$.ajax({
			url:'closedetails',
			type:'post',
			dataType:'json',
			data : {
				"currentPage" : $("#zdown").val(),
			},
			success:function(data){
				var str="";
				for(var i=0;i<data.dataList.length;i++){
					str +="<div class='zdetails1'>"
						+"<span class='yishouhuo'>已收货</span>"
						+"<span class='xiangqing'>"+data.dataList[i].time+" | "+data.dataList[i].name+" | 订单号："+data.dataList[i].id+" | 在线支付</span>"
						+"<span class='balance'>订单金额：<span class='money'>"+data.dataList[i].money+"</span>元</span>"
						+"</div><div class='zdetails2'>"
						+"<img class='xphone' src='img/"+data.dataList[i].url+"'><span class='zname'>"+data.dataList[i].goodsname+"</span>"
						+"<span class='shuliang'> "+data.dataList[i].price+" 元 x "+data.dataList[i].number+"</span>"
						+"<div class='dingdanxiangqing'>订单详情</div>"
						+"<div class='shenqingshouhou'>申请售后</div>"
						+"</div><div class='space'></div>"
				}
				$("#nowpage").val(data.nowPage);
				$("#zup").val(data.nowPage-1);
				$("#zdown").val(data.nowPage+1);
				str +="<input class='up' id='up3' type='button' value='上一页'>"
				+"<input class='down' id='down3' type='button' value='下一页'>"
				+"<div class='space'></div>"
				$("#closedetails").html(str);
			}
		})
	})
	
	
	
	
	
	
	$(".usernamexiala").mouseover(function(){
		$(".usernamexiala").css("backgroundColor","white");	
		$("#username").css("color","#ff6700")
		$(".more-solid.icon").css("color","#ff6700")
		//$(".hidden").slideDown(400);
		//����Ч��
		console.log("1111");
		$(".hidden").css("display","block");
	})
	
	$(".usernamexiala").mouseout(function(){
		$(".usernamexiala").css("backgroundColor","");	
		$("#username").css("color","")
		$(".more-solid.icon").css("color","")
		//$(".hidden").slideUp(400);
		//�����ջ���
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
		
	
})


