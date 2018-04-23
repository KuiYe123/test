$(function(){
	$(".qure").mouseover(function(){
		$(".TOP-SHOW").css("display","block");
		$(".TOP-SHOW-2").css("display","none");
	});
	
	$(".TOP-SHOW").mouseover(function(){
		$(".TOP-SHOW").css("display","block");
	});
	$(".TOP-SHOW").mouseout(function(){
		$(".TOP-SHOW").css("display","none");
	});
	
	$(".qure2").mouseover(function(){
		$(".TOP-SHOW-2").css("display","block");
		$(".TOP-SHOW").css("display","none");
	});
	
	$(".TOP-SHOW-2").mouseover(function(){
		$(".TOP-SHOW-2").css("display","block");
	});
	$(".TOP-SHOW-2").mouseout(function(){
		$(".TOP-SHOW-2").css("display","none");
	});
	
	$(".product-0").mouseover(function(){
		$(".show_div-0").css("display","block");
		
	})
	$(".product-0").mouseout(function(){
		$(".show_div-0").css("display","none");
	})
	
	$(".product-1").mouseover(function(){
		$(".show_div-1").css("display","block");
	})
	$(".product-1").mouseout(function(){
		$(".show_div-1").css("display","none");
	})
	$(".product-2").mouseover(function(){
		$(".show_div-2").css("display","block");
	})
	$(".product-2").mouseout(function(){
		$(".show_div-2").css("display","none");
	})
		$(".product-3").mouseover(function(){
		$(".show_div-0").css("display","block");
	})
	$(".product-3").mouseout(function(){
		$(".show_div-0").css("display","none");
	})
		$(".product-4").mouseover(function(){
		$(".show_div-1").css("display","block");
	})
	$(".product-4").mouseout(function(){
		$(".show_div-1").css("display","none");
	})
			$(".product-5").mouseover(function(){
		$(".show_div-2").css("display","block");
	})
	$(".product-5").mouseout(function(){
		$(".show_div-2").css("display","none");
	})
			$(".product-6").mouseover(function(){
		$(".show_div-0").css("display","block");
	})
	$(".product-6").mouseout(function(){
		$(".show_div-0").css("display","none");
	})
	$(".product-7").mouseover(function(){
		$(".show_div-1").css("display","block");
	})
	$(".product-7").mouseout(function(){
		$(".show_div-1").css("display","none");
	})
				$(".product-8").mouseover(function(){
		$(".show_div-2").css("display","block");
	})
	$(".product-8").mouseout(function(){
		$(".show_div-2").css("display","none");
	})
	$(".star-control2").click(function(){
			$(".star-pic-ul").css("left","-1226px");
			$(".test2").css("color","#e0e0e0")
	})
	$(".star-control1").click(function(){
			$(".star-pic-ul").css("left","0px");
			$(".test1").css("color","#e0e0e0");
	})
	$(".star-control1").mouseover(function(){
			$(".test1").css("color","#ff6700");
	})
	$(".star-control2").mouseover(function(){
			$(".test2").css("color","#ff6700");
	})
	$(".star-control1").mouseout(function(){
			$(".test1").css("color","#b0b0b0");
	})
	$(".star-control2").mouseout(function(){
			$(".test2").css("color","#b0b0b0");
	})
	
	$(".lun_li").click(function(){
		$(".lun_li").css("background-color","#b0b0b0");
		$(this).css("background-color","#ff6709");
	if($(this).attr("asd")==1){
		$(".books_ul").css("margin-left","0");
	}else if($(this).attr("asd")==2){
		$(".books_ul").css("margin-left","-296px");
	}else{
		$(".books_ul").css("margin-left","-592px");
		
	}
	})
	$(".MIUI_li").click(function(){
		$(".MIUI_li").css("background-color","#b0b0b0");
		$(this).css("background-color","#ff6709");
	if($(this).attr("asd")==1){
		$(".MIUI_ul").css("margin-left","0");
	}else if($(this).attr("asd")==2){
		$(".MIUI_ul").css("margin-left","-296px");
	}else{
		$(".MIUI_ul").css("margin-left","-592px");
		
	}
	})
	$(".Game_li").click(function(){
		$(".Game_li").css("background-color","#b0b0b0");
		$(this).css("background-color","#ff6709");
	if($(this).attr("asd")==1){
		$(".Game_ul").css("margin-left","0");
	}else if($(this).attr("asd")==2){
		$(".Game_ul").css("margin-left","-296px");
	}else{
		$(".Game_ul").css("margin-left","-592px");
		
	}
	})
	$(".App_li").click(function(){
		$(".App_li").css("background-color","#b0b0b0");
		$(this).css("background-color","#ff6709");
	if($(this).attr("asd")==1){
		$(".App_ul").css("margin-left","0");
	}else if($(this).attr("asd")==2){
		$(".App_ul").css("margin-left","-296px");
	}else{
		$(".App_ul").css("margin-left","-592px");
		
	}
	});
	$(".Books_turn").click(function(){
		$(".books_ul").css("margin-left","0px");
	});
	$(".Books_turn").mouseover(function(){
		$(".Books_turn").css("background-color","#464544");
	});
	$(".Books_turn").mouseout(function(){
		$(".Books_turn").css("background-color","#c3c0bd");
	});
	$(".Books_turns").click(function(){
		$(".books_ul").css("margin-left","-296px");
	});
	$(".Books_turns").mouseover(function(){
		$(".Books_turns").css("background-color","#464544");
	});
	$(".Books_turns").mouseout(function(){
		$(".Books_turns").css("background-color","#c3c0bd");
	});
	
	$(".MIUI_turn").click(function(){
		$(".MIUI_ul").css("margin-left","0");
	});
	$(".MIUI_turn").mouseover(function(){
		$(".MIUI_turn").css("background-color","#464544");
	});
	$(".MIUI_turn").mouseout(function(){
		$(".MIUI_turn").css("background-color","#c3c0bd");
	});
	$(".MIUI_turns").click(function(){
		$(".MIUI_ul").css("margin-left","-296px");
	});
	$(".MIUI_turns").mouseover(function(){
		$(".MIUI_turns").css("background-color","#464544");
	});
	$(".MIUI_turns").mouseout(function(){
		$(".MIUI_turns").css("background-color","#c3c0bd");
	});
	
	$(".Game_turn").click(function(){
	$(".Game_ul").css("margin-left","0");
	});
	$(".Game_turn").mouseover(function(){
		$(".Game_turn").css("background-color","#464544");
	});
	$(".Game_turn").mouseout(function(){
		$(".Game_turn").css("background-color","#c3c0bd");
	});
	$(".Game_turns").click(function(){
		$(".Game_ul").css("margin-left","-296px");
	});
	$(".Game_turns").mouseover(function(){
		$(".Game_turns").css("background-color","#464544");
	});
	$(".Game_turns").mouseout(function(){
		$(".Game_turns").css("background-color","#c3c0bd");
	});

	$(".App_turn").click(function(){
	$(".App_ul").css("margin-left","0");
	});
	$(".App_turn").mouseover(function(){
		$(".App_turn").css("background-color","#464544");
	});
	$(".App_turn").mouseout(function(){
		$(".App_turn").css("background-color","#c3c0bd");
	});
	$(".App_turns").click(function(){
		$(".App_ul").css("margin-left","-296px");
	});
	$(".App_turns").mouseover(function(){
		$(".App_turns").css("background-color","#464544");
	});
	$(".App_turns").mouseout(function(){
		$(".App_turns").css("background-color","#c3c0bd");
	});
	$(".video-play").mouseover(function(){
		$(".video-play").css("background-color","#ff6700");
		$(".video-play").css("border-width","0px");
	});
	$(".video-play").mouseout(function(){
		$(".video-play").css("background-color","#424242");
		$(".video-play").css("border-width","2px");
	});
	$(".video-play-2").mouseover(function(){
		$(".video-play-2").css("background-color","#ff6700");
		$(".video-play-2").css("border-width","0px");
	});
	$(".video-play-2").mouseout(function(){
		$(".video-play-2").css("background-color","#424242");
		$(".video-play-2").css("border-width","2px");
	});
	$(".video-play-3").mouseover(function(){
		$(".video-play-3").css("background-color","#ff6700");
		$(".video-play-3").css("border-width","0px");
	});
	$(".video-play-3").mouseout(function(){
		$(".video-play-3").css("background-color","#424242");
		$(".video-play-3").css("border-width","2px");
	});
	$(".video-play-4").mouseover(function(){
		$(".video-play-4").css("background-color","#ff6700");
		$(".video-play-4").css("border-width","0px");
	});
	$(".video-play-4").mouseout(function(){
		$(".video-play-4").css("background-color","#424242");
		$(".video-play-4").css("border-width","2px");
	});
	
	
	$(".appear").mouseover(function(){
	$(this).children(".pop").fadeIn("slow");
	})
	$(".appear").mouseout(function(){
		$(this).css("box-shadow","");
		$(this).children(".pop").css("display","none");
	})
	
	
	
	$(".blck_tem").mouseenter(function(){
		$(this).css("box-shadow","0 10px 20px rgba(93, 10, 95, 0.65)");
		$(this).children(".pop").fadeIn("slow");
	})
	
	$(".blck_tem").mouseleave(function(){
		$(this).css("box-shadow","");
		$(this).children(".pop").fadeOut("slow");
	})
	
	$(".test_16 .blck_tem_s").mouseenter(function(){
		$(this).css("box-shadow","0 10px 20px rgba(93, 10, 95, 0.65)");
	})
	$(".test_16 .blck_tem_s").mouseleave(function(){
		$(this).css("box-shadow","");
	})
	
	$(".elec_17 .blck_tem").mouseenter(function(){
		$(this).css("box-shadow","0 10px 20px rgba(93, 10, 95, 0.65)");
		$(this).children(".pop").fadeIn("slow");
	})
	$(".elec_17 .blck_tem").mouseleave(function(){
		$(this).css("box-shadow","");
		$(this).children(".pop").fadeOut("slow");
	})
	
	$(".elec_17 .blck_tem_s").mouseenter(function(){
		$(this).css("box-shadow","0 10px 20px rgba(93, 10, 95, 0.65)");
	})
	$(".elec_17 .blck_tem_s").mouseleave(function(){
		$(this).css("box-shadow","");
	})
	
	$(".elec_18 .blck_tem").mouseenter(function(){
		$(this).css("box-shadow","0 10px 20px rgba(93, 10, 95, 0.65)");
		$(this).children(".pop").fadeIn("slow");
	})
	$(".elec_18 .blck_tem").mouseleave(function(){
		$(this).css("box-shadow","");
		$(this).children(".pop").fadeOut("slow");
	})
	
	$(".elec_18 .blck_tem_s").mouseenter(function(){
		$(this).css("box-shadow","0 10px 20px rgba(93, 10, 95, 0.65)");
	})
	$(".elec_18 .blck_tem_s").mouseleave(function(){
		$(this).css("box-shadow","");
	})
	
	$(".elec_19 .blck_tem").mouseenter(function(){
		$(this).css("box-shadow","0 10px 20px rgba(93, 10, 95, 0.65)");
		$(this).children(".pop").fadeIn("slow");
	})
	$(".elec_19 .blck_tem").mouseleave(function(){
		$(this).css("box-shadow","");
		$(this).children(".pop").fadeOut("slow");
	})
	
	$(".elec_19 .blck_tem_s").mouseenter(function(){
		$(this).css("box-shadow","0 10px 20px rgba(93, 10, 95, 0.65)");
	})
	$(".elec_19 .blck_tem_s").mouseleave(function(){
		$(this).css("box-shadow","");
	})
	
	$(".True_1 .blck_tem").mouseenter(function(){
		$(this).css("box-shadow","0 10px 20px rgba(93, 10, 95, 0.65)");
		$(this).children(".pop").fadeIn("slow");
	})
	$(".True_1 .blck_tem").mouseleave(function(){
		$(this).css("box-shadow","");
		$(this).children(".pop").fadeOut("slow");
	})
	
	$(".True_1 .blck_tem_s").mouseenter(function(){
		$(this).css("box-shadow","0 10px 20px rgba(93, 10, 95, 0.65)");
	})
	$(".True_1 .blck_tem_s").mouseleave(function(){
		$(this).css("box-shadow","");
	})
	
	$(".True_2 .blck_tem").mouseenter(function(){
		$(this).css("box-shadow","0 10px 20px rgba(93, 10, 95, 0.65)");
		$(this).children(".pop").fadeIn("slow");
	})
	$(".True_2.blck_tem").mouseleave(function(){
		$(this).css("box-shadow","");
		$(this).children(".pop").fadeOut("slow");
	})
	
	$(".True_2 .blck_tem_s").mouseenter(function(){
		$(this).css("box-shadow","0 10px 20px rgba(93, 10, 95, 0.65)");
	})
	$(".True_2 .blck_tem_s").mouseleave(function(){
		$(this).css("box-shadow","");
	})
	
	$(".True_3 .blck_tem").mouseenter(function(){
		$(this).css("box-shadow","0 10px 20px rgba(93, 10, 95, 0.65)");
		$(this).children(".pop").fadeIn("slow");
	})
	$(".True_3 .blck_tem").mouseleave(function(){
		$(this).css("box-shadow","");
		$(this).children(".pop").fadeOut("slow");
	})
	
	$(".True_3 .blck_tem_s").mouseenter(function(){
		$(this).css("box-shadow","0 10px 20px rgba(93, 10, 95, 0.65)");
	})
	$(".True_3 .blck_tem_s").mouseleave(function(){
		$(this).css("box-shadow","");
	})
	$(".True_4 .blck_tem").mouseenter(function(){
		$(this).css("box-shadow","0 10px 20px rgba(93, 10, 95, 0.65)");
		$(this).children(".pop").fadeIn("slow");
	})
	$(".True_4 .blck_tem").mouseleave(function(){
		$(this).css("box-shadow","");
		$(this).children(".pop").fadeOut("slow");
	})
	
	$(".True_4 .blck_tem_s").mouseenter(function(){
		$(this).css("box-shadow","0 10px 20px rgba(93, 10, 95, 0.65)");
	})
	$(".True_4 .blck_tem_s").mouseleave(function(){
		$(this).css("box-shadow","");
	})
	$(".tab-list li").mouseover(function(){
			$(this).css({"color":"#ff6700","border-bottom":"2px solid #ff6700"});
			$(this).siblings().removeAttr("style");
			$(this).siblings().removeClass("tab-active")
	})
	
	$(".BOB").mouseover(function(){
		$(".elec_19").css("display","none");
		$(".elec_18").css("display","none");
		$(".elec_17").css("display","block");
		$(".test_16").css("display","none");
	})
	
	$(".tab-active").mouseover(function(){
		$(".elec_19").css("display","none");
		$(".elec_18").css("display","none");
		$(".elec_17").css("display","none");
		$(".test_16").css("display","block");
	})
	
	$(".TOT").mouseover(function(){
		$(".elec_19").css("display","none");
		$(".elec_18").css("display","block");
		$(".elec_17").css("display","none");
		$(".test_16").css("display","none");
	})
	
	$(".KOK").mouseover(function(){
		$(".elec_19").css("display","block");
		$(".elec_18").css("display","none");
		$(".elec_17").css("display","none");
		$(".test_16").css("display","none");
	})
	
		$(".BOB-1").mouseover(function(){
		$(".True_4").css("display","none");
		$(".True_3").css("display","none");
		$(".True_2").css("display","block");
		$(".True_1").css("display","none");
	})
	
	$(".tab-active-1").mouseover(function(){
		$(".True_4").css("display","none");
		$(".True_3").css("display","none");
		$(".True_2").css("display","none");
		$(".True_1").css("display","block");
	})
	
	$(".TOT-1").mouseover(function(){
		$(".True_4").css("display","none");
		$(".True_3").css("display","block");
		$(".True_2").css("display","none");
		$(".True_1").css("display","none");
	})
	
	$(".KOK-1").mouseover(function(){
		$(".True_4").css("display","block");
		$(".True_3").css("display","none");
		$(".True_2").css("display","none");
		$(".True_1").css("display","none");
	})
	
	$(".BOB-2").mouseover(function(){
		$(".Tue_4").css("display","none");
		$(".Tue_3").css("display","none");
		$(".Tue_2").css("display","block");
		$(".Tue_1").css("display","none");
	})
	
	$(".tab-active-2").mouseover(function(){
		$(".Tue_4").css("display","none");
		$(".Tue_3").css("display","none");
		$(".Tue_2").css("display","none");
		$(".Tue_1").css("display","block");
	})
	
	$(".TOT-2").mouseover(function(){
		$(".Tue_4").css("display","none");
		$(".Tue_3").css("display","block");
		$(".Tue_2").css("display","none");
		$(".Tue_1").css("display","none");
	})
	
	$(".KOK-2").mouseover(function(){
		$(".Tue_4").css("display","block");
		$(".Tue_3").css("display","none");
		$(".Tue_2").css("display","none");
		$(".Tue_1").css("display","none");
	})
	
		$(".BOB-4").mouseover(function(){
		$(".Tues4").css("display","none");
		$(".Tues3").css("display","none");
		$(".Tues2").css("display","block");
		$(".Tues1").css("display","none");
	})
	
	$(".tab-active-4").mouseover(function(){
		$(".Tues4").css("display","none");
		$(".Tues3").css("display","none");
		$(".Tues2").css("display","none");
		$(".Tues1").css("display","block");
	})
	
	$(".TOT-4").mouseover(function(){
		$(".Tues4").css("display","none");
		$(".Tues3").css("display","block");
		$(".Tues2").css("display","none");
		$(".Tues1").css("display","none");
	})
	
	$(".KOK-4").mouseover(function(){
		$(".Tues4").css("display","block");
		$(".Tues3").css("display","none");
		$(".Tues2").css("display","none");
		$(".Tues1").css("display","none");
	})
	$(".BOB-3").mouseover(function(){
		$(".Tues_4").css("display","none");
		$(".Tues_3").css("display","none");
		$(".Tues_2").css("display","block");
		$(".Tues_1").css("display","none");
	})
	
	$(".tab-active-3").mouseover(function(){
		$(".Tues_4").css("display","none");
		$(".Tues_3").css("display","none");
		$(".Tues_2").css("display","none");
		$(".Tues_1").css("display","block");
	})
	
	$(".TOT-3").mouseover(function(){
		$(".Tues_4").css("display","none");
		$(".Tues_3").css("display","block");
		$(".Tues_2").css("display","none");
		$(".Tues_1").css("display","none");
	})
	
	$(".KOK-3").mouseover(function(){
		$(".Tues_4").css("display","block");
		$(".Tues_3").css("display","none");
		$(".Tues_2").css("display","none");
		$(".Tues_1").css("display","none");
	})
	
	
	$(".search-btn").click(function(){
		if($(".search-text").val()==""){
			$(".search-text").val("红米");
			console.log($(".search-text").val());
			//encodeURI($("#EndTime").val());
			$("#search").submit();
		}else{
			console.log($(".search-text").val());
			$("#search").submit()
		}
	})
	
})


/*window.i=0;  
$(document).ready(function(){  
  window.star=[$("#div1"),$("#div2"),$("#div3"),$("#div4")];  
  setInterval(show1,4000);  
});  
function show1(){  
     
   i++;  
   star[i%4].fadeToggle(2000);  
   star[(i-1)%4].fadeToggle(2000);  
     
}*/
$(function(){
	
            //第一张显示

			console.log("12345644");
            $(".pic li").eq(0).show();
            
            //鼠标滑过手动切换，淡入淡出
            $("#position li").mouseover(function() {
                $(this).addClass('cur').siblings().removeClass("cur");
                var index = $(this).index();
                i = index;//鼠标移出小圆点后，自动轮播不是小圆点的后一个
                $(".pic li").eq(index).fadeIn(500).siblings().fadeOut(500);
            });
            //自动轮播
            var i=0;
            var timer=setInterval(play,2000);
            //向右切换
            var play=function(){
                i++;
                i = i > 3 ? 0 : i ;
                $("#position li").eq(i).addClass('cur').siblings().removeClass("cur");
                $(".pic li").eq(i).fadeIn(500).siblings().fadeOut(500);
            }
            //向左切换
            var playLeft=function(){
                i--;
                i = i < 0 ? 3 : i ;
                $("#position li").eq(i).addClass('cur').siblings().removeClass("cur");
                $(".pic li").eq(i).fadeIn(500).siblings().fadeOut(500);
            }
            //鼠标移入移出效果
            $(".viewport").hover(function() {
                clearInterval(timer);
            }, function() {
                timer=setInterval(play,2000);
            });
            //左右点击切换
            $("#prev").click(function(){
                playLeft();
            })
            $("#next").click(function(){
                play();
            })
        })
