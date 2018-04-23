$(function(){
	console.log("搜索词："+$("#searchTerm").val());
	$.ajax({
		url:$("#PageContext").val()+'/judge/search',
		dataType:'json',
		type:'post',
		data:{
			"search":$("#searchTerm").val(),
		},
		success:function(data){
			console.log(data);
			if(data.totalCount>0){
				if(data.totalCount>8){
					$('#now-page').val(data.nowPage);
					$('#up-page').val(data.nowPage-1);
					$('#down-page').val(data.nowPage+1);
					var str="";
					var stc="<div class='SY_FOOLTER_TOP'>" +
							"<ul>" +
							"<li class='SY_FOOLTER_TOP_list_1'>推荐</li>" +
							"<li class='SY_FOOLTER_TOP_list_2'>新品</li>" +
							"<li class='SY_FOOLTER_TOP_list_2'>价格↓</li>" +
							"<li class='SY_FOOLTER_TOP_list_2'>价格↑</li>" +
							"<li class='SY_FOOLTER_TOP_list_2'>评论最多</li>" +
							"</ul>" +
							"</div>" +
							"<div class='SY_FOOLTER_CENTER clearfix'>";
					var page="<div class='page'><div class='up-page'><</div>" +
							"<span class='nowpage'>当前第"+data.nowPage+"页</span>" +
							"<div class='down-page'>></div>" +
							"<span class='all-pages'>一共"+data.totalPage+"页</span></div>";
					for(var i=0;i<data.dataList.length;i++){
						var label ='';
						var oldprice ='';
						if(data.dataList[i].oldprice=='null'){
							oldprice='';
						}else{
							oldprice=data.dataList[i].oldprice+"元";
						}
						if(data.dataList[i].label=='null'){
							console.log('456');
							label='';
						}else{
							console.log('789');
							label=data.dataList[i].label;
						}
						str += 	"<div class='img'><i class='iconfont love'></i>" +
								"<i class='iconfont shoppingcart'></i>" +
								"<img src='"+$("#PageContext").val()+"/img/"+data.dataList[i].urlone+"' class='img1'>" +
								"<img src='"+$("#PageContext").val()+"/img/"+data.dataList[i].urltwo+"' class='img2'>" +
								"<img src='"+$("#PageContext").val()+"/img/"+data.dataList[i].urlthree+"' class='img3'>" +
								"<div class='note'>"+label+"</div>" +
								"<div class='goodsname'><span>"+data.dataList[i].fullname+" </span></div>" +
								"<div class='price'><span class='nowprice'>"+data.dataList[i].nowprice+"元&nbsp&nbsp&nbsp</span><span class='oldprice'><del>"+oldprice+"</del></span></div>" +
								"<div class='ximg zximg1' ><img class='xximg' src='"+$("#PageContext").val()+"/img/"+data.dataList[i].urlone+"'></div>" +
								"<div class='ximg zximg2' ><img class='xximg' src='"+$("#PageContext").val()+"/img/"+data.dataList[i].urltwo+"'></div>" +
								"<div class='ximg zximg3' ><img class='xximg' src='"+$("#PageContext").val()+"/img/"+data.dataList[i].urlthree+"'></div>" +
								"</div>"

					}
					$(".SY_FOOLTER").html(stc+str+page+"</div>");
					console.log('我加了分页标签了');
				}else{
					var str="";
					var stc="<div class='SY_FOOLTER_TOP'>" +
							"<ul>" +
							"<li class='SY_FOOLTER_TOP_list_1'>推荐</li>" +
							"<li class='SY_FOOLTER_TOP_list_2'>新品</li>" +
							"<li class='SY_FOOLTER_TOP_list_2'>价格↓</li>" +
							"<li class='SY_FOOLTER_TOP_list_2'>价格↑</li>" +
							"<li class='SY_FOOLTER_TOP_list_2'>评论最多</li>" +
							"</ul>" +
							"</div>" +
							"<div class='SY_FOOLTER_CENTER clearfix'>";
					
					var jianxi="<div class='jianxi'><div id='fill'></div></div>";
					for(var i=0;i<data.dataList.length;i++){
						var label ='';
						var oldprice ='';
						if(data.dataList[i].oldprice=='null'){
							oldprice='';
						}else{
							oldprice=data.dataList[i].oldprice+"元";
						}
						if(data.dataList[i].label=='null'){
							console.log('456');
							label='';
						}else{
							console.log('789');
							label=data.dataList[i].label;
						}
						str += 	"<div class='img'><i class='iconfont love'></i>" +
								"<i class='iconfont shoppingcart'></i>" +
								"<img src='"+$("#PageContext").val()+"/img/"+data.dataList[i].urlone+"' class='img1'>" +
								"<img src='"+$("#PageContext").val()+"/img/"+data.dataList[i].urltwo+"' class='img2'>" +
								"<img src='"+$("#PageContext").val()+"/img/"+data.dataList[i].urlthree+"' class='img3'>" +
								"<div class='note'>"+label+"</div>" +
								"<div class='goodsname'><span>"+data.dataList[i].fullname+" </span></div>" +
								"<div class='price'><span class='nowprice'>"+data.dataList[i].nowprice+"元&nbsp&nbsp&nbsp</span><span class='oldprice'><del>"+oldprice+"</del></span></div>" +
								"<div class='ximg zximg1' ><img class='xximg' src='"+$("#PageContext").val()+"/img/"+data.dataList[i].urlone+"'></div>" +
								"<div class='ximg zximg2' ><img class='xximg' src='"+$("#PageContext").val()+"/img/"+data.dataList[i].urltwo+"'></div>" +
								"<div class='ximg zximg3' ><img class='xximg' src='"+$("#PageContext").val()+"/img/"+data.dataList[i].urlthree+"'></div>" +
								"</div>"

					}
					$(".SY_FOOLTER").html(stc+str+jianxi+"</div>");
				}
			}else{
				console.log("我进没找到数据了");
				var str="<div class='jianxi'></div>" +
				"<div class='search-find'>" +
				"<div class='search-zfind'>" +
				"<h2>抱歉，没有搜索到与“<span class='search-term'>"+$(".xxs").val()+"</span>”相关的商品</h2><br/>" +
				"<span class='search-message'>请检查您的输入是否有误</span><br/>" +
				"<span class='search-message'>如有任何意见或建议，期待您<span class='search-term'>反馈给我们</span></span><br/><br/><br/>" +
				"<span>您还可以尝试以下搜索：<span class='search-term'>小米</span> | <span class='search-term'>红米</span> | <span class='search-term'>笔记本</span> | <span class='search-term'>净水器</span></span>" +
				"</div>" +
				"</div>";
				$(".SY_FOOLTER").html(str);
			}
		}
	})
	
	$("#search-click").click(function(){
		if($(".xxs").val()==""){
			alert("请输入搜索词");
		}else{
			$('#searchTerm').val($(".xxs").val());
			$.ajax({
				url:$("#PageContext").val()+'/judge/search',
				dataType:'json',
				type:'post',
				data:{
					"search":$(".xxs").val(),
				},
				success:function(data){
					console.log(data);
					if(data.totalCount==0){
						var str="<div class='jianxi'></div>" +
								"<div class='search-find'>" +
								"<div class='search-zfind'>" +
								"<h2>抱歉，没有搜索到与“<span class='search-term'>"+$(".xxs").val()+"</span>”相关的商品</h2><br/>" +
								"<span class='search-message'>请检查您的输入是否有误</span><br/>" +
								"<span class='search-message'>如有任何意见或建议，期待您<span class='search-term'>反馈给我们</span></span><br/><br/><br/>" +
								"<span>您还可以尝试以下搜索：<span class='search-term'>小米</span> | <span class='search-term'>红米</span> | <span class='search-term'>笔记本</span> | <span class='search-term'>净水器</span></span>" +
								"</div>" +
								"</div>";
						$(".SY_FOOLTER").html(str);
					}else{
						if(data.totalCount>8){
							$('#now-page').val(data.nowPage);
							$('#up-page').val(data.nowPage-1);
							$('#down-page').val(data.nowPage+1);
							var str="";
							var stc="<div class='SY_FOOLTER_TOP'>" +
									"<ul>" +
									"<li class='SY_FOOLTER_TOP_list_1'>推荐</li>" +
									"<li class='SY_FOOLTER_TOP_list_2'>新品</li>" +
									"<li class='SY_FOOLTER_TOP_list_2'>价格↓</li>" +
									"<li class='SY_FOOLTER_TOP_list_2'>价格↑</li>" +
									"<li class='SY_FOOLTER_TOP_list_2'>评论最多</li>" +
									"</ul>" +
									"</div>" +
									"<div class='SY_FOOLTER_CENTER clearfix'>";
							var page="<div class='page'><div class='up-page'><</div>" +
									"<span class='nowpage'>当前第"+data.nowPage+"页</span>" +
									"<div class='down-page'>></div>" +
									"<span class='all-pages'>一共"+data.totalPage+"页</span></div>";
							for(var i=0;i<data.dataList.length;i++){
								var label ='';
								var oldprice ='';
								if(data.dataList[i].oldprice=='null'){
									oldprice='';
								}else{
									oldprice=data.dataList[i].oldprice+"元";
								}
								if(data.dataList[i].label=='null'){
									console.log('456');
									label='';
								}else{
									console.log('789');
									label=data.dataList[i].label;
								}
								str += 	"<div class='img'><i class='iconfont love'></i>" +
										"<i class='iconfont shoppingcart'></i>" +
										"<img src='"+$("#PageContext").val()+"/img/"+data.dataList[i].urlone+"' class='img1'>" +
										"<img src='"+$("#PageContext").val()+"/img/"+data.dataList[i].urltwo+"' class='img2'>" +
										"<img src='"+$("#PageContext").val()+"/img/"+data.dataList[i].urlthree+"' class='img3'>" +
										"<div class='note'>"+label+"</div>" +
										"<div class='goodsname'><span>"+data.dataList[i].fullname+" </span></div>" +
										"<div class='price'><span class='nowprice'>"+data.dataList[i].nowprice+"元&nbsp&nbsp&nbsp</span><span class='oldprice'><del>"+oldprice+"</del></span></div>" +
										"<div class='ximg zximg1' ><img class='xximg' src='"+$("#PageContext").val()+"/img/"+data.dataList[i].urlone+"'></div>" +
										"<div class='ximg zximg2' ><img class='xximg' src='"+$("#PageContext").val()+"/img/"+data.dataList[i].urltwo+"'></div>" +
										"<div class='ximg zximg3' ><img class='xximg' src='"+$("#PageContext").val()+"/img/"+data.dataList[i].urlthree+"'></div>" +
										"</div>"

							}
							$(".SY_FOOLTER").html(stc+str+page+"</div>");
							console.log('我加了分页标签了');
						
						}else{
							var str="";
							var stc="<div class='SY_FOOLTER_TOP'>" +
									"<ul>" +
									"<li class='SY_FOOLTER_TOP_list_1'>推荐</li>" +
									"<li class='SY_FOOLTER_TOP_list_2'>新品</li>" +
									"<li class='SY_FOOLTER_TOP_list_2'>价格↓</li>" +
									"<li class='SY_FOOLTER_TOP_list_2'>价格↑</li>" +
									"<li class='SY_FOOLTER_TOP_list_2'>评论最多</li>" +
									"</ul>" +
									"</div>" +
									"<div class='SY_FOOLTER_CENTER clearfix'>";
							var jianxi="<div class='jianxi'><div id='fill'></div></div>";
							for(var i=0;i<data.dataList.length;i++){
								var label ='';
								var oldprice ='';
								if(data.dataList[i].oldprice=='null'){
									oldprice='';
								}else{
									oldprice=data.dataList[i].oldprice+"元";
								}
								
								if(data.dataList[i].label=='null'){
									console.log('456');
									label='';
								}else{
									console.log('789');
									label=data.dataList[i].label;
								}
								str += 	"<div class='img'><i class='iconfont love'></i>" +
										"<i class='iconfont shoppingcart'></i>" +
										"<img src='"+$("#PageContext").val()+"/img/"+data.dataList[i].urlone+"' class='img1'>" +
										"<img src='"+$("#PageContext").val()+"/img/"+data.dataList[i].urltwo+"' class='img2'>" +
										"<img src='"+$("#PageContext").val()+"/img/"+data.dataList[i].urlthree+"' class='img3'>" +
										"<div class='note'>"+label+"</div>" +
										"<div class='goodsname'><span>"+data.dataList[i].fullname+" </span></div>" +
										"<div class='price'><span class='nowprice'>"+data.dataList[i].nowprice+"元&nbsp&nbsp&nbsp</span><span class='oldprice'><del>"+oldprice+"</del></span></div>" +
										"<div class='ximg zximg1' ><img class='xximg' src='"+$("#PageContext").val()+"/img/"+data.dataList[i].urlone+"'></div>" +
										"<div class='ximg zximg2' ><img class='xximg' src='"+$("#PageContext").val()+"/img/"+data.dataList[i].urltwo+"'></div>" +
										"<div class='ximg zximg3' ><img class='xximg' src='"+$("#PageContext").val()+"/img/"+data.dataList[i].urlthree+"'></div>" +
										"</div>"
		
							}
							$(".SY_FOOLTER").html(stc+str+jianxi+"</div>");
						}
					}
				}
			})
		}
	})
	
	$('body').on('click','.up-page',function(){
		$.ajax({
			url:$("#PageContext").val()+'/judge/search',
			dataType:'json',
			type:'post',
			data:{
				"search":$("#searchTerm").val(),
				"currentPage":$('#up-page').val(),
			},
			success:function(data){
				$('#now-page').val(data.nowPage);
				$('#up-page').val(data.nowPage-1);
				$('#down-page').val(data.nowPage+1);
				var str="";
				var stc="<div class='SY_FOOLTER_TOP'>" +
						"<ul>" +
						"<li class='SY_FOOLTER_TOP_list_1'>推荐</li>" +
						"<li class='SY_FOOLTER_TOP_list_2'>新品</li>" +
						"<li class='SY_FOOLTER_TOP_list_2'>价格↓</li>" +
						"<li class='SY_FOOLTER_TOP_list_2'>价格↑</li>" +
						"<li class='SY_FOOLTER_TOP_list_2'>评论最多</li>" +
						"</ul>" +
						"</div>" +
						"<div class='SY_FOOLTER_CENTER clearfix'>";
				var page="<div class='page'><div class='up-page'><</div>" +
						"<span class='nowpage'>当前第"+data.nowPage+"页</span>" +
						"<div class='down-page'>></div>" +
						"<span class='all-pages'>一共"+data.totalPage+"页</span></div>";
				for(var i=0;i<data.dataList.length;i++){
					var label ='';
					var oldprice ='';
					if(data.dataList[i].oldprice=='null'){
						oldprice='';
					}else{
						oldprice=data.dataList[i].oldprice+"元";
					}
					if(data.dataList[i].label=='null'){
						console.log('456');
						label='';
					}else{
						console.log('789');
						label=data.dataList[i].label;
					}
					str += 	"<div class='img'><i class='iconfont love'></i>" +
							"<i class='iconfont shoppingcart'></i>" +
							"<img src='"+$("#PageContext").val()+"/img/"+data.dataList[i].urlone+"' class='img1'>" +
							"<img src='"+$("#PageContext").val()+"/img/"+data.dataList[i].urltwo+"' class='img2'>" +
							"<img src='"+$("#PageContext").val()+"/img/"+data.dataList[i].urlthree+"' class='img3'>" +
							"<div class='note'>"+label+"</div>" +
							"<div class='goodsname'><span>"+data.dataList[i].fullname+" </span></div>" +
							"<div class='price'><span class='nowprice'>"+data.dataList[i].nowprice+"元&nbsp&nbsp&nbsp</span><span class='oldprice'><del>"+oldprice+"</del></span></div>" +
							"<div class='ximg zximg1' ><img class='xximg' src='"+$("#PageContext").val()+"/img/"+data.dataList[i].urlone+"'></div>" +
							"<div class='ximg zximg2' ><img class='xximg' src='"+$("#PageContext").val()+"/img/"+data.dataList[i].urltwo+"'></div>" +
							"<div class='ximg zximg3' ><img class='xximg' src='"+$("#PageContext").val()+"/img/"+data.dataList[i].urlthree+"'></div>" +
							"</div>"

				}
				$(".SY_FOOLTER").html(stc+str+page+"</div>");
				console.log('我加了分页标签了');
			}
		})
		
	})
	
	$('body').on('click','.down-page',function(){
		$.ajax({
			url:$("#PageContext").val()+'/judge/search',
			dataType:'json',
			type:'post',
			data:{
				"search":$("#searchTerm").val(),
				"currentPage":$('#down-page').val(),
			},
			success:function(data){
				$('#now-page').val(data.nowPage);
				$('#up-page').val(data.nowPage-1);
				$('#down-page').val(data.nowPage+1);
				var str="";
				var stc="<div class='SY_FOOLTER_TOP'>" +
						"<ul>" +
						"<li class='SY_FOOLTER_TOP_list_1'>推荐</li>" +
						"<li class='SY_FOOLTER_TOP_list_2'>新品</li>" +
						"<li class='SY_FOOLTER_TOP_list_2'>价格↓</li>" +
						"<li class='SY_FOOLTER_TOP_list_2'>价格↑</li>" +
						"<li class='SY_FOOLTER_TOP_list_2'>评论最多</li>" +
						"</ul>" +
						"</div>" +
						"<div class='SY_FOOLTER_CENTER clearfix'>";
				var page="<div class='page'><div class='up-page'><</div>" +
						"<span class='nowpage'>当前第"+data.nowPage+"页</span>" +
						"<div class='down-page'>></div>" +
						"<span class='all-pages'>一共"+data.totalPage+"页</span></div>";
				for(var i=0;i<data.dataList.length;i++){
					var label ='';
					var oldprice ='';
					if(data.dataList[i].oldprice=='null'){
						oldprice='';
					}else{
						oldprice=data.dataList[i].oldprice+"元";
					}
					if(data.dataList[i].label=='null'){
						console.log('456');
						label='';
					}else{
						console.log('789');
						label=data.dataList[i].label;
					}
					str += 	"<div class='img'><i class='iconfont love'></i>" +
							"<i class='iconfont shoppingcart'></i>" +
							"<img src='"+$("#PageContext").val()+"/img/"+data.dataList[i].urlone+"' class='img1'>" +
							"<img src='"+$("#PageContext").val()+"/img/"+data.dataList[i].urltwo+"' class='img2'>" +
							"<img src='"+$("#PageContext").val()+"/img/"+data.dataList[i].urlthree+"' class='img3'>" +
							"<div class='note'>"+label+"</div>" +
							"<div class='goodsname'><span>"+data.dataList[i].fullname+" </span></div>" +
							"<div class='price'><span class='nowprice'>"+data.dataList[i].nowprice+"元&nbsp&nbsp&nbsp</span><span class='oldprice'><del>"+oldprice+"</del></span></div>" +
							"<div class='ximg zximg1' ><img class='xximg' src='"+$("#PageContext").val()+"/img/"+data.dataList[i].urlone+"'></div>" +
							"<div class='ximg zximg2' ><img class='xximg' src='"+$("#PageContext").val()+"/img/"+data.dataList[i].urltwo+"'></div>" +
							"<div class='ximg zximg3' ><img class='xximg' src='"+$("#PageContext").val()+"/img/"+data.dataList[i].urlthree+"'></div>" +
							"</div>"

				}
				$(".SY_FOOLTER").html(stc+str+page+"</div>");
				console.log('我加了分页标签了');
			}
		})
		
	})
	
	
	
	$('body').on('mouseover','.up-page',function(){
		$('.up-page').css('color','#FF6B00')
	})
	
	$('body').on('mouseout','.up-page',function(){
		$('.up-page').css('color','');
	})
	
	$('body').on('mouseover','.down-page',function(){
		$('.down-page').css('color','#FF6B00')
	})
	
	$('body').on('mouseout','.down-page',function(){
		$('.down-page').css('color','');
	})
	
	$(".ni").mouseover(function(){
		$(this).css("color","#ff6600")
	})
	
	$(".ni").mouseout(function(){
		$(this).css("color","")
	})
	
	$('body').on("mouseover",".img",function(){
		$(this).children('i').first().css("display",'block');
		$(this).children('i').last().css("display",'block');
	})
	
	$('body').on('mouseout','.img',function(){
		$(this).children('i').first().css("display",'none');
		$(this).children('i').last().css("display",'none');
	})
	
	$('body').on('mouseover','.zximg1',function(){
		$(this).css("border","1px #ff6600 solid");
		$(this).siblings('div').eq(3).css("border","1px #e0e0e0 solid");
		$(this).siblings('div').eq(4).css("border","1px #e0e0e0 solid");
		$(this).siblings('img').eq(1).css('display','none');
		$(this).siblings('img').eq(2).css('display','none');
		$(this).siblings('img').eq(0).css('display','block');
	})
	
	$('body').on('mouseover','.zximg2',function(){
		$(this).css("border","1px #ff6600 solid");
		$(this).siblings('div').eq(3).css("border","1px #e0e0e0 solid");
		$(this).siblings('div').eq(4).css("border","1px #e0e0e0 solid");
		$(this).siblings('img').eq(0).css('display','none');
		$(this).siblings('img').eq(2).css('display','none');
		$(this).siblings('img').eq(1).css('display','block');
	})
	
	$('body').on('mouseover','.zximg3',function(){
		$(this).css("border","1px #ff6600 solid");
		$(this).siblings('div').eq(3).css("border","1px #e0e0e0 solid");
		$(this).siblings('div').eq(4).css("border","1px #e0e0e0 solid");	
		$(this).siblings('img').eq(0).css('display','none');
		$(this).siblings('img').eq(1).css('display','none');
		$(this).siblings('img').eq(2).css('display','block');
		
	})
	
	
	
})