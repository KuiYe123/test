<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c"  uri = "http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>小米商城</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/HomePage.css">
<link rel="icon" href="image/mi.ico" type ="${pageContext.request.contextPath}/image/x-icon">
<link rel="stylesheet"type="text/css" href="${pageContext.request.contextPath}/css/fonts.css">
<script src="${pageContext.request.contextPath}/js/jquery-3.2.1.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/HomePage.js"></script>
<script type="text/javascript">
	$(function(){
		$.ajax({
			url:"${pageContext.request.contextPath}/judge/starproduct",
			dataType:'json',
			success:function(data){
				console.log("7878978979");
				var str="";
				for(var i=0;i<data.length;i++){
					str="<a><img class='ul-pic'src='${pageContext.request.contextPath}/image/"+data[i].pic+"'></img></a><p>"+data[i].name+"</p><p class='desc'>"+data[i].content+"</p><p class='price'>"+data[i].price+"起"+"</p>"
					$(".star-pic-ul li:eq("+i+")").append(str);
				}
			}
		})
		$.ajax({
			url:"${pageContext.request.contextPath}/judge/hotproduct",
			dataType:'json',
			success:function(data){
				var str="";
				for(var i=0;i<data.length;i++){
					str+="<div class='blck_tem'><div class='blck_tem_null'></div><a  class='blck_tem_href' href='https://item.mi.com/1174100036.html'><img src='${pageContext.request.contextPath}/image/"+data[i].pic+"' width='150' height='150'></a><h3 ><a class='blck_tem_title'>"+data[i].name+"</a></h3><p class='blck_tem_desc'>"+data[i].content+"</p><p class='blck_tem_price'> <span class='num'>"+data[i].price+"</span>元  <del><span class='num'>"+data[i].former+"</span>元</del></p><div class='pop' style='display:none;height:84px;width:234px;position:relative;top:-68px;background: #ff6700;text-align:center'><p style='position:relative;margin-bottom: 5px;width:180px;top:8px;left:27px;text-align:center;color: #fff;font-size: 12px;'>朋友圈一发就被刷爆了都问我哪买的什么电视，小米是不是...</p><p style='position:relative;font-size: 12px;color: rgba(255,255,255,0.6);'> 来自于 1036363299 的评价 </p></div></div>";
				}$(".test_16").prepend(str);
			}
		})
		
	})
</script>

</head>

<body>
<!--导航栏-->
<div class="top">
<%@ include file="header.jsp" %>
</div>
<div class="header"><!--展示栏-->
<div class="container">
<div class="logo-ex"><!--图标-->
	<a class="logo" href="//www.mi.com/index.html">
	</a>
	</div>
<div class="nav"><!--展示栏选项-->
<ul class="nav_list">
<li class="null_wi">
<a class="link-block" style="background-image:url(${pageContext.request.contextPath}/image/ganenji.gif)" href="//hd.mi.com/x/12081g/index.html?client_id=180100041086&amp;masid=17409.0206"></a></li><!--全部商品-->
<li class="item qure"><!--小米手机-->
<a class="link">
<span>小米手机</span></a></li>
<li class="item"><!--红米-->
<a class="link">
<span>红米</span></a></li>
<li class="item "><!--笔记本-->
<a class="link">
<span>笔记本</span></a></li>
<li class="item qure2"><!--电视-->
<a class="link">
<span>电视</span></a></li>
<li class="item "><!--盒子-->
<a class="link">
<span>盒子</span></a></li>
<li class="item "><!--新品-->
<a class="link">
<span>新品</span></a></li>
<li class="item"><!--路由器-->
<a class="link">
<span>路由器</span></a></li>
<li class="item"><!--智能硬件-->
<a class="link">
<span>智能硬件</span></a></li>
<li class="item"><!--服务-->
<a class="link">
<span>服务</span></a></li>
<li class="item"><!--社区-->
<a class="link">
<span>社区</span></a></li>
</ul>
</div>
<div class="header-search"><!--搜索框-->
<div class="search-form">
<form action="${pageContext.request.contextPath}/first/search" method="post" id="search">
	<input class="search-text" placeholder='红米' name="search">
	<input type="button" class="search-btn iconfont" value="">
	<input type="hidden" name="thisPage" value="1">
	<input type="hidden" name="OnePageCount" value="8">
</form>
</div>
</div>
</div>
<div class="TOP-SHOW" style="display:none">
	<ul class="SHOW-1">
		<li class="SHOW-PIC">
		<div class="SHOW-First">新品</div>
		<img src="${pageContext.request.contextPath}/image/Mix2.png" height="150px" width="145px"></img><br/>
		<p2>小米MIX 2</p2>
		<p>3299起</p>
		</li>
		<li class="SHOW-PIC">
		<div class="SHOW-First">新品</div>
		<img src="${pageContext.request.contextPath}/image/pms_1505110828.06928608!140x140.jpg" height="150px" width="145px"></img><br/>
		<p2>小米Note 3</p2>
		<p>1999起</p>
		</li>
		<li class="SHOW-PIC">
		<div class="SHOW-First2"></div>
		<img src="${pageContext.request.contextPath}/image/pms_1492571518.47778002!140x140.jpg" height="150px" width="145px"></img><br/>
		<p2>小米6</p2>
		<p>2299起</p>
		</li>
		<li class="SHOW-PIC">
		<div class="SHOW-First2"></div>
		<img src="${pageContext.request.contextPath}/image/max2.png" height="150px" width="145px"></img><br/>
		<p2>小米MIX 2</p2>
		<p>1399起</p>
		</li>
		<li class="SHOW-PIC">
		<div class="SHOW-First2"></div>
		<img src="${pageContext.request.contextPath}/image/pms_1502962291.85477516!140x140.jpg" height="150px" width="145px"></img><br/>
		<p2>小米5X</p2>
		<p>1499起</p>
		</li>
	</ul>
</div>
<div class="TOP-SHOW-2" style="display:none">
	<ul class="SHOW-1">
		<li class="SHOW-PIC">
		<div class="SHOW-First">超薄旗舰</div>
		<img src="${pageContext.request.contextPath}/image/xmds_55.png" height="140px" width="190px"></img><br/>
		<p2>小米电视4 55英寸</p2>
		<p>3699起</p>
		</li>
		<li class="SHOW-PIC">
		<div class="SHOW-First">热卖</div>
		<img src="${pageContext.request.contextPath}/image/4a65.png" height="140px" width="190px"></img><br/>
		<p2>小米电视4A 65英寸</p2>
		<p>4599起</p>
		</li>
		<li class="SHOW-PIC">
		<div class="SHOW-First2"></div>
		<img src="${pageContext.request.contextPath}/image/daohang.png" height="140px" width="190px"></img><br/>
		<p2>小米电视4A32寸</p2>
		<p>999起</p>
		</li>
		<li class="SHOW-PIC">
		<div class="SHOW-First2"></div>
		<img src="${pageContext.request.contextPath}/image/320_43.png" height="140px" width="190px"></img><br/>
		<p2>小米电视4A 45寸</p2>
		<p>1899起</p>
		</li>
		<li class="SHOW-PIC">
		<div class="SHOW-First2"></div>
		<img src="${pageContext.request.contextPath}/image/465.png" height="140px" width="190px"></img><br/>
		<p2>小米电视</p2>
		<p>5499起</p>
		</li>
	</ul>
</div>
</div>
<div class="Flash"><!--中央大图-->
<div class="home_show"><!--展示播放图片-->
<div class="slider"><!--大图滚播-->
<div class="wallpaper">
<div class="viewport">
<ul class="pic">
<li><span><img src="${pageContext.request.contextPath}/image/xmad_15133433929214_mvgSC.jpg"></span></li>
<li><span><img src="${pageContext.request.contextPath}/image/xmad_1513607878489_EynQi.jpg"></span></li>
<li><span><img src="${pageContext.request.contextPath}/image/xmad_15136082163839_umHTj.jpg"></span></li>
<li><span><img src="${pageContext.request.contextPath}/image/xmad_15136084937801_lOGhq.jpg"></span></li>
</ul>
<ul id="position">
            <li class="cur"></li>
            <li class=""></li>
            <li class=""></li>
            <li class=""></li>
        </ul>
</div>
<div class="category"><!--选项类别-->
<div class="category-K">
<div class="category-show product-0">
<a class="category_1" href="https://www.mi.com/p/1915.html">手机 电话卡<i class="iconfont category_1_i"></i></a>
<div class="show_div-0">
	<ul class="children-list">
		<li>
			<a class="links" 
href="https://www.mi.com/minote3/">
				<img class="thumb" src="${pageContext.request.contextPath}/image/note3-80-2.png"width="40" height="40" >
				<span class="text">小米Note 3</span></a></li>
		<li>
		<a class="links" href="https://www.mi.com/mix2/">
				<img class="thumb" src="${pageContext.request.contextPath}/image/mix2-80.png"width="40" height="40" >
				<span class="text">小米MIX 2</span></a>
		</li>
		<li>
		<a class="links" href="https://www.mi.com/mix2/">
				<img class="thumb" src="${pageContext.request.contextPath}/image/xm6_80.png"width="40" height="40" >
				<span class="text">小米6</span></a>
		</li>
		<li>
		<a class="links" href="//www.mi.com/mi5x/">
				<img class="thumb" src="${pageContext.request.contextPath}/image/80pc-5x.png"width="40" height="40" >
				<span class="text">小米5X</span></a>
		</li>
		<li>
		<a class="links" href="//www.mi.com/max2/">
				<img class="thumb" src="${pageContext.request.contextPath}/image/max2_80.jpg"width="40" height="40" >
				<span class="text">小米Max 2</span></a>
		</li>
		<li>
		<a class="links" href="//www.mi.com/max2/">
				<img class="thumb" src="${pageContext.request.contextPath}/image/80-5a.png"width="40" height="40" >
				<span class="text">红米5A</span></a>
		</li>
	</ul>
	<ul class="children-list">
		<li>
		<a class="links" href="https://www.mi.com/redminote5as/">
				<img class="thumb" src="${pageContext.request.contextPath}/image/805a.png"width="40" height="40" >
				<span class="text">红米Note 5A</span></a>
		</li>
		<li>
		<a class="links" href="https://www.mi.com/redminote5as/">
				<img class="thumb" src="${pageContext.request.contextPath}/image/hmn4x80.png"width="40" height="40" >
				<span class="text">红米Note 4X<span></a></li>
		<li>
		<a class="links" href="//www.mi.com/redmi4x/" data-stat-id="16eb2f0dcad4e4d0" onclick="_msq.push(['trackEvent', '81190ccc4d52f577-16eb2f0dcad4e4d0', '//www.mi.com/redmi4x/', 'pcpid', '']);"><img class="thumb" src="${pageContext.request.contextPath}/image/hm4x_80.png" data-src="${pageContext.request.contextPath}///i1.mifile.cn/f/i/g/2015/cn-index/hm4x_80.png?width=80&amp;height=80" width="40" height="40" alt=""><span class="text">红米4X</span></a>
		</li>
		<li>
		<a class="links" href="https://www.mi.com/redminote5as/">
				<img class="thumb" src="${pageContext.request.contextPath}/image/redmi5-80-80.png"width="40" height="40" >
				<span class="text">红米5<span></a>
		</li>
		<li>
		<a class="links" href="https://www.mi.com/redminote5as/">
				<img class="thumb" src="${pageContext.request.contextPath}/image/redmi5P-80-80.png"width="40" height="40" >
				<span class="text">红米5Plus<span></a>
		</li>
		<li>
		<a class="links" href="https://www.mi.com/redminote5as/">
				<img class="thumb" src="${pageContext.request.contextPath}/image/80.jpg"width="40" height="40" >
				<span class="text">移动4G+专区<span></a>
		</li>
	</ul>
	<ul class="children-list">
		<li>
		<a class="links" href="https://www.mi.com/redminote5as/">
				<img class="thumb" src="${pageContext.request.contextPath}/image/compare.jpg"width="40" height="40" >
				<span class="text">对比手机<span></a>
		</li>
		<li>
		<a class="links" href="https://www.mi.com/redminote5as/">
				<img class="thumb" src="${pageContext.request.contextPath}/image/mifenka-1.jpg"width="40" height="40" >
				<span class="text">米粉卡 日租卡<span></a>
		</li>
		<li>
		<a class="links" href="https://www.mi.com/redminote5as/">
				<img class="thumb" src="${pageContext.request.contextPath}/image/mimobile.jpg"width="40" height="40" >
				<span class="text">小米移动 电话卡<span></a>
		</li>
	</ul>
</div>
</div>
<div class="category-show product-1">
<a class="category_2" href="https://www.mi.com/p/2074.html">笔记本<i class="iconfont"></i></a>
<div class="show_div-1">
	<ul class="children-list">
		<li>
			<a class="links" 
href="https://www.mi.com/minote3/">
				<img class="thumb" src="${pageContext.request.contextPath}/image/bijiben80.jpg"width="40" height="40" >
				<span class="text">笔记本Air 12.5"</span></a></li>
		<li>
		<a class="links" href="https://www.mi.com/mix2/">
				<img class="thumb" src="${pageContext.request.contextPath}/image/bijiben80 (1).jpg"width="40" height="40" >
				<span class="text">笔记本Air 13.3" 独显</span></a>
		</li>
		<li>
		<a class="links" href="https://www.mi.com/mix2/">
				<img class="thumb" src="${pageContext.request.contextPath}/image/bijiben80 (1).jpg"width="40" height="40" >
				<span class="text">笔记本Air 13.3" 集显</span></a>
		</li>
		<li>
		<a class="links" href="//www.mi.com/mi5x/">
				<img class="thumb" src="${pageContext.request.contextPath}/image/WechatIMG605.png"width="40" height="40" >
				<span class="text">笔记本Pro 15.6"</span></a>
		</li>
		<li>
		<a class="links" href="//www.mi.com/max2/">
				<img class="thumb" src="${pageContext.request.contextPath}/image/bjbcdq80.jpg"width="40" height="40" >
				<span class="text">USB-C电源适配器</span></a>
		</li>
		<li>
		<a class="links" href="//www.mi.com/max2/">
				<img class="thumb" src="${pageContext.request.contextPath}/image/usbzjqggg80 (1).jpg"width="40" height="40" >
				<span class="text">USB-C转接器</span></a>
		</li>
	</ul>
	<ul class="children-list">
		<li>
		<a class="links" href="https://www.mi.com/redminote5as/">
				<img class="thumb" src="${pageContext.request.contextPath}/image/vga.png"width="40" height="40" >
				<span class="text">VGA 千兆网口转接器</span></a>
		</li>
		<li>
		<a class="links" href="https://www.mi.com/redminote5as/">
				<img class="thumb" src="${pageContext.request.contextPath}/image/neidanbao80.jpg"width="40" height="40" >
				<span class="text">小米笔记本内胆包<span></a></li>
		<li>
		<a class="links" href="//www.mi.com/redmi4x/" data-stat-id="16eb2f0dcad4e4d0" onclick="_msq.push(['trackEvent', '81190ccc4d52f577-16eb2f0dcad4e4d0', '//www.mi.com/redmi4x/', 'pcpid', '']);"><img class="thumb" src="${pageContext.request.contextPath}/image/xmsbd80.jpg" data-src="${pageContext.request.contextPath}///i1.mifile.cn/f/i/g/2015/cn-index/hm4x_80.png?width=80&amp;height=80" width="40" height="40" alt=""><span class="text">鼠标垫</span></a>
		</li>
		<li>
		<a class="links" href="https://www.mi.com/redminote5as/">
				<img class="thumb" src="${pageContext.request.contextPath}/image/ymjp80.jpg"width="40" height="40" >
				<span class="text">悦米机械键盘<span></a>
		</li>
		<li>
		<a class="links" href="https://www.mi.com/redminote5as/">
				<img class="thumb" src="${pageContext.request.contextPath}/image/shubiao80.jpg"width="40" height="40" >
				<span class="text">小米便携鼠标<span></a>
		</li>
		<li>
		<a class="links" href="https://www.mi.com/redminote5as/">
				<img class="thumb" src="${pageContext.request.contextPath}/image/wxsb80 (1).png"width="40" height="40" >
				<span class="text">小米无线鼠标<span></a>
		</li>
	</ul>
	<ul class="children-list">
		<li>
		<a class="links" href="https://www.mi.com/redminote5as/">
				<img class="thumb" src="${pageContext.request.contextPath}/image/USBC80.jpg"width="40" height="40" >
				<span class="text">DisplayPort转接器<span></a>
		</li>
		<!--<li>
		<a class="links" href="https://www.mi.com/redminote5as/">
				<img class="thumb" src="${pageContext.request.contextPath}/image/mifenka-1.jpg"width="40" height="40" >
				<span class="text">米粉卡 日租卡<span></a>
		</li>
		<li>
		<a class="links" href="https://www.mi.com/redminote5as/">
				<img class="thumb" src="${pageContext.request.contextPath}/image/mimobile.jpg"width="40" height="40" >
				<span class="text">小米移动 电话卡<span></a>
		</li>-->
	</ul>
</div>
</div>
<div class="category-show product-2">
<a class="category_3" href="https://www.mi.com/p/1995.html">电视 盒子<i class="iconfont"></i></a>
<div class="show_div-2">
	<ul class="children-list">
		<li>
			<a class="links" 
href="https://www.mi.com/minote3/">
				<img class="thumb" src="${pageContext.request.contextPath}/image/xin55.png"width="40" height="40" >
				<span class="text">小米电视4C 43英寸</span></a></li>
		<li>
		<a class="links" href="https://www.mi.com/mix2/">
				<img class="thumb" src="${pageContext.request.contextPath}/image/xin55.png"width="40" height="40" >
				<span class="text">小米电视4C 55英寸</span></a>
		</li>
		<li>
		<a class="links" href="https://www.mi.com/mix2/">
				<img class="thumb" src="${pageContext.request.contextPath}/image/80xmds_49.jpg"width="40" height="40" >
				<span class="text">小米电视4 49英寸</span></a>
		</li>
		<li>
		<a class="links" href="//www.mi.com/mi5x/">
				<img class="thumb" src="${pageContext.request.contextPath}/image/80xmds_55.jpg"width="40" height="40" >
				<span class="text">小米电视4 55英寸</span></a>
		</li>
		<li>
		<a class="links" href="//www.mi.com/max2/">
				<img class="thumb" src="${pageContext.request.contextPath}/image/80xmds_65.jpg"width="40" height="40" >
				<span class="text">小米电视4 65英寸</span></a>
		</li>
		<li>
		<a class="links" href="//www.mi.com/max2/">
				<img class="thumb" src="${pageContext.request.contextPath}/image/zuodaohang.jpg"width="40" height="40" >
				<span class="text">小米电视4A 32英寸</span></a>
		</li>
	</ul>
	<ul class="children-list">
		<li>
		<a class="links" href="https://www.mi.com/redminote5as/">
				<img class="thumb" src="${pageContext.request.contextPath}/image/4A43.jpg"width="40" height="40" >
				<span class="text">小米电视4A 43英寸</span></a>
		</li>
		<li>
		<a class="links" href="https://www.mi.com/redminote5as/">
				<img class="thumb" src="${pageContext.request.contextPath}/image/xp80_49.jpg"width="40" height="40" >
				<span class="text">小米电视4A 49英寸<span></a></li>
		<li>
		<a class="links" href="//www.mi.com/redmi4x/" data-stat-id="16eb2f0dcad4e4d0" onclick="_msq.push(['trackEvent', '81190ccc4d52f577-16eb2f0dcad4e4d0', '//www.mi.com/redmi4x/', 'pcpid', '']);">
				<img class="thumb" src="${pageContext.request.contextPath}/image/xp80_55.jpg" width="40" height="40" alt="">
				<span class="text">小米电视4A 55英寸</span></a>
		</li>
		<li>
		<a class="links" href="https://www.mi.com/redminote5as/">
				<img class="thumb" src="${pageContext.request.contextPath}/image/xp80_65.jpg"width="40" height="40" >
				<span class="text">小米电视4A 65英寸<span></a>
		</li>
		<li>
		<a class="links" href="https://www.mi.com/redminote5as/">
				<img class="thumb" src="${pageContext.request.contextPath}/image/6580side.jpg"width="40" height="40" >
				<span class="text">小米电视3s 65英寸 曲面<span></a>
		</li>
		<li>
		<a class="links" href="https://www.mi.com/redminote5as/">
				<img class="thumb" src="${pageContext.request.contextPath}/image/hezi80-80.jpg"width="40" height="40" >
				<span class="text">小米盒子3s<span></a>
		</li>
	</ul>
	<ul class="children-list">
		<li>
		<a class="links" href="https://www.mi.com/redminote5as/">
				<img class="thumb" src="${pageContext.request.contextPath}/image/hezi80-80.jpg"width="40" height="40" >
				<span class="text">小米盒子3c<span></a>
		</li>
		<li>
		<a class="links" href="https://www.mi.com/redminote5as/">
				<img class="thumb" src="${pageContext.request.contextPath}/image/80x80.jpg"width="40" height="40" >
				<span class="text">家庭音响<span></a>
		</li>
		<li>
		<a class="links" href="https://www.mi.com/redminote5as/">
				<img class="thumb" src="${pageContext.request.contextPath}/image/iconaz80.jpg"width="40" height="40" >
				<span class="text">安装服务<span></a>
		</li>
		<li>
		<a class="links" href="https://www.mi.com/redminote5as/">
				<img class="thumb" src="${pageContext.request.contextPath}/image/dianshipeijian.jpg"width="40" height="40" >
				<span class="text">电视盒子配件<span></a>
		</li>
	</ul>
</div>
</div>
<div class="category-show product-3">
<a class="category_4" href="https://www.mi.com/smart/">路由器 智能硬件<i class="iconfont"></i></a>
<div class="show_div-0">
	<ul class="children-list">
		<li>
			<a class="links" 
href="https://www.mi.com/minote3/">
				<img class="thumb" src="${pageContext.request.contextPath}/image/note3-80-2.png"width="40" height="40" >
				<span class="text">小米Note 3</span></a></li>
		<li>
		<a class="links" href="https://www.mi.com/mix2/">
				<img class="thumb" src="${pageContext.request.contextPath}/image/mix2-80.png"width="40" height="40" >
				<span class="text">小米MIX 2</span></a>
		</li>
		<li>
		<a class="links" href="https://www.mi.com/mix2/">
				<img class="thumb" src="${pageContext.request.contextPath}/image/xm6_80.png"width="40" height="40" >
				<span class="text">小米6</span></a>
		</li>
		<li>
		<a class="links" href="//www.mi.com/mi5x/">
				<img class="thumb" src="${pageContext.request.contextPath}/image/80pc-5x.png"width="40" height="40" >
				<span class="text">小米5X</span></a>
		</li>
		<li>
		<a class="links" href="//www.mi.com/max2/">
				<img class="thumb" src="${pageContext.request.contextPath}/image/max2_80.jpg"width="40" height="40" >
				<span class="text">小米Max 2</span></a>
		</li>
		<li>
		<a class="links" href="//www.mi.com/max2/">
				<img class="thumb" src="${pageContext.request.contextPath}/image/80-5a.png"width="40" height="40" >
				<span class="text">红米5A</span></a>
		</li>
	</ul>
	<ul class="children-list">
		<li>
		<a class="links" href="https://www.mi.com/redminote5as/">
				<img class="thumb" src="${pageContext.request.contextPath}/image/805a.png"width="40" height="40" >
				<span class="text">红米Note 5A</span></a>
		</li>
		<li>
		<a class="links" href="https://www.mi.com/redminote5as/">
				<img class="thumb" src="${pageContext.request.contextPath}/image/hmn4x80.png"width="40" height="40" >
				<span class="text">红米Note 4X<span></a></li>
		<li>
		<a class="links" href="//www.mi.com/redmi4x/" data-stat-id="16eb2f0dcad4e4d0" onclick="_msq.push(['trackEvent', '81190ccc4d52f577-16eb2f0dcad4e4d0', '//www.mi.com/redmi4x/', 'pcpid', '']);"><img class="thumb" src="${pageContext.request.contextPath}/image/hm4x_80.png" data-src="${pageContext.request.contextPath}///i1.mifile.cn/f/i/g/2015/cn-index/hm4x_80.png?width=80&amp;height=80" width="40" height="40" alt=""><span class="text">红米4X</span></a>
		</li>
		<li>
		<a class="links" href="https://www.mi.com/redminote5as/">
				<img class="thumb" src="${pageContext.request.contextPath}/image/redmi5-80-80.png"width="40" height="40" >
				<span class="text">红米5<span></a>
		</li>
		<li>
		<a class="links" href="https://www.mi.com/redminote5as/">
				<img class="thumb" src="${pageContext.request.contextPath}/image/redmi5P-80-80.png"width="40" height="40" >
				<span class="text">红米5Plus<span></a>
		</li>
		<li>
		<a class="links" href="https://www.mi.com/redminote5as/">
				<img class="thumb" src="${pageContext.request.contextPath}/image/80.jpg"width="40" height="40" >
				<span class="text">移动4G+专区<span></a>
		</li>
	</ul>
	<ul class="children-list">
		<li>
		<a class="links" href="https://www.mi.com/redminote5as/">
				<img class="thumb" src="${pageContext.request.contextPath}/image/compare.jpg"width="40" height="40" >
				<span class="text">对比手机<span></a>
		</li>
		<li>
		<a class="links" href="https://www.mi.com/redminote5as/">
				<img class="thumb" src="${pageContext.request.contextPath}/image/mifenka-1.jpg"width="40" height="40" >
				<span class="text">米粉卡 日租卡<span></a>
		</li>
		<li>
		<a class="links" href="https://www.mi.com/redminote5as/">
				<img class="thumb" src="${pageContext.request.contextPath}/image/mimobile.jpg"width="40" height="40" >
				<span class="text">小米移动 电话卡<span></a>
		</li>
	</ul>
</div>
</div>
<div class="category-show product-4">
<a class="category_5" 
href="https://list.mi.com/accessories/tag?
id=dianyuancunchu">移动电源 电池  插线板<i class="iconfont">
</i></a>
</div>
<div class="category-show product-5">
<a class="category_6" href="https://list.mi.com/17">耳机 音

响<i class="iconfont"></i></a>
</div>
<div class="category-show product-6">
<a class="category_7" href="https://list.mi.com/7">保护套 贴

膜<i class="iconfont"></i></a>
</div>
<div class="category-show product-7">
<a class="category_8" href="htps://list.mi.com/1">线材 支架 

存储卡<i class="iconfont"></i></a>
</div>
<div class="category-show product-8">
<a class="category_9" href="https://list.mi.com/134">箱包 服

饰 鞋 眼镜<i class="iconfont"></i></a>
</div>
<div class="category-show product-9">
<a class="category_10" href="https://list.mi.com/20">米兔 生

活周边<i class="iconfont"></i></a>
</div>
</div>
</div>
<span id="prev"></span><!--轮播左-->
<span id="next"></span><!--轮播右-->
</div>
</div>
<div class="slider_2"><!--静止选项-->
<div class="Mobile_service"><!--手机服务-->
<a class="Mobile_service_top1" href="https://www.mi.com/compare/"><i class="iconfont"></i>选购手机</a>
<a class="Mobile_service_top2" href="http://qiye.mi.com/"><i class="iconfont"></i>企业团购</a>
<a class="Mobile_service_top3" href="https://order.mi.com/f"><p class="iconfont top_3"></p>F码通道</a>
<a class="Mobile_service_top4" href="https://www.mi.com/micard"><p class="iconfont top_4"></p>米粉卡</a>
<a class="Mobile_service_top5" href="https://huanxin.mi.com/"><i class="iconfont"></i>以旧换新</a>
<a class="Mobile_service_top6" href="http://recharge.10046.mi.com/"><i class="iconfont"></i>话费充值</a>
</div>
<div class="Mobile_show"><!--手机图片-->
<div class="Mobile_show_p1" style="background:url(${pageContext.request.contextPath}/image/xmad_15124514536952_mGxUh.jpg);background-size:316px 170px;"><a href="https://item.mi.com/product/10000064.html"></a></div>
<div class="Mobile_show_p2" style="background: url(${pageContext.request.contextPath}/image/xmad_15136076116535_hUlKS.jpg);background-size:316px 170px;"><a href="https://item.mi.com/product/10000068.html"></a></div>
<div class="Mobile_show_p3" style="background: url(${pageContext.request.contextPath}/image/xmad_15120441868462_gnUsB.jpg);background-size:316px 170px;"><a href="https://www.mi.com/mirror/"></a></div>
</div>
</div>
</div>
<div class="star-goods"><!--小米明星产品-->
<div class="star-hd">
<h2 class="star-title">小米明星产品</h2>
<div class="star-more">
<div class="star-control1"><i class="iconfont test1"></i></div>
<div class="star-control2"><i class="iconfont test2"></i></div>
</div>
</div>
<div class="star-pic">
<ul class="star-pic-ul" style="margin-left:0px;">
<li class="item-1">
</li>
<li class="item-2">
</li>
<li class="item-3">
</li>
<li class="item-4">
</li>
<li class="item-5">
</li>
<li class="item-6">
</li>
<li class="item-7">
</li>
<li class="item-8">
</li>
<li class="item-9">
</li>
<li class="item-10">
</li>
</ul>
</div>
</div>
</div>
<div class="home_main">
	<div class="main_container">
		<div class="homeelec"><!--家电-->
			<div class="box-hd"><!--标题-->
				<h2 class="title">家电</h2>
				<div class="more ">
				<ul class="tab-list">
				<li class="tab-active">热门</li>
				<li class="BOB">电视影音</li>
				<li class="TOT">电脑</li>
				<li class="KOK">家居</li>
				</ul>
				</div>
			</div>
			<div class="box-bd">
				<div class="elec_4">
			<ul class="brick-promo-list"> 
			<li class="brick-item"> 
			<a href="http://item.mi.com/1160800067.html" class="exposure">
			<img src="${pageContext.request.contextPath}/image/xmad_15130067249927_mHhCa.jpg" alt=""></a>
			</li>
			</ul>
			</div>
			<div class="elec_16 test_16" >
			<div class="blck_tem_s">
<h3><a class="blck_tem_s_title">小白摄像机</a></h3>
<p class="blck_tem_s_price">349元</p>
<a  class="blck_tem_s_href" href="https://item.mi.com/1174100036.html">
<img src="${pageContext.request.contextPath}/image/pms_1468806372.46368911!220x220.jpg" width="80" height="80" alt="小白摄像机"></a>
</div>
			<div class="blck_tem_s">
<a class="blck_tem_s_tmore">浏览更多</a>
<p class="blck_tem_s_more">热门</p>
<a  class="blck_tem_s_href" href="href="https://www.mi.com/p/1995.html"">
<i class="iconfont"></i></a>
			</div>
			</div>
			<div class="elec_17" style="display:none">
			<div class="blck_tem ">
<div class="blck_tem_sale">享9折 </div>
<a  class="blck_tem_href" href="https://item.mi.com/1174100036.html">
<img src="${pageContext.request.contextPath}/image/pms_1503909300.25797209!220x220.png" width="150" height="150" alt="小米电视4 55英寸"></a>
<h3 ><a class="blck_tem_title"href="https://item.mi.com/1174100036.html">小米电视4A 55英寸</a></h3>
<p class="blck_tem_desc">4K高清HDR / 真四核64位高性能处理器</p>
<p class="blck_tem_price"> <span class="num">2649</span>元  <del><span class="num">2999</span>元</del>  </p>
<div class="pop" style="display:none;height:84px;width:234px;position:relative;top:-68px;background: #ff6700;text-align:center">
<p style="position:relative;margin-bottom: 5px;width:180px;top:8px;left:27px;text-align:center;color: #fff;font-size: 12px;">朋友圈一发就被刷爆了都问我哪买的什么电视，小米是不是...</p>
<p style="position:relative;font-size: 12px;color: rgba(255,255,255,0.6);"> 来自于 1036363299 的评价 </p>
</div>
</div>
			<div class="blck_tem ">
<div class="blck_tem_sale">享9.4折 </div>
<a  class="blck_tem_href" href="https://item.mi.com/1174100036.html">
<img src="${pageContext.request.contextPath}/image/pms_1508927539.71959246!220x220.png" width="150" height="150" alt="小米电视4A 49英寸 标准版"></a>
<h3 ><a class="blck_tem_title"href="https://item.mi.com/1174100036.html">小米电视4A 49英寸 标准版</a></h3>
<p class="blck_tem_desc">4K HDR / 人工智能电视 / 超窄边</p>
<p class="blck_tem_price"> <span class="num">2049</span>元  <del><span class="num">2399</span>元</del>  </p>
<div class="pop-1" style="display:none;height:84px;width:234px;position:relative;top:-68px;background: #ff6700;text-align:center">
<p style="position:relative;margin-bottom: 5px;width:180px;top:8px;left:27px;text-align:center;color: #fff;font-size: 12px;">外形高大尚，小米产品果然质量飞一般。</p>
<p style="position:relative;font-size: 12px;color: rgba(255,255,255,0.6);">  来自于 石家辉 的评价  </p>
</div>
</div>
			<div class="blck_tem ">
<div class="blck_tem_sale">享9折</div>
<a  class="blck_tem_href" href="https://item.mi.com/1174100036.html">
<img src="${pageContext.request.contextPath}/image/pms_1500287084.72131750!220x220.jpg" width="150" height="150" alt="小米电视4A 32英寸"></a>
<h3 ><a class="blck_tem_title"href="https://item.mi.com/1174100036.html">小米电视4A 32英寸</a></h3>
<p class="blck_tem_desc">64位四核处理器 / 1GB+4GB大内存 </p>
<p class="blck_tem_price"> <span class="num">999</span>元  <del><span class="num">1199</span>元</del>  </p>
<div class="pop-2" style="display:none;height:84px;width:234px;position:relative;top:-68px;background: #ff6700;text-align:center">
<p style="position:relative;margin-bottom: 5px;width:180px;top:8px;left:27px;text-align:center;color: #fff;font-size: 12px;">唉，这个月一下子工资没了，只能吃土了，当笔记本到手里...</p>
<p style="position:relative;font-size: 12px;color: rgba(255,255,255,0.6);">   来自于 张宏 的评价   </p>
</div>
</div>
			<div class="blck_tem">
<div class="blck_tem_sale">享9.2折</div>
<a  class="blck_tem_href" href="https://item.mi.com/1174100036.html">
<img src="${pageContext.request.contextPath}/image/pms_1490077569.08131612!220x220.png" width="150" height="150" alt="小米电视4A 65英寸"></a>
<h3 ><a class="blck_tem_title"href="https://item.mi.com/1174100036.html">小米电视4A 65英寸</a></h3>
<p class="blck_tem_desc">4K超高清屏 / 真四核64位高性能处理器</p>
<p class="blck_tem_price"> <span class="num">4599</span>元  <del><span class="num">4999</span>元</del>  </p>
</div>
			<div class="blck_tem">
<div class="blck_tem_sale">享9.5折 </div>
<a  class="blck_tem_href" href="https://item.mi.com/1174100036.html">
<img src="${pageContext.request.contextPath}/image/pms_1503909150.67293503!220x220.png" width="150" height="150" alt="小米电视4A 43英寸"></a>
<h3 ><a class="blck_tem_title"href="https://item.mi.com/1174100036.html">小米电视4A 43英寸</a></h3>
<p class="blck_tem_desc">全高清屏 / 人工智能语音 / 大存储</p>
<p class="blck_tem_price"> <span class="num">1899</span>元  <del><span class="num">1999</span>元</del>  </p>
</div>
			<div class="blck_tem">
<div class="blck_tem_sale">享9折 </div>
<a  class="blck_tem_href" href="https://item.mi.com/1174100036.html">
<img src="${pageContext.request.contextPath}/image/pms_1495074053.84174465!220x220.jpg" width="150" height="150" alt="小米电视4 65英寸"></a>
<h3 ><a class="blck_tem_title"href="https://item.mi.com/1174100036.html">小米电视4 65英寸</a></h3>
<p class="blck_tem_desc">无边框式设计 / 3GB+32GB超大内存</p>
<p class="blck_tem_price"> <span class="num">8999</span>元  <del><span class="num">9999</span>元</del>  </p>
</div>
			<div class="blck_tem">
<div class="blck_tem_null"> </div>
<a  class="blck_tem_href" href="https://item.mi.com/1174100036.html">
<img src="${pageContext.request.contextPath}/image/pms_1499072633.96298268!220x220.jpg" width="150" height="150" alt="小米空气净化器2"></a>
<h3 ><a class="blck_tem_title"href="https://item.mi.com/1174100036.html">小米盒子3 增强版</a></h3>
<p class="blck_tem_desc">高端 4K 网络机顶盒</p>
<p class="blck_tem_price"> <span class="num">499</span>元  <del><span class="num">599</span>元</del>  </p>
</div>
			<div class="blck_tem_s">
<h3><a class="blck_tem_s_title">小米盒子3s</a></h3>
<p class="blck_tem_s_price">349元</p>
<a  class="blck_tem_s_href" href="https://item.mi.com/1174100036.html">
<img src="${pageContext.request.contextPath}/image/pms_1479190789.95594557!220x220.jpg" width="80" height="80" alt="小米盒子3s"></a>
</div>
			<div class="blck_tem_s">
<a class="blck_tem_s_tmore">浏览更多</a>
<p class="blck_tem_s_more">热门</p>
<a  class="blck_tem_s_href" href="href="https://www.mi.com/p/1995.html"">
<i class="iconfont"></i></a>
			</div>
			</div>
			<div class="elec_18" style="display:none">
			<div class="blck_tem ">
<div class="blck_tem_null"></div>
<a  class="blck_tem_href" href="https://item.mi.com/1174100036.html">
<img src="${pageContext.request.contextPath}/image/pms_1499138177.54329452!220x220 (1).jpg" width="150" height="150" alt="小米电视4 55英寸"></a>
<h3 ><a class="blck_tem_title"href="https://item.mi.com/1174100036.html">小米笔记本Air 13.3" i7处理器</a></h3>
<p class="blck_tem_desc">Intel酷睿i7处理器，8GB内存+256GB</p>
<p class="blck_tem_price"> <span class="num">5599</span>元  <del><span class="num">5999</span>元</del>  </p>
<div class="pop" style="display:none;height:84px;width:234px;position:relative;top:-68px;background: #ff6700;text-align:center">
<p style="position:relative;margin-bottom: 5px;width:180px;top:8px;left:27px;text-align:center;color: #fff;font-size: 12px;">朋友圈一发就被刷爆了都问我哪买的什么电视，小米是不是...</p>
<p style="position:relative;font-size: 12px;color: rgba(255,255,255,0.6);"> 来自于 1036363299 的评价 </p>
</div>
</div>
			<div class="blck_tem ">
<div class="blck_tem_sale">享9.3折 </div>
<a  class="blck_tem_href" href="https://item.mi.com/1174100036.html">
<img src="${pageContext.request.contextPath}/image/pms_1499138177.54329452!220x220.jpg" width="150" height="150" alt="小米电视4A 49英寸 标准版"></a>
<h3 ><a class="blck_tem_title"href="https://item.mi.com/1174100036.html">小米笔记本Air 13.3" i7处理器</a></h3>
<p class="blck_tem_desc">Intel酷睿i7处理器，8GB内存+256GB</p>
<p class="blck_tem_price"> <span class="num">2049</span>元  <del><span class="num">2399</span>元</del>  </p>
<div class="pop" style="display:none;height:84px;width:234px;position:relative;top:-68px;background: #ff6700;text-align:center">
<p style="position:relative;margin-bottom: 5px;width:180px;top:8px;left:27px;text-align:center;color: #fff;font-size: 12px;">外形高大尚，小米产品果然质量飞一般。</p>
<p style="position:relative;font-size: 12px;color: rgba(255,255,255,0.6);">   来自于 放开我，我要拿五杀 的评价   </p>
</div>
</div>
			<div class="blck_tem ">
<div class="blck_tem_null"></div>
<a  class="blck_tem_href" href="https://item.mi.com/1174100036.html">
<img src="${pageContext.request.contextPath}/image/pms_1469583247.6157588!220x220.jpg" width="150" height="150" alt="小米电视4A 32英寸"></a>
<h3 ><a class="blck_tem_title"href="https://item.mi.com/1174100036.html">小米笔记本Air 13.3英寸</a></h3>
<p class="blck_tem_desc">Intel 酷睿i5 处理器 独立显卡 </p>
<p class="blck_tem_price"> <span class="num">4999</span>元  <del><span class="num">5199</span>元</del>  </p>
<div class="pop" style="display:none;height:84px;width:234px;position:relative;top:-68px;background: #ff6700;text-align:center">
<p style="position:relative;margin-bottom: 5px;width:180px;top:8px;left:27px;text-align:center;color: #fff;font-size: 12px;">重要的事情说3遍 超爱 超爱 超爱客服妹子</p>
<p style="position:relative;font-size: 12px;color: rgba(255,255,255,0.6);">   来自于 张宏 的评价   </p>
</div>
</div>
			<div class="blck_tem">
<div class="blck_tem_sale">享9.2折</div>
<a  class="blck_tem_href" href="https://item.mi.com/1174100036.html">
<img src="${pageContext.request.contextPath}/image/pms_1490077569.08131612!220x220.png" width="150" height="150" alt="小米电视4A 65英寸"></a>
<h3 ><a class="blck_tem_title"href="https://item.mi.com/1174100036.html">小米电视4A 65英寸</a></h3>
<p class="blck_tem_desc">4K超高清屏 / 真四核64位高性能处理器</p>
<p class="blck_tem_price"> <span class="num">3999</span>元  <del><span class="num">4199</span>元</del>  </p>
</div>
			<div class="blck_tem">
<div class="blck_tem_sale">享9.5折 </div>
<a  class="blck_tem_href" href="https://item.mi.com/1174100036.html">
<img src="${pageContext.request.contextPath}/image/pms_1490595812.95661863!220x220.png" width="150" height="150" alt="小米电视4A 43英寸"></a>
<h3 ><a class="blck_tem_title"href="https://item.mi.com/1174100036.html">小米无线鼠标</a></h3>
<p class="blck_tem_desc">耐脏亲肤涂层，人体工学设计</p>
<p class="blck_tem_price"> <span class="num">64</span>元  <del><span class="num">69</span>元</del>  </p>
</div>
			<div class="blck_tem">
<div class="blck_tem_sale">享9.5折 </div>
<a  class="blck_tem_href" href="https://item.mi.com/1174100036.html">
<img src="${pageContext.request.contextPath}/image/pms_1478248566.62624407!220x220.jpg" width="150" height="150" alt="小米电视4 65英寸"></a>
<h3 ><a class="blck_tem_title"href="https://item.mi.com/1174100036.html">小米便携鼠标</a></h3>
<p class="blck_tem_desc">轻薄便携，铝合金外壳 +ABS 材质</p>
<p class="blck_tem_price"> <span class="num">94</span>元  <del><span class="num">99</span>元</del>  </p>
</div>
			<div class="blck_tem">
<div class="blck_tem_null"> </div>
<a  class="blck_tem_href" href="https://item.mi.com/1174100036.html">
<img src="${pageContext.request.contextPath}/image/pms_1490702347.3628109!220x220.png" width="150" height="150" alt="小米空气净化器2"></a>
<h3 ><a class="blck_tem_title"href="https://item.mi.com/1174100036.html">悦米机械键盘</a></h3>
<p class="blck_tem_desc">铝合金机身，TTC红轴，87 键</p>
<p class="blck_tem_price"> <span class="num">269</span>元  <del><span class="num">299</span>元</del>  </p>
</div>
			<div class="blck_tem_s">
<h3><a class="blck_tem_s_title">多功能转接器</a></h3>
<p class="blck_tem_s_price">349元</p>
<a  class="blck_tem_s_href" href="https://item.mi.com/1174100036.html">
<img src="${pageContext.request.contextPath}/image/pms_1469523170.25518983!220x220.jpg" width="80" height="80" alt="小米盒子3s"></a>
</div>
			<div class="blck_tem_s">
<a class="blck_tem_s_tmore">浏览更多</a>
<p class="blck_tem_s_more">热门</p>
<a  class="blck_tem_s_href" href="href="https://www.mi.com/p/1995.html"">
<i class="iconfont"></i></a>
			</div>
			</div>
			<div class="elec_19" style="display:none">
			<div class="blck_tem">
				<div class="blck_tem_sale">享9折 </div>
				<a  class="blck_tem_href" href="https://item.mi.com/1174100036.html"><img src="${pageContext.request.contextPath}/image/pms_1465366178.11466342!220x220 (1).jpg" width="150" height="150" alt="小米电视4 55英寸"></a>
				<h3 ><a class="blck_tem_title"href="https://item.mi.com/1174100036.html">米家恒温电水壶</a></h3>
				<p class="blck_tem_desc">水温智能控制，304 不锈钢内胆</p>
				<p class="blck_tem_price"> <span class="num">149</span>元  <del><span class="num">199</span>元</del>  </p>
				<div class="pop" style=" display:none;height:84px;width:234px;position:relative;top:-68px;background: #ff6700;text-align:center">
					<p style="position:relative;margin-bottom: 5px;width:180px;top:8px;left:27px;text-align:center;color: #fff;font-size: 12px;tran">客服妹子，来来来，给你沏杯咖啡。</p>
					<p style="position:relative;font-size: 12px;color: rgba(255,255,255,0.6);"> 来自于 1036363299 的评价 </p>
				</div>
			</div>
			<div class="blck_tem ">
			<div class="blck_tem_new">新品</div>
			<a  class="blck_tem_href" href="https://item.mi.com/1174100036.html">
			<img src="${pageContext.request.contextPath}/image/pms_1506417289.23728408!220x220.jpg" width="150" height="150" alt="小米电视4A 49英寸 标准版"></a>
			<h3 ><a class="blck_tem_title"href="https://item.mi.com/1174100036.html">小米随身手电筒</a></h3>
			<p class="blck_tem_desc">11 挡调光，随心而亮</p>
			<p class="blck_tem_price"> <span class="num">79</span>元  <del><span class="num">99</span>元</del>  </p>
			<div class="pop-1" style="display:none;height:84px;width:234px;position:relative;top:-68px;background: #ff6700;text-align:center">
					<p style="position:relative;margin-bottom: 5px;width:180px;top:8px;left:27px;text-align:center;color: #fff;font-size: 12px;">外形高大尚，小米产品果然质量飞一般。</p>
					<p style="position:relative;font-size: 12px;color: rgba(255,255,255,0.6);">  来自于 457652的评价  </p>
			</div>
			 </div>
			<div class="blck_tem ">
			<div class="blck_tem_sale">享9.5折</div>
<a  class="blck_tem_href" href="https://item.mi.com/1174100036.html">
<img src="${pageContext.request.contextPath}/image/pms_1500287084.72131750!220x220.jpg" width="150" height="150" alt="小米电视4A 32英寸"></a>
<h3 ><a class="blck_tem_title"href="https://item.mi.com/1174100036.html">米家扫地机器人</a></h3>
<p class="blck_tem_desc">智能路径规划，扫得干净扫得快  </p>
<p class="blck_tem_price"> <span class="num">1599</span>元  <del><span class="num">1699</span>元</del>  </p>
<div class="pop-2" style="display:none;height:84px;width:234px;position:relative;top:-68px;background: #ff6700;text-align:center">
<p style="position:relative;margin-bottom: 5px;width:180px;top:8px;left:27px;text-align:center;color: #fff;font-size: 12px;">唉，这个月一下子工资没了，只能吃土了，当笔记本到手里...</p>
<p style="position:relative;font-size: 12px;color: rgba(255,255,255,0.6);">   来自于 125452的评价   </p>
</div>
</div>
			<div class="blck_tem">
<div class="blck_tem_sale">享9折</div>
<a  class="blck_tem_href" href="https://item.mi.com/1174100036.html">
<img src="${pageContext.request.contextPath}/image/T1zBYgBCWv1RXrhCrK!220x220 (1).jpg" width="150" height="150" alt="小米电视4A 65英寸"></a>
<h3 ><a class="blck_tem_title"href="https://item.mi.com/1174100036.html">小米空气净化器2</a></h3>
<p class="blck_tem_desc">10分钟，房间空气焕然一新</p>
<p class="blck_tem_price"> <span class="num">4599</span>元  <del><span class="num">4999</span>元</del>  </p>
</div>
			<div class="blck_tem">
<div class="blck_tem_sale">享9折 </div>
<a  class="blck_tem_href" href="https://item.mi.com/1174100036.html">
<img src="${pageContext.request.contextPath}/image/T1OVC_ByY_1RXrhCrK!220x220 (1).jpg" width="150" height="150" alt="小米电视4A 43英寸"></a>
<h3 ><a class="blck_tem_title"href="https://item.mi.com/1174100036.html">米家压力IH电饭煲</a></h3>
<p class="blck_tem_desc">智能烹饪，灰铸铁粉体涂层内胆</p>
<p class="blck_tem_price"> <span class="num">899</span>元  <del><span class="num">999</span>元</del>  </p>
</div>
			<div class="blck_tem">
<div class="blck_tem_sale">享9折 </div>
<a  class="blck_tem_href" href="https://item.mi.com/1174100036.html">
<img src="${pageContext.request.contextPath}/image/pms_1496647119.81414190!220x220.jpg" width="150" height="150" alt="小米电视4 65英寸"></a>
<h3 ><a class="blck_tem_title"href="https://item.mi.com/1174100036.html">飞利浦智睿球泡灯</a></h3>
<p class="blck_tem_desc">自由调节亮度，Wi-Fi随时操控</p>
<p class="blck_tem_price"> <span class="num">49</span>元  <del><span class="num">59</span>元</del>  </p>
</div>
			<div class="blck_tem">
<div class="blck_tem_null"> </div>
<a  class="blck_tem_href" href="https://item.mi.com/1174100036.html">
<img src="${pageContext.request.contextPath}/image/pms_1495520422.36514041!220x220 (1).jpg" width="150" height="150" alt="小米空气净化器2"></a>
<h3 ><a class="blck_tem_title"href="https://item.mi.com/1174100036.html">米家 LED 智能台灯</a></h3>
<p class="blck_tem_desc">无可视频闪，四种场景优化调光</p>
<p class="blck_tem_price"> <span class="num">149</span>元  <del><span class="num">199</span>元</del>  </p>
</div>
			<div class="blck_tem_s">
<h3><a class="blck_tem_s_title">Yeelight LED 吸顶灯</a></h3>
<p class="blck_tem_s_price">349元</p>
<a  class="blck_tem_s_href" href="https://item.mi.com/1174100036.html">
<img src="${pageContext.request.contextPath}/image/pms_1490756071.3088664!220x220.png" width="80" height="80" alt="小米盒子3s"></a>
</div>
			<div class="blck_tem_s">
<a class="blck_tem_s_tmore">浏览更多</a>
<p class="blck_tem_s_more">热门</p>
<a  class="blck_tem_s_href" href="href="https://www.mi.com/p/1995.html"">
<i class="iconfont"></i></a>
			</div>
			</div>
			</div>
		</div>
		<div class="smart"><!--智能-->
				<div class="box-hd"><!--标题-->
				<h2 class="title">智能</h2>
				<div class="more ">
				<ul class="tab-list">
				<li class="tab-active tab-active-1">热门</li>
				<li class="BOB-1">出行</li>
				<li class="TOT-1">健康</li>
				<li class="KOK-1">酷玩</li>
				<li class="">路由器</li>
				</ul>
				</div>
</div>
				<div class="box-bd">
				<div class="elec_4">
<ul class="brick-promo-list"> 
<li class="brick-promo-smart"> 
<a href="//www.mi.com/roomrobot/" class="exposure">
<img src="${pageContext.request.contextPath}/image/xmad_15136026064938_jvZrn.jpg" ></a>
</li>
<li class="brick-promo-smart">
<a href="//www.mi.com/dianfanbao2-4l/" class="exposure">
<img src="${pageContext.request.contextPath}/image/xmad_15059065811601_cCmTA.jpg" ></a>
</li>
</ul>
</div>
				<div class="elec_16 True_1">
					<div class="blck_tem">
<div class="blck_tem_sale">享9折 </div>
<a  class="blck_tem_href" href="https://item.mi.com/1174100036.html">
<img src="${pageContext.request.contextPath}/image/pms_1495520422.36514041!220x220.jpg" width="150" height="150" alt="米家 LED 智能台灯"></a>
<h3 ><a class="blck_tem_title"href="https://item.mi.com/1174100036.html">米家 LED 智能台灯</a></h3>
<p class="blck_tem_desc">无可视频闪，四种场景优化调光</p>
<p class="blck_tem_price"> <span class="num">149</span>元  <del><span class="num">169</span>元</del>  </p>
</div>
					<div class="blck_tem">
					<div class="blck_tem_sale">享9.5折 </div>
					<a  class="blck_tem_href" href="https://item.mi.com/1174100036.html">
					<img src="${pageContext.request.contextPath}/image/pms_1498643144.48446520!220x220.png" width="150" height="150" alt="九号平衡车 Plus"></a>
					<h3 ><a class="blck_tem_title"href="https://item.mi.com/1174100036.html">九号平衡车 Plus</a></h3>
					<p class="blck_tem_desc">35km超长续航，一键自动跟随</p>
					<p class="blck_tem_price"> <span class="num">3299</span>元  <del><span class="num">3499</span>元</del>  </p>
					</div>
					<div class="blck_tem">
					<div class="blck_tem_sale">享9折 </div>
					<a  class="blck_tem_href" href="https://item.mi.com/1174100036.html">
					<img src="${pageContext.request.contextPath}/image/pms_1464615180.86261317!220x220.jpg" width="150" height="150" alt="米兔智能故事机"></a>
					<h3 ><a class="blck_tem_title"href="https://item.mi.com/1174100036.html">米兔智能故事机 </a></h3>
					<p class="blck_tem_desc">微信远程互动，智能语音交互</p>
					<p class="blck_tem_price"> <span class="num">179</span>元  <del><span class="num">199</span>元</del>  </p>
					</div>
					<div class="blck_tem">
					<div class="blck_tem_sale">享9折 </div>
					<a  class="blck_tem_href" href="https://item.mi.com/1174100036.html">
					<img src="${pageContext.request.contextPath}/image/pms_1465366178.11466342!220x220.jpg" width="150" height="150" alt="米家恒温电水壶"></a>
					<h3 ><a class="blck_tem_title"href="https://item.mi.com/1174100036.html">米家恒温电水壶</a></h3>
					<p class="blck_tem_desc">水温智能控制，304 不锈钢内胆</p>
					<p class="blck_tem_price"> <span class="num">179</span>元  <del><span class="num">199</span>元</del>  </p>
					</div>
					<div class="blck_tem">
					<div class="blck_tem_sale">享9折 </div>
					<a  class="blck_tem_href" href="https://item.mi.com/1174100036.html">
					<img src="${pageContext.request.contextPath}/image/pms_1487831386.1667404!220x220.jpg" width="150" height="150" alt="小米体脂秤"></a>
					<h3 ><a class="blck_tem_title"href="https://item.mi.com/1174100036.html">小米体脂秤</a></h3>
					<p class="blck_tem_desc">简约纤薄，隐藏式 LED 显示屏</p>
					<p class="blck_tem_price"> <span class="num">179</span>元  <del><span class="num">199</span>元</del>  </p>
					</div>
					<div class="blck_tem">
					<div class="blck_tem_free">免邮费 </div>
					<a  class="blck_tem_href" href="https://item.mi.com/1174100036.html">
					<img src="${pageContext.request.contextPath}/image/pms_1467962689.97551741!220x220.jpg" width="150" height="150" alt="小米手环2"></a>
					<h3 ><a class="blck_tem_title"href="https://item.mi.com/1174100036.html">小米手环2</a></h3>
					<p class="blck_tem_desc">OLED 显示屏幕，升级计步算法</p>
					<p class="blck_tem_price"> <span class="num">149</span>元</p>
					</div>
					<div class="blck_tem">
					<div class="blck_tem_sale">享9折 </div>
					<a  class="blck_tem_href" href="https://item.mi.com/1174100036.html">
					<img src="${pageContext.request.contextPath}/image/T1HQA_BCd_1RXrhCrK!220x220.jpg" width="150" height="150" alt="米家iHealth血压计"></a>
					<h3 ><a class="blck_tem_title"href="https://item.mi.com/1174100036.html">米家iHealth血压计</a></h3>
					<p class="blck_tem_desc">爸妈上手就会用的智能血压计</p>
					<p class="blck_tem_price"> <span class="num">349</span>元  <del><span class="num">399</span>元</del>  </p>
					</div>
					<div class="blck_tem_s">
					<h3><a class="blck_tem_s_title">小米VR眼镜</a></h3>
					<p class="blck_tem_s_price">199元</p>
					<a  class="blck_tem_s_href" href="//www.mi.com/mivr/">
					<img src="${pageContext.request.contextPath}/image/pms_1477985364.89714934!220x220.jpg" width="80" height="80" alt="小米VR眼镜"></a>
					</div>
					<div class="blck_tem_s">
					<a class="blck_tem_s_tmore">浏览更多</a>
					<p class="blck_tem_s_more">热门</p>
					<a  class="blck_tem_s_href" href="href="https://www.mi.com/p/1995.html"">
					<i class="iconfont"></i></a>
					</div>
					</div>
				<div class="True_2" style="display:none">
				<div class="blck_tem ">
	<div class="blck_tem_sale">享9折 </div>
	<a  class="blck_tem_href" href="https://item.mi.com/1174100036.html">
	<img src="${pageContext.request.contextPath}/image/pms_1503909300.25797209!220x220.png" width="150" height="150" alt="小米电视4 55英寸"></a>
	<h3 ><a class="blck_tem_title"href="https://item.mi.com/1174100036.html">小米电视4A 55英寸</a></h3>
	<p class="blck_tem_desc">4K高清HDR / 真四核64位高性能处理器</p>
	<p class="blck_tem_price"> <span class="num">2649</span>元  <del><span class="num">2999</span>元</del>  </p>
	<div class="pop" style="display:none;height:84px;width:234px;position:relative;top:-68px;background: #ff6700;text-align:center">
	<p style="position:relative;margin-bottom: 5px;width:180px;top:8px;left:27px;text-align:center;color: #fff;font-size: 12px;">朋友圈一发就被刷爆了都问我哪买的什么电视，小米是不是...</p>
	<p style="position:relative;font-size: 12px;color: rgba(255,255,255,0.6);"> 来自于 1036363299 的评价 </p>
	</div>
	</div>
				<div class="blck_tem ">
	<div class="blck_tem_sale">享9.4折 </div>
	<a  class="blck_tem_href" href="https://item.mi.com/1174100036.html">
	<img src="${pageContext.request.contextPath}/image/pms_1508927539.71959246!220x220.png" width="150" height="150" alt="小米电视4A 49英寸 标准版"></a>
	<h3 ><a class="blck_tem_title"href="https://item.mi.com/1174100036.html">小米电视4A 49英寸 标准版</a></h3>
	<p class="blck_tem_desc">4K HDR / 人工智能电视 / 超窄边</p>
	<p class="blck_tem_price"> <span class="num">2049</span>元  <del><span class="num">2399</span>元</del>  </p>
	<div class="pop-1" style="display:none;height:84px;width:234px;position:relative;top:-68px;background: #ff6700;text-align:center">
	<p style="position:relative;margin-bottom: 5px;width:180px;top:8px;left:27px;text-align:center;color: #fff;font-size: 12px;">外形高大尚，小米产品果然质量飞一般。</p>
	<p style="position:relative;font-size: 12px;color: rgba(255,255,255,0.6);">  来自于 石家辉 的评价  </p>
	</div>
	</div>
				<div class="blck_tem ">
	<div class="blck_tem_sale">享9折</div>
	<a  class="blck_tem_href" href="https://item.mi.com/1174100036.html">
	<img src="${pageContext.request.contextPath}/image/pms_1500287084.72131750!220x220.jpg" width="150" height="150" alt="小米电视4A 32英寸"></a>
	<h3 ><a class="blck_tem_title"href="https://item.mi.com/1174100036.html">小米电视4A 32英寸</a></h3>
	<p class="blck_tem_desc">64位四核处理器 / 1GB+4GB大内存 </p>
	<p class="blck_tem_price"> <span class="num">999</span>元  <del><span class="num">1199</span>元</del>  </p>
	<div class="pop-2" style="display:none;height:84px;width:234px;position:relative;top:-68px;background: #ff6700;text-align:center">
	<p style="position:relative;margin-bottom: 5px;width:180px;top:8px;left:27px;text-align:center;color: #fff;font-size: 12px;">唉，这个月一下子工资没了，只能吃土了，当笔记本到手里...</p>
	<p style="position:relative;font-size: 12px;color: rgba(255,255,255,0.6);">   来自于 张宏 的评价   </p>
	</div>
	</div>
				<div class="blck_tem">
	<div class="blck_tem_sale">享9.2折</div>
	<a  class="blck_tem_href" href="https://item.mi.com/1174100036.html">
	<img src="${pageContext.request.contextPath}/image/pms_1490077569.08131612!220x220.png" width="150" height="150" alt="小米电视4A 65英寸"></a>
	<h3 ><a class="blck_tem_title"href="https://item.mi.com/1174100036.html">小米电视4A 65英寸</a></h3>
	<p class="blck_tem_desc">4K超高清屏 / 真四核64位高性能处理器</p>
	<p class="blck_tem_price"> <span class="num">4599</span>元  <del><span class="num">4999</span>元</del>  </p>
	</div>
				<div class="blck_tem">
	<div class="blck_tem_sale">享9.5折 </div>
	<a  class="blck_tem_href" href="https://item.mi.com/1174100036.html">
	<img src="${pageContext.request.contextPath}/image/pms_1503909150.67293503!220x220.png" width="150" height="150" alt="小米电视4A 43英寸"></a>
	<h3 ><a class="blck_tem_title"href="https://item.mi.com/1174100036.html">小米电视4A 43英寸</a></h3>
	<p class="blck_tem_desc">全高清屏 / 人工智能语音 / 大存储</p>
	<p class="blck_tem_price"> <span class="num">1899</span>元  <del><span class="num">1999</span>元</del>  </p>
	</div>
				<div class="blck_tem">
	<div class="blck_tem_sale">享9折 </div>
	<a  class="blck_tem_href" href="https://item.mi.com/1174100036.html">
	<img src="${pageContext.request.contextPath}/image/pms_1495074053.84174465!220x220.jpg" width="150" height="150" alt="小米电视4 65英寸"></a>
	<h3 ><a class="blck_tem_title"href="https://item.mi.com/1174100036.html">小米电视4 65英寸</a></h3>
	<p class="blck_tem_desc">无边框式设计 / 3GB+32GB超大内存</p>
	<p class="blck_tem_price"> <span class="num">8999</span>元  <del><span class="num">9999</span>元</del>  </p>
	</div>
				<div class="blck_tem">
	<div class="blck_tem_null"> </div>
	<a  class="blck_tem_href" href="https://item.mi.com/1174100036.html">
	<img src="${pageContext.request.contextPath}/image/pms_1499072633.96298268!220x220.jpg" width="150" height="150" alt="小米空气净化器2"></a>
	<h3 ><a class="blck_tem_title"href="https://item.mi.com/1174100036.html">小米盒子3 增强版</a></h3>
	<p class="blck_tem_desc">高端 4K 网络机顶盒</p>
	<p class="blck_tem_price"> <span class="num">499</span>元  <del><span class="num">599</span>元</del>  </p>
	</div>
				<div class="blck_tem_s">
	<h3><a class="blck_tem_s_title">小米盒子3s</a></h3>
	<p class="blck_tem_s_price">349元</p>
	<a  class="blck_tem_s_href" href="https://item.mi.com/1174100036.html">
	<img src="${pageContext.request.contextPath}/image/pms_1479190789.95594557!220x220.jpg" width="80" height="80" alt="小米盒子3s"></a>
	</div>
				<div class="blck_tem_s">
<a class="blck_tem_s_tmore">浏览更多</a>
<p class="blck_tem_s_more">热门</p>
<a  class="blck_tem_s_href" href="href="https://www.mi.com/p/1995.html"">
<i class="iconfont"></i></a>
			</div>
				</div>
				<div class="True_3" style="display:none">
				<div class="blck_tem ">
	<div class="blck_tem_null"></div>
	<a  class="blck_tem_href" href="https://item.mi.com/1174100036.html">
	<img src="${pageContext.request.contextPath}/image/pms_1499138177.54329452!220x220 (1).jpg" width="150" height="150" alt="小米电视4 55英寸"></a>
	<h3 ><a class="blck_tem_title"href="https://item.mi.com/1174100036.html">小米笔记本Air 13.3" i7处理器</a></h3>
	<p class="blck_tem_desc">Intel酷睿i7处理器，8GB内存+256GB</p>
	<p class="blck_tem_price"> <span class="num">5599</span>元  <del><span class="num">5999</span>元</del>  </p>
	<div class="pop" style="display:none;height:84px;width:234px;position:relative;top:-68px;background: #ff6700;text-align:center">
	<p style="position:relative;margin-bottom: 5px;width:180px;top:8px;left:27px;text-align:center;color: #fff;font-size: 12px;">朋友圈一发就被刷爆了都问我哪买的什么电视，小米是不是...</p>
	<p style="position:relative;font-size: 12px;color: rgba(255,255,255,0.6);"> 来自于 1036363299 的评价 </p>
	</div>
	</div>
				<div class="blck_tem ">
	<div class="blck_tem_sale">享9.3折 </div>
	<a  class="blck_tem_href" href="https://item.mi.com/1174100036.html">
	<img src="${pageContext.request.contextPath}/image/pms_1499138177.54329452!220x220.jpg" width="150" height="150" alt="小米电视4A 49英寸 标准版"></a>
	<h3 ><a class="blck_tem_title"href="https://item.mi.com/1174100036.html">小米笔记本Air 13.3" i7处理器</a></h3>
	<p class="blck_tem_desc">Intel酷睿i7处理器，8GB内存+256GB</p>
	<p class="blck_tem_price"> <span class="num">2049</span>元  <del><span class="num">2399</span>元</del>  </p>
	<div class="pop" style="display:none;height:84px;width:234px;position:relative;top:-68px;background: #ff6700;text-align:center">
	<p style="position:relative;margin-bottom: 5px;width:180px;top:8px;left:27px;text-align:center;color: #fff;font-size: 12px;">外形高大尚，小米产品果然质量飞一般。</p>
	<p style="position:relative;font-size: 12px;color: rgba(255,255,255,0.6);">   来自于 放开我，我要拿五杀 的评价   </p>
	</div>
	</div>
				<div class="blck_tem ">
	<div class="blck_tem_null"></div>
	<a  class="blck_tem_href" href="https://item.mi.com/1174100036.html">
	<img src="${pageContext.request.contextPath}/image/pms_1469583247.6157588!220x220.jpg" width="150" height="150" alt="小米电视4A 32英寸"></a>
	<h3 ><a class="blck_tem_title"href="https://item.mi.com/1174100036.html">小米笔记本Air 13.3英寸</a></h3>
	<p class="blck_tem_desc">Intel 酷睿i5 处理器 独立显卡 </p>
	<p class="blck_tem_price"> <span class="num">4999</span>元  <del><span class="num">5199</span>元</del>  </p>
	<div class="pop" style="display:none;height:84px;width:234px;position:relative;top:-68px;background: #ff6700;text-align:center">
	<p style="position:relative;margin-bottom: 5px;width:180px;top:8px;left:27px;text-align:center;color: #fff;font-size: 12px;">重要的事情说3遍 超爱 超爱 超爱客服妹子</p>
	<p style="position:relative;font-size: 12px;color: rgba(255,255,255,0.6);">   来自于 张宏 的评价   </p>
	</div>
	</div>
				<div class="blck_tem">
	<div class="blck_tem_sale">享9.2折</div>
	<a  class="blck_tem_href" href="https://item.mi.com/1174100036.html">
	<img src="${pageContext.request.contextPath}/image/pms_1490077569.08131612!220x220.png" width="150" height="150" alt="小米电视4A 65英寸"></a>
	<h3 ><a class="blck_tem_title"href="https://item.mi.com/1174100036.html">小米电视4A 65英寸</a></h3>
	<p class="blck_tem_desc">4K超高清屏 / 真四核64位高性能处理器</p>
	<p class="blck_tem_price"> <span class="num">3999</span>元  <del><span class="num">4199</span>元</del>  </p>
	</div>
				<div class="blck_tem">
	<div class="blck_tem_sale">享9.5折 </div>
	<a  class="blck_tem_href" href="https://item.mi.com/1174100036.html">
	<img src="${pageContext.request.contextPath}/image/pms_1490595812.95661863!220x220.png" width="150" height="150" alt="小米电视4A 43英寸"></a>
	<h3 ><a class="blck_tem_title"href="https://item.mi.com/1174100036.html">小米无线鼠标</a></h3>
	<p class="blck_tem_desc">耐脏亲肤涂层，人体工学设计</p>
	<p class="blck_tem_price"> <span class="num">64</span>元  <del><span class="num">69</span>元</del>  </p>
	</div>
				<div class="blck_tem">
	<div class="blck_tem_sale">享9.5折 </div>
	<a  class="blck_tem_href" href="https://item.mi.com/1174100036.html">
	<img src="${pageContext.request.contextPath}/image/pms_1478248566.62624407!220x220.jpg" width="150" height="150" alt="小米电视4 65英寸"></a>
	<h3 ><a class="blck_tem_title"href="https://item.mi.com/1174100036.html">小米便携鼠标</a></h3>
	<p class="blck_tem_desc">轻薄便携，铝合金外壳 +ABS 材质</p>
	<p class="blck_tem_price"> <span class="num">94</span>元  <del><span class="num">99</span>元</del>  </p>
	</div>
				<div class="blck_tem">
	<div class="blck_tem_null"> </div>
	<a  class="blck_tem_href" href="https://item.mi.com/1174100036.html">
	<img src="${pageContext.request.contextPath}/image/pms_1490702347.3628109!220x220.png" width="150" height="150" alt="小米空气净化器2"></a>
	<h3 ><a class="blck_tem_title"href="https://item.mi.com/1174100036.html">悦米机械键盘</a></h3>
	<p class="blck_tem_desc">铝合金机身，TTC红轴，87 键</p>
	<p class="blck_tem_price"> <span class="num">269</span>元  <del><span class="num">299</span>元</del>  </p>
	</div>
				<div class="blck_tem_s">
	<h3><a class="blck_tem_s_title">多功能转接器</a></h3>
	<p class="blck_tem_s_price">349元</p>
	<a  class="blck_tem_s_href" href="https://item.mi.com/1174100036.html">
	<img src="${pageContext.request.contextPath}/image/pms_1469523170.25518983!220x220.jpg" width="80" height="80" alt="小米盒子3s"></a>
	</div>
				<div class="blck_tem_s">
	<a class="blck_tem_s_tmore">浏览更多</a>
	<p class="blck_tem_s_more">热门</p>
	<a  class="blck_tem_s_href" href="href="https://www.mi.com/p/1995.html"">
	<i class="iconfont"></i></a>
				</div>
				</div>
				<div class="True_4" style="display:none">
				<div class="blck_tem">
				<div class="blck_tem_sale">享9折 </div>
				<a  class="blck_tem_href" href="https://item.mi.com/1174100036.html"><img src="${pageContext.request.contextPath}/image/pms_1465366178.11466342!220x220 (1).jpg" width="150" height="150" alt="小米电视4 55英寸"></a>
				<h3 ><a class="blck_tem_title"href="https://item.mi.com/1174100036.html">米家恒温电水壶</a></h3>
				<p class="blck_tem_desc">水温智能控制，304 不锈钢内胆</p>
				<p class="blck_tem_price"> <span class="num">149</span>元  <del><span class="num">199</span>元</del>  </p>
				<div class="pop" style=" display:none;height:84px;width:234px;position:relative;top:-68px;background: #ff6700;text-align:center">
					<p style="position:relative;margin-bottom: 5px;width:180px;top:8px;left:27px;text-align:center;color: #fff;font-size: 12px;tran">客服妹子，来来来，给你沏杯咖啡。</p>
					<p style="position:relative;font-size: 12px;color: rgba(255,255,255,0.6);"> 来自于 1036363299 的评价 </p>
				</div>
			</div>
				<div class="blck_tem ">
				<div class="blck_tem_new">新品</div>
				<a  class="blck_tem_href" href="https://item.mi.com/1174100036.html">
				<img src="${pageContext.request.contextPath}/image/pms_1506417289.23728408!220x220.jpg" width="150" height="150" alt="小米电视4A 49英寸 标准版"></a>
				<h3 ><a class="blck_tem_title"href="https://item.mi.com/1174100036.html">小米随身手电筒</a></h3>
				<p class="blck_tem_desc">11 挡调光，随心而亮</p>
				<p class="blck_tem_price"> <span class="num">79</span>元  <del><span class="num">99</span>元</del>  </p>
				<div class="pop-1" style="display:none;height:84px;width:234px;position:relative;top:-68px;background: #ff6700;text-align:center">
						<p style="position:relative;margin-bottom: 5px;width:180px;top:8px;left:27px;text-align:center;color: #fff;font-size: 12px;">外形高大尚，小米产品果然质量飞一般。</p>
						<p style="position:relative;font-size: 12px;color: rgba(255,255,255,0.6);">  来自于 457652的评价  </p>
				</div>
				 </div>
				<div class="blck_tem ">
				<div class="blck_tem_sale">享9.5折</div>
	<a  class="blck_tem_href" href="https://item.mi.com/1174100036.html">
	<img src="${pageContext.request.contextPath}/image/pms_1500287084.72131750!220x220.jpg" width="150" height="150" alt="小米电视4A 32英寸"></a>
	<h3 ><a class="blck_tem_title"href="https://item.mi.com/1174100036.html">米家扫地机器人</a></h3>
	<p class="blck_tem_desc">智能路径规划，扫得干净扫得快  </p>
	<p class="blck_tem_price"> <span class="num">1599</span>元  <del><span class="num">1699</span>元</del>  </p>
	<div class="pop-2" style="display:none;height:84px;width:234px;position:relative;top:-68px;background: #ff6700;text-align:center">
	<p style="position:relative;margin-bottom: 5px;width:180px;top:8px;left:27px;text-align:center;color: #fff;font-size: 12px;">唉，这个月一下子工资没了，只能吃土了，当笔记本到手里...</p>
	<p style="position:relative;font-size: 12px;color: rgba(255,255,255,0.6);">   来自于 125452的评价   </p>
	</div>
	</div>
				<div class="blck_tem">
	<div class="blck_tem_sale">享9折</div>
	<a  class="blck_tem_href" href="https://item.mi.com/1174100036.html">
	<img src="${pageContext.request.contextPath}/image/T1zBYgBCWv1RXrhCrK!220x220 (1).jpg" width="150" height="150" alt="小米电视4A 65英寸"></a>
	<h3 ><a class="blck_tem_title"href="https://item.mi.com/1174100036.html">小米空气净化器2</a></h3>
	<p class="blck_tem_desc">10分钟，房间空气焕然一新</p>
	<p class="blck_tem_price"> <span class="num">4599</span>元  <del><span class="num">4999</span>元</del>  </p>
	</div>
				<div class="blck_tem">
	<div class="blck_tem_sale">享9折 </div>
	<a  class="blck_tem_href" href="https://item.mi.com/1174100036.html">
	<img src="${pageContext.request.contextPath}/image/T1OVC_ByY_1RXrhCrK!220x220 (1).jpg" width="150" height="150" alt="小米电视4A 43英寸"></a>
	<h3 ><a class="blck_tem_title"href="https://item.mi.com/1174100036.html">米家压力IH电饭煲</a></h3>
	<p class="blck_tem_desc">智能烹饪，灰铸铁粉体涂层内胆</p>
	<p class="blck_tem_price"> <span class="num">899</span>元  <del><span class="num">999</span>元</del>  </p>
	</div>
				<div class="blck_tem">
	<div class="blck_tem_sale">享9折 </div>
	<a  class="blck_tem_href" href="https://item.mi.com/1174100036.html">
	<img src="${pageContext.request.contextPath}/image/pms_1496647119.81414190!220x220.jpg" width="150" height="150" alt="小米电视4 65英寸"></a>
	<h3 ><a class="blck_tem_title"href="https://item.mi.com/1174100036.html">飞利浦智睿球泡灯</a></h3>
	<p class="blck_tem_desc">自由调节亮度，Wi-Fi随时操控</p>
	<p class="blck_tem_price"> <span class="num">49</span>元  <del><span class="num">59</span>元</del>  </p>
	</div>
				<div class="blck_tem">
	<div class="blck_tem_null"> </div>
	<a  class="blck_tem_href" href="https://item.mi.com/1174100036.html">
	<img src="${pageContext.request.contextPath}/image/pms_1495520422.36514041!220x220 (1).jpg" width="150" height="150" alt="小米空气净化器2"></a>
	<h3 ><a class="blck_tem_title"href="https://item.mi.com/1174100036.html">米家 LED 智能台灯</a></h3>
	<p class="blck_tem_desc">无可视频闪，四种场景优化调光</p>
	<p class="blck_tem_price"> <span class="num">149</span>元  <del><span class="num">199</span>元</del>  </p>
	</div>
				<div class="blck_tem_s">
	<h3><a class="blck_tem_s_title">Yeelight LED 吸顶灯</a></h3>
	<p class="blck_tem_s_price">349元</p>
	<a  class="blck_tem_s_href" href="https://item.mi.com/1174100036.html">
	<img src="${pageContext.request.contextPath}/image/pms_1490756071.3088664!220x220.png" width="80" height="80" alt="小米盒子3s"></a>
	</div>
				<div class="blck_tem_s">
					<a class="blck_tem_s_tmore">浏览更多</a>
	<p class="blck_tem_s_more">热门</p>
	<a  class="blck_tem_s_href" href="href="https://www.mi.com/p/1995.html"">
	<i class="iconfont"></i></a>
				</div>
				</div>
				</div>
			</div>
		<div class="smart"><!--搭配-->
			<div class="box-hd"><!--标题-->
			<h2 class="title">搭配</h2>
			<div class="more ">
			<ul class="tab-list">
			<li class="tab-active tab-active-2">热门</li>
			<li class="BOB-2">耳机音箱</li>
			<li class="TOT-2">电源</li>
			<li class="KOK-2">电池存储卡</li>
			</ul>
			</div>
			</div>
			<div class="box-bd">
			<div class="elec_4">
			<ul class="brick-promo-list"> 
			<li class="brick-promo-smart"> 
			<a href="//www.mi.com/sportearphone/"" class="exposure">
			<img src="${pageContext.request.contextPath}/image/xmad_15034816547397_TKBOF.jpg" ></a>
			</li>
			<li class="brick-promo-smart">
			<a href="https://www.mi.com/earphonepro/"" class="exposure">
			<img src="${pageContext.request.contextPath}/image/xmad_15094387477095_BAdZH.jpg" ></a>
			</li>
			</ul>
			</div>
			<div class="elec_16 Tue_1">
			<div class="blck_tem">
			<div class="blck_tem_null"></div>
			<a  class="blck_tem_href" href="https://item.mi.com/1174100036.html">
			<img src="${pageContext.request.contextPath}/image/pms_1501057018.70015369.jpg" width="150" height="150" alt="小米AI音箱"></a>
			<h3 ><a class="blck_tem_title"href="https://item.mi.com/1174100036.html">小米AI音箱</a></h3>
			<p class="blck_tem_price"> <span class="num">299</span>元</p>
			<p class="blck_tem_desc">1.5万人评价</p>
			</div>
			<div class="blck_tem">
			<div class="blck_tem_new">新品 </div>
			<a  class="blck_tem_href" href="https://item.mi.com/1174100036.html">
			<img src="${pageContext.request.contextPath}/image/pms_1505264799.43246303.jpg" width="150" height="150" alt="小米移动电源2C 20000mAh"></a>
			<h3 ><a class="blck_tem_title"href="https://item.mi.com/1174100036.html">小米移动电源2C 20000mAh Plus</a></h3>
			<p class="blck_tem_price"> <span class="num">109</span>元  <del><span class="num">129</span>元</del>  </p>
			<p class="blck_tem_desc">6943人评价</p>
			</div>
			<div class="blck_tem">
			<div class="blck_tem_sale">享9折 </div>
			<a  class="blck_tem_href" href="https://item.mi.com/1174100036.html">
			<img src="${pageContext.request.contextPath}/image/pms_1481269289.59498154.jpg" width="150" height="150" alt="小米移动电源10000mAh高配版"></a>
			<h3 ><a class="blck_tem_title"href="https://item.mi.com/1174100036.html">小米移动电源10000mAh高配版 </a></h3>
			<p class="blck_tem_price"> <span class="num">129</span>元  <del><span class="num">149</span>元</del>  </p>
			<p class="blck_tem_desc">1.7万人评价</p>
			</div>
			<div class="blck_tem">
			<div class="blck_tem_sale">享9折 </div>
			<a  class="blck_tem_href" href="https://item.mi.com/1174100036.html">
			<img src="${pageContext.request.contextPath}/image/pms_1502093110.00979492.jpg" width="150" height="150" alt="小米运动蓝牙耳机mini"></a>
			<h3 ><a class="blck_tem_title"href="https://item.mi.com/1174100036.html">小米运动蓝牙耳机mini</a></h3>
			<p class="blck_tem_price"> <span class="num">149</span>元  <del><span class="num">169</span>元</del>  </p>
			<p class="blck_tem_desc">4704人评价</p>
			</div>
			<div class="blck_tem">
			<div class="blck_tem_sale">享9折 </div>
			<a  class="blck_tem_href" href="https://item.mi.com/1174100036.html">
			<img src="${pageContext.request.contextPath}/image/pms_1476674302.67179007.jpg" width="150" height="150" alt="小米运动蓝牙耳机"></a>
			<h3 ><a class="blck_tem_title"href="https://item.mi.com/1174100036.html">小米运动蓝牙耳机</a></h3>
			<p class="blck_tem_price"> <span class="num">129</span>元  <del><span class="num">149</span>元</del>  </p>
			<p class="blck_tem_desc">2.2万人评价</p>
			</div>
			<div class="blck_tem">
			<div class="blck_tem_sale">享9折 </div>
			<a  class="blck_tem_href" href="https://item.mi.com/1174100036.html">
			<img src="${pageContext.request.contextPath}/image/pms_1478248721.42297795.jpg" width="150" height="150" alt="小米蓝牙耳机青春版"></a>
			<h3 ><a class="blck_tem_title"href="https://item.mi.com/1174100036.html">小米蓝牙耳机青春版</a></h3>
			<p class="blck_tem_price"> <span class="num">53</span>元 <del><span class="num">59</span>元</del></p>
			<p class="blck_tem_desc">4万人评价</p>
			</div>
			<div class="blck_tem">
			<div class="blck_tem_sale">享9折 </div>
			<a  class="blck_tem_href" href="https://item.mi.com/1174100036.html">
			<img src="${pageContext.request.contextPath}/image/pms_1502337101.83975105.jpg" width="150" height="150" alt="小米圈铁耳机"></a>
			<h3 ><a class="blck_tem_title"href="https://item.mi.com/1174100036.html">小米圈铁耳机</a></h3>
			<p class="blck_tem_price"> <span class="num">89</span>元  <del><span class="num">99</span>元</del>  </p>
			<p class="blck_tem_desc">4.9万人评价</p>
			</div>
			<div class="blck_tem_s">
			<h3><a class="blck_tem_s_title">小米铁圈耳机</a></h3>
			<p class="blck_tem_s_price">129元</p>
			<a  class="blck_tem_s_href" href="//www.mi.com/mivr/">
			<img src="${pageContext.request.contextPath}/image/pms_1478510064.36397738.jpg" width="80" height="80" alt="小米VR眼镜"></a>
			</div>
			<div class="blck_tem_s">
			<a class="blck_tem_s_tmore">浏览更多</a>
			<p class="blck_tem_s_more">热门</p>
			<a  class="blck_tem_s_href" href="href="https://www.mi.com/p/1995.html"">
			<i class="iconfont"></i></a>
			</div>
			</div>
			<div class="Tue_2" style="display:none">
				<div class="blck_tem ">
	<div class="blck_tem_sale">享9折 </div>
	<a  class="blck_tem_href" href="https://item.mi.com/1174100036.html">
	<img src="${pageContext.request.contextPath}/image/pms_1503909300.25797209!220x220.png" width="150" height="150" alt="小米电视4 55英寸"></a>
	<h3 ><a class="blck_tem_title"href="https://item.mi.com/1174100036.html">小米电视4A 55英寸</a></h3>
	<p class="blck_tem_desc">4K高清HDR / 真四核64位高性能处理器</p>
	<p class="blck_tem_price"> <span class="num">2649</span>元  <del><span class="num">2999</span>元</del>  </p>
	<div class="pop" style="display:none;height:84px;width:234px;position:relative;top:-68px;background: #ff6700;text-align:center">
	<p style="position:relative;margin-bottom: 5px;width:180px;top:8px;left:27px;text-align:center;color: #fff;font-size: 12px;">朋友圈一发就被刷爆了都问我哪买的什么电视，小米是不是...</p>
	<p style="position:relative;font-size: 12px;color: rgba(255,255,255,0.6);"> 来自于 1036363299 的评价 </p>
	</div>
	</div>
				<div class="blck_tem ">
	<div class="blck_tem_sale">享9.4折 </div>
	<a  class="blck_tem_href" href="https://item.mi.com/1174100036.html">
	<img src="${pageContext.request.contextPath}/image/pms_1508927539.71959246!220x220.png" width="150" height="150" alt="小米电视4A 49英寸 标准版"></a>
	<h3 ><a class="blck_tem_title"href="https://item.mi.com/1174100036.html">小米电视4A 49英寸 标准版</a></h3>
	<p class="blck_tem_desc">4K HDR / 人工智能电视 / 超窄边</p>
	<p class="blck_tem_price"> <span class="num">2049</span>元  <del><span class="num">2399</span>元</del>  </p>
	<div class="pop-1" style="display:none;height:84px;width:234px;position:relative;top:-68px;background: #ff6700;text-align:center">
	<p style="position:relative;margin-bottom: 5px;width:180px;top:8px;left:27px;text-align:center;color: #fff;font-size: 12px;">外形高大尚，小米产品果然质量飞一般。</p>
	<p style="position:relative;font-size: 12px;color: rgba(255,255,255,0.6);">  来自于 石家辉 的评价  </p>
	</div>
	</div>
				<div class="blck_tem ">
	<div class="blck_tem_sale">享9折</div>
	<a  class="blck_tem_href" href="https://item.mi.com/1174100036.html">
	<img src="${pageContext.request.contextPath}/image/pms_1500287084.72131750!220x220.jpg" width="150" height="150" alt="小米电视4A 32英寸"></a>
	<h3 ><a class="blck_tem_title"href="https://item.mi.com/1174100036.html">小米电视4A 32英寸</a></h3>
	<p class="blck_tem_desc">64位四核处理器 / 1GB+4GB大内存 </p>
	<p class="blck_tem_price"> <span class="num">999</span>元  <del><span class="num">1199</span>元</del>  </p>
	<div class="pop-2" style="display:none;height:84px;width:234px;position:relative;top:-68px;background: #ff6700;text-align:center">
	<p style="position:relative;margin-bottom: 5px;width:180px;top:8px;left:27px;text-align:center;color: #fff;font-size: 12px;">唉，这个月一下子工资没了，只能吃土了，当笔记本到手里...</p>
	<p style="position:relative;font-size: 12px;color: rgba(255,255,255,0.6);">   来自于 张宏 的评价   </p>
	</div>
	</div>
				<div class="blck_tem">
	<div class="blck_tem_sale">享9.2折</div>
	<a  class="blck_tem_href" href="https://item.mi.com/1174100036.html">
	<img src="${pageContext.request.contextPath}/image/pms_1490077569.08131612!220x220.png" width="150" height="150" alt="小米电视4A 65英寸"></a>
	<h3 ><a class="blck_tem_title"href="https://item.mi.com/1174100036.html">小米电视4A 65英寸</a></h3>
	<p class="blck_tem_desc">4K超高清屏 / 真四核64位高性能处理器</p>
	<p class="blck_tem_price"> <span class="num">4599</span>元  <del><span class="num">4999</span>元</del>  </p>
	</div>
				<div class="blck_tem">
	<div class="blck_tem_sale">享9.5折 </div>
	<a  class="blck_tem_href" href="https://item.mi.com/1174100036.html">
	<img src="${pageContext.request.contextPath}/image/pms_1503909150.67293503!220x220.png" width="150" height="150" alt="小米电视4A 43英寸"></a>
	<h3 ><a class="blck_tem_title"href="https://item.mi.com/1174100036.html">小米电视4A 43英寸</a></h3>
	<p class="blck_tem_desc">全高清屏 / 人工智能语音 / 大存储</p>
	<p class="blck_tem_price"> <span class="num">1899</span>元  <del><span class="num">1999</span>元</del>  </p>
	</div>
				<div class="blck_tem">
	<div class="blck_tem_sale">享9折 </div>
	<a  class="blck_tem_href" href="https://item.mi.com/1174100036.html">
	<img src="${pageContext.request.contextPath}/image/pms_1495074053.84174465!220x220.jpg" width="150" height="150" alt="小米电视4 65英寸"></a>
	<h3 ><a class="blck_tem_title"href="https://item.mi.com/1174100036.html">小米电视4 65英寸</a></h3>
	<p class="blck_tem_desc">无边框式设计 / 3GB+32GB超大内存</p>
	<p class="blck_tem_price"> <span class="num">8999</span>元  <del><span class="num">9999</span>元</del>  </p>
	</div>
				<div class="blck_tem">
	<div class="blck_tem_null"> </div>
	<a  class="blck_tem_href" href="https://item.mi.com/1174100036.html">
	<img src="${pageContext.request.contextPath}/image/pms_1499072633.96298268!220x220.jpg" width="150" height="150" alt="小米空气净化器2"></a>
	<h3 ><a class="blck_tem_title"href="https://item.mi.com/1174100036.html">小米盒子3 增强版</a></h3>
	<p class="blck_tem_desc">高端 4K 网络机顶盒</p>
	<p class="blck_tem_price"> <span class="num">499</span>元  <del><span class="num">599</span>元</del>  </p>
	</div>
				<div class="blck_tem_s">
	<h3><a class="blck_tem_s_title">小米盒子3s</a></h3>
	<p class="blck_tem_s_price">349元</p>
	<a  class="blck_tem_s_href" href="https://item.mi.com/1174100036.html">
	<img src="${pageContext.request.contextPath}/image/pms_1479190789.95594557!220x220.jpg" width="80" height="80" alt="小米盒子3s"></a>
	</div>
				<div class="blck_tem_s">
<a class="blck_tem_s_tmore">浏览更多</a>
<p class="blck_tem_s_more">热门</p>
<a  class="blck_tem_s_href" href="href="https://www.mi.com/p/1995.html"">
<i class="iconfont"></i></a>
			</div>
				</div>
			<div class="Tue_3" style="display:none">
				<div class="blck_tem ">
	<div class="blck_tem_null"></div>
	<a  class="blck_tem_href" href="https://item.mi.com/1174100036.html">
	<img src="${pageContext.request.contextPath}/image/pms_1499138177.54329452!220x220 (1).jpg" width="150" height="150" alt="小米电视4 55英寸"></a>
	<h3 ><a class="blck_tem_title"href="https://item.mi.com/1174100036.html">小米笔记本Air 13.3" i7处理器</a></h3>
	<p class="blck_tem_desc">Intel酷睿i7处理器，8GB内存+256GB</p>
	<p class="blck_tem_price"> <span class="num">5599</span>元  <del><span class="num">5999</span>元</del>  </p>
	<div class="pop" style="display:none;height:84px;width:234px;position:relative;top:-68px;background: #ff6700;text-align:center">
	<p style="position:relative;margin-bottom: 5px;width:180px;top:8px;left:27px;text-align:center;color: #fff;font-size: 12px;">朋友圈一发就被刷爆了都问我哪买的什么电视，小米是不是...</p>
	<p style="position:relative;font-size: 12px;color: rgba(255,255,255,0.6);"> 来自于 1036363299 的评价 </p>
	</div>
	</div>
				<div class="blck_tem ">
	<div class="blck_tem_sale">享9.3折 </div>
	<a  class="blck_tem_href" href="https://item.mi.com/1174100036.html">
	<img src="${pageContext.request.contextPath}/image/pms_1499138177.54329452!220x220.jpg" width="150" height="150" alt="小米电视4A 49英寸 标准版"></a>
	<h3 ><a class="blck_tem_title"href="https://item.mi.com/1174100036.html">小米笔记本Air 13.3" i7处理器</a></h3>
	<p class="blck_tem_desc">Intel酷睿i7处理器，8GB内存+256GB</p>
	<p class="blck_tem_price"> <span class="num">2049</span>元  <del><span class="num">2399</span>元</del>  </p>
	<div class="pop" style="display:none;height:84px;width:234px;position:relative;top:-68px;background: #ff6700;text-align:center">
	<p style="position:relative;margin-bottom: 5px;width:180px;top:8px;left:27px;text-align:center;color: #fff;font-size: 12px;">外形高大尚，小米产品果然质量飞一般。</p>
	<p style="position:relative;font-size: 12px;color: rgba(255,255,255,0.6);">   来自于 放开我，我要拿五杀 的评价   </p>
	</div>
	</div>
				<div class="blck_tem ">
	<div class="blck_tem_null"></div>
	<a  class="blck_tem_href" href="https://item.mi.com/1174100036.html">
	<img src="${pageContext.request.contextPath}/image/pms_1469583247.6157588!220x220.jpg" width="150" height="150" alt="小米电视4A 32英寸"></a>
	<h3 ><a class="blck_tem_title"href="https://item.mi.com/1174100036.html">小米笔记本Air 13.3英寸</a></h3>
	<p class="blck_tem_desc">Intel 酷睿i5 处理器 独立显卡 </p>
	<p class="blck_tem_price"> <span class="num">4999</span>元  <del><span class="num">5199</span>元</del>  </p>
	<div class="pop" style="display:none;height:84px;width:234px;position:relative;top:-68px;background: #ff6700;text-align:center">
	<p style="position:relative;margin-bottom: 5px;width:180px;top:8px;left:27px;text-align:center;color: #fff;font-size: 12px;">重要的事情说3遍 超爱 超爱 超爱客服妹子</p>
	<p style="position:relative;font-size: 12px;color: rgba(255,255,255,0.6);">   来自于 张宏 的评价   </p>
	</div>
	</div>
				<div class="blck_tem">
	<div class="blck_tem_sale">享9.2折</div>
	<a  class="blck_tem_href" href="https://item.mi.com/1174100036.html">
	<img src="${pageContext.request.contextPath}/image/pms_1490077569.08131612!220x220.png" width="150" height="150" alt="小米电视4A 65英寸"></a>
	<h3 ><a class="blck_tem_title"href="https://item.mi.com/1174100036.html">小米电视4A 65英寸</a></h3>
	<p class="blck_tem_desc">4K超高清屏 / 真四核64位高性能处理器</p>
	<p class="blck_tem_price"> <span class="num">3999</span>元  <del><span class="num">4199</span>元</del>  </p>
	</div>
				<div class="blck_tem">
	<div class="blck_tem_sale">享9.5折 </div>
	<a  class="blck_tem_href" href="https://item.mi.com/1174100036.html">
	<img src="${pageContext.request.contextPath}/image/pms_1490595812.95661863!220x220.png" width="150" height="150" alt="小米电视4A 43英寸"></a>
	<h3 ><a class="blck_tem_title"href="https://item.mi.com/1174100036.html">小米无线鼠标</a></h3>
	<p class="blck_tem_desc">耐脏亲肤涂层，人体工学设计</p>
	<p class="blck_tem_price"> <span class="num">64</span>元  <del><span class="num">69</span>元</del>  </p>
	</div>
				<div class="blck_tem">
	<div class="blck_tem_sale">享9.5折 </div>
	<a  class="blck_tem_href" href="https://item.mi.com/1174100036.html">
	<img src="${pageContext.request.contextPath}/image/pms_1478248566.62624407!220x220.jpg" width="150" height="150" alt="小米电视4 65英寸"></a>
	<h3 ><a class="blck_tem_title"href="https://item.mi.com/1174100036.html">小米便携鼠标</a></h3>
	<p class="blck_tem_desc">轻薄便携，铝合金外壳 +ABS 材质</p>
	<p class="blck_tem_price"> <span class="num">94</span>元  <del><span class="num">99</span>元</del>  </p>
	</div>
				<div class="blck_tem">
	<div class="blck_tem_null"> </div>
	<a  class="blck_tem_href" href="https://item.mi.com/1174100036.html">
	<img src="${pageContext.request.contextPath}/image/pms_1490702347.3628109!220x220.png" width="150" height="150" alt="小米空气净化器2"></a>
	<h3 ><a class="blck_tem_title"href="https://item.mi.com/1174100036.html">悦米机械键盘</a></h3>
	<p class="blck_tem_desc">铝合金机身，TTC红轴，87 键</p>
	<p class="blck_tem_price"> <span class="num">269</span>元  <del><span class="num">299</span>元</del>  </p>
	</div>
				<div class="blck_tem_s">
	<h3><a class="blck_tem_s_title">多功能转接器</a></h3>
	<p class="blck_tem_s_price">349元</p>
	<a  class="blck_tem_s_href" href="https://item.mi.com/1174100036.html">
	<img src="${pageContext.request.contextPath}/image/pms_1469523170.25518983!220x220.jpg" width="80" height="80" alt="小米盒子3s"></a>
	</div>
				<div class="blck_tem_s">
	<a class="blck_tem_s_tmore">浏览更多</a>
	<p class="blck_tem_s_more">热门</p>
	<a  class="blck_tem_s_href" href="href="https://www.mi.com/p/1995.html"">
	<i class="iconfont"></i></a>
				</div>
				</div>
			<div class="Tue_4" style="display:none">
				<div class="blck_tem">
				<div class="blck_tem_sale">享9折 </div>
				<a  class="blck_tem_href" href="https://item.mi.com/1174100036.html"><img src="${pageContext.request.contextPath}/image/pms_1465366178.11466342!220x220 (1).jpg" width="150" height="150" alt="小米电视4 55英寸"></a>
				<h3 ><a class="blck_tem_title"href="https://item.mi.com/1174100036.html">米家恒温电水壶</a></h3>
				<p class="blck_tem_desc">水温智能控制，304 不锈钢内胆</p>
				<p class="blck_tem_price"> <span class="num">149</span>元  <del><span class="num">199</span>元</del>  </p>
				<div class="pop" style=" display:none;height:84px;width:234px;position:relative;top:-68px;background: #ff6700;text-align:center">
					<p style="position:relative;margin-bottom: 5px;width:180px;top:8px;left:27px;text-align:center;color: #fff;font-size: 12px;tran">客服妹子，来来来，给你沏杯咖啡。</p>
					<p style="position:relative;font-size: 12px;color: rgba(255,255,255,0.6);"> 来自于 1036363299 的评价 </p>
				</div>
			</div>
				<div class="blck_tem ">
				<div class="blck_tem_new">新品</div>
				<a  class="blck_tem_href" href="https://item.mi.com/1174100036.html">
				<img src="${pageContext.request.contextPath}/image/pms_1506417289.23728408!220x220.jpg" width="150" height="150" alt="小米电视4A 49英寸 标准版"></a>
				<h3 ><a class="blck_tem_title"href="https://item.mi.com/1174100036.html">小米随身手电筒</a></h3>
				<p class="blck_tem_desc">11 挡调光，随心而亮</p>
				<p class="blck_tem_price"> <span class="num">79</span>元  <del><span class="num">99</span>元</del>  </p>
				<div class="pop-1" style="display:none;height:84px;width:234px;position:relative;top:-68px;background: #ff6700;text-align:center">
						<p style="position:relative;margin-bottom: 5px;width:180px;top:8px;left:27px;text-align:center;color: #fff;font-size: 12px;">外形高大尚，小米产品果然质量飞一般。</p>
						<p style="position:relative;font-size: 12px;color: rgba(255,255,255,0.6);">  来自于 457652的评价  </p>
				</div>
				 </div>
				<div class="blck_tem ">
				<div class="blck_tem_sale">享9.5折</div>
	<a  class="blck_tem_href" href="https://item.mi.com/1174100036.html">
	<img src="${pageContext.request.contextPath}/image/pms_1500287084.72131750!220x220.jpg" width="150" height="150" alt="小米电视4A 32英寸"></a>
	<h3 ><a class="blck_tem_title"href="https://item.mi.com/1174100036.html">米家扫地机器人</a></h3>
	<p class="blck_tem_desc">智能路径规划，扫得干净扫得快  </p>
	<p class="blck_tem_price"> <span class="num">1599</span>元  <del><span class="num">1699</span>元</del>  </p>
	<div class="pop-2" style="display:none;height:84px;width:234px;position:relative;top:-68px;background: #ff6700;text-align:center">
	<p style="position:relative;margin-bottom: 5px;width:180px;top:8px;left:27px;text-align:center;color: #fff;font-size: 12px;">唉，这个月一下子工资没了，只能吃土了，当笔记本到手里...</p>
	<p style="position:relative;font-size: 12px;color: rgba(255,255,255,0.6);">   来自于 125452的评价   </p>
	</div>
	</div>
				<div class="blck_tem">
	<div class="blck_tem_sale">享9折</div>
	<a  class="blck_tem_href" href="https://item.mi.com/1174100036.html">
	<img src="${pageContext.request.contextPath}/image/T1zBYgBCWv1RXrhCrK!220x220 (1).jpg" width="150" height="150" alt="小米电视4A 65英寸"></a>
	<h3 ><a class="blck_tem_title"href="https://item.mi.com/1174100036.html">小米空气净化器2</a></h3>
	<p class="blck_tem_desc">10分钟，房间空气焕然一新</p>
	<p class="blck_tem_price"> <span class="num">4599</span>元  <del><span class="num">4999</span>元</del>  </p>
	</div>
				<div class="blck_tem">
	<div class="blck_tem_sale">享9折 </div>
	<a  class="blck_tem_href" href="https://item.mi.com/1174100036.html">
	<img src="${pageContext.request.contextPath}/image/T1OVC_ByY_1RXrhCrK!220x220 (1).jpg" width="150" height="150" alt="小米电视4A 43英寸"></a>
	<h3 ><a class="blck_tem_title"href="https://item.mi.com/1174100036.html">米家压力IH电饭煲</a></h3>
	<p class="blck_tem_desc">智能烹饪，灰铸铁粉体涂层内胆</p>
	<p class="blck_tem_price"> <span class="num">899</span>元  <del><span class="num">999</span>元</del>  </p>
	</div>
				<div class="blck_tem">
	<div class="blck_tem_sale">享9折 </div>
	<a  class="blck_tem_href" href="https://item.mi.com/1174100036.html">
	<img src="${pageContext.request.contextPath}/image/pms_1496647119.81414190!220x220.jpg" width="150" height="150" alt="小米电视4 65英寸"></a>
	<h3 ><a class="blck_tem_title"href="https://item.mi.com/1174100036.html">飞利浦智睿球泡灯</a></h3>
	<p class="blck_tem_desc">自由调节亮度，Wi-Fi随时操控</p>
	<p class="blck_tem_price"> <span class="num">49</span>元  <del><span class="num">59</span>元</del>  </p>
	</div>
				<div class="blck_tem">
	<div class="blck_tem_null"> </div>
	<a  class="blck_tem_href" href="https://item.mi.com/1174100036.html">
	<img src="${pageContext.request.contextPath}/image/pms_1495520422.36514041!220x220 (1).jpg" width="150" height="150" alt="小米空气净化器2"></a>
	<h3 ><a class="blck_tem_title"href="https://item.mi.com/1174100036.html">米家 LED 智能台灯</a></h3>
	<p class="blck_tem_desc">无可视频闪，四种场景优化调光</p>
	<p class="blck_tem_price"> <span class="num">149</span>元  <del><span class="num">199</span>元</del>  </p>
	</div>
				<div class="blck_tem_s">
	<h3><a class="blck_tem_s_title">Yeelight LED 吸顶灯</a></h3>
	<p class="blck_tem_s_price">349元</p>
	<a  class="blck_tem_s_href" href="https://item.mi.com/1174100036.html">
	<img src="${pageContext.request.contextPath}/image/pms_1490756071.3088664!220x220.png" width="80" height="80" alt="小米盒子3s"></a>
	</div>
				<div class="blck_tem_s">
					<a class="blck_tem_s_tmore">浏览更多</a>
	<p class="blck_tem_s_more">热门</p>
	<a  class="blck_tem_s_href" href="href="https://www.mi.com/p/1995.html"">
	<i class="iconfont"></i></a>
				</div>
				</div>
				</div>
		</div>
		<div class="smart"><!--配件-->
			<div class="box-hd"><!--标题-->
			<h2 class="title">配件</h2>
			<div class="more ">
			<ul class="tab-list">
			<li class="tab-active tab-active-3">热门</li>
			<li class="BOB-3">保护套</li>
			<li class="TOT-3">贴膜</li>
			<li class="KOK-3">其他配件</li>
			</ul>
			</div>
			</div>
			<div class="box-bd">
			<div class="elec_4">
			<ul class="brick-promo-list"> 
			<li class="brick-promo-smart"> 
			<a href="//www.mi.com/sportearphone/"" class="exposure">
			<img src="${pageContext.request.contextPath}/image/xmad_15112623868336_IYQqP.jpg" ></a>
			</li>
			<li class="brick-promo-smart">
			<a href="https://www.mi.com/earphonepro/"" class="exposure">
			<img src="${pageContext.request.contextPath}/image/xmad_15023316085711_wOFUz.jpg" ></a>
			</li>
			</ul>
			</div>
			<div class="elec_16 Tues_1">
			<div class="blck_tem">
			<div class="blck_tem_sale">享8折 </div>
			<a  class="blck_tem_href" href="https://item.mi.com/1174100036.html">
			<img src="${pageContext.request.contextPath}/image/pms_1493261828.23444007.jpg" width="150" height="150" alt="小米6 硅胶保护套"></a>
			<h3 ><a class="blck_tem_title"href="https://item.mi.com/1174100036.html">小米6 硅胶保护套</a></h3>
			<p class="blck_tem_price"> <span class="num">39</span>元  <del><span class="num">49</span>元</del>  </p>
			<p class="blck_tem_desc">8260人评价</p>
			</div>
			<div class="blck_tem">
			<div class="blck_tem_null"></div>
			<a  class="blck_tem_href" href="https://item.mi.com/1174100036.html">
			<img src="${pageContext.request.contextPath}/image/pms_1482479905.40458762.jpg" width="150" height="150" alt="小米移动电源10000mAh 高配版保护套"></a>
			<h3 ><a class="blck_tem_title"href="https://item.mi.com/1174100036.html">小米移动电源10000mAh 高配版....</a></h3>
			<p class="blck_tem_price"> <span class="num">29</span>元</p>
			<p class="blck_tem_desc">2013人评价</p>
			</div>
			<div class="blck_tem">
			<div class="blck_tem_null"></div>
			<a  class="blck_tem_href" href="https://item.mi.com/1174100036.html">
			<img src="${pageContext.request.contextPath}/image/pms_1509852701.75968362.jpg" width="150" height="150" alt="MIX 2全陶瓷版极简保护壳"></a>
			<h3 ><a class="blck_tem_title"href="https://item.mi.com/1174100036.html">MIX 2全陶瓷版极简保护壳 </a></h3>
			<p class="blck_tem_price"> <span class="num">39</span>元  </p>
			<p class="blck_tem_desc">170人评价</p>
			</div>
			<div class="blck_tem">
			<div class="blck_tem_sale">享7折 </div>
			<a  class="blck_tem_href" href="https://item.mi.com/1174100036.html">
			<img src="${pageContext.request.contextPath}/image/pms_1493863398.71652587.jpg" width="150" height="150" alt="小米6 弧边高透膜"></a>
			<h3 ><a class="blck_tem_title"href="https://item.mi.com/1174100036.html">小米6 弧边高透膜</a></h3>
			<p class="blck_tem_price"> <span class="num">19</span>元  <del><span class="num">29</span>元</del>  </p>
			<p class="blck_tem_desc">9900人评价</p>
			</div>
			<div class="blck_tem">
			<div class="blck_tem_sale">享9折 </div>
			<a  class="blck_tem_href" href="https://item.mi.com/1174100036.html">
			<img src="${pageContext.request.contextPath}/image/pms_1493261514.03223754.jpg" width="150" height="150" alt="小米6 高透软胶保护套"></a>
			<h3 ><a class="blck_tem_title"href="https://item.mi.com/1174100036.html">小米6 高透软胶保护套</a></h3>
			<p class="blck_tem_price"> <span class="num">15</span>元  <del><span class="num">19</span>元</del>  </p>
			<p class="blck_tem_desc">2326人评价</p>
			</div>
			<div class="blck_tem">
			<div class="blck_tem_sale">享6折 </div>
			<a  class="blck_tem_href" href="https://item.mi.com/1174100036.html">
			<img src="${pageContext.request.contextPath}/image/pms_1493284697.69911065.jpg" width="150" height="150" alt="小米6 标准高透贴膜"></a>
			<h3 ><a class="blck_tem_title"href="https://item.mi.com/1174100036.html">小米6 标准高透贴膜</a></h3>
			<p class="blck_tem_price"> <span class="num">9.9</span>元 <del><span class="num">19</span>元</del></p>
			<p class="blck_tem_desc">1.1万人评价</p>
			</div>
			<div class="blck_tem">
			<div class="blck_tem_sale">享8折 </div>
			<a  class="blck_tem_href" href="https://item.mi.com/1174100036.html">
			<img src="${pageContext.request.contextPath}/image/pms_1498547317.49155359.jpg" width="150" height="150" alt="小米6 超薄皮质保护套"></a>
			<h3 ><a class="blck_tem_title"href="https://item.mi.com/1174100036.html">小米6 超薄皮质保护套</a></h3>
			<p class="blck_tem_price"> <span class="num">29</span>元  <del><span class="num">39</span>元</del>  </p>
			<p class="blck_tem_desc">2028人评价</p>
			</div>
			<div class="blck_tem_s">
			<h3><a class="blck_tem_s_title">5000mAh小...</a></h3>
			<p class="blck_tem_s_price">19.9元</p>
			<a  class="blck_tem_s_href" href="//www.mi.com/mivr/">
			<img src="${pageContext.request.contextPath}/image/pms_1469694895.01922815.jpg" width="80" height="80" alt="5000mAh小米移动电源保护套"></a>
			</div>
			<div class="blck_tem_s">
			<a class="blck_tem_s_tmore">浏览更多</a>
			<p class="blck_tem_s_more">热门</p>
			<a  class="blck_tem_s_href" href="href="https://www.mi.com/p/1995.html"">
			<i class="iconfont"></i></a>
			</div>
			</div>
			<div class="Tues_2" style="display:none">
				<div class="blck_tem ">
	<div class="blck_tem_sale">享9折 </div>
	<a  class="blck_tem_href" href="https://item.mi.com/1174100036.html">
	<img src="${pageContext.request.contextPath}/image/pms_1503909300.25797209!220x220.png" width="150" height="150" alt="小米电视4 55英寸"></a>
	<h3 ><a class="blck_tem_title"href="https://item.mi.com/1174100036.html">小米电视4A 55英寸</a></h3>
	<p class="blck_tem_desc">4K高清HDR / 真四核64位高性能处理器</p>
	<p class="blck_tem_price"> <span class="num">2649</span>元  <del><span class="num">2999</span>元</del>  </p>
	<div class="pop" style="display:none;height:84px;width:234px;position:relative;top:-68px;background: #ff6700;text-align:center">
	<p style="position:relative;margin-bottom: 5px;width:180px;top:8px;left:27px;text-align:center;color: #fff;font-size: 12px;">朋友圈一发就被刷爆了都问我哪买的什么电视，小米是不是...</p>
	<p style="position:relative;font-size: 12px;color: rgba(255,255,255,0.6);"> 来自于 1036363299 的评价 </p>
	</div>
	</div>
				<div class="blck_tem ">
	<div class="blck_tem_sale">享9.4折 </div>
	<a  class="blck_tem_href" href="https://item.mi.com/1174100036.html">
	<img src="${pageContext.request.contextPath}/image/pms_1508927539.71959246!220x220.png" width="150" height="150" alt="小米电视4A 49英寸 标准版"></a>
	<h3 ><a class="blck_tem_title"href="https://item.mi.com/1174100036.html">小米电视4A 49英寸 标准版</a></h3>
	<p class="blck_tem_desc">4K HDR / 人工智能电视 / 超窄边</p>
	<p class="blck_tem_price"> <span class="num">2049</span>元  <del><span class="num">2399</span>元</del>  </p>
	<div class="pop-1" style="display:none;height:84px;width:234px;position:relative;top:-68px;background: #ff6700;text-align:center">
	<p style="position:relative;margin-bottom: 5px;width:180px;top:8px;left:27px;text-align:center;color: #fff;font-size: 12px;">外形高大尚，小米产品果然质量飞一般。</p>
	<p style="position:relative;font-size: 12px;color: rgba(255,255,255,0.6);">  来自于 石家辉 的评价  </p>
	</div>
	</div>
				<div class="blck_tem ">
	<div class="blck_tem_sale">享9折</div>
	<a  class="blck_tem_href" href="https://item.mi.com/1174100036.html">
	<img src="${pageContext.request.contextPath}/image/pms_1500287084.72131750!220x220.jpg" width="150" height="150" alt="小米电视4A 32英寸"></a>
	<h3 ><a class="blck_tem_title"href="https://item.mi.com/1174100036.html">小米电视4A 32英寸</a></h3>
	<p class="blck_tem_desc">64位四核处理器 / 1GB+4GB大内存 </p>
	<p class="blck_tem_price"> <span class="num">999</span>元  <del><span class="num">1199</span>元</del>  </p>
	<div class="pop-2" style="display:none;height:84px;width:234px;position:relative;top:-68px;background: #ff6700;text-align:center">
	<p style="position:relative;margin-bottom: 5px;width:180px;top:8px;left:27px;text-align:center;color: #fff;font-size: 12px;">唉，这个月一下子工资没了，只能吃土了，当笔记本到手里...</p>
	<p style="position:relative;font-size: 12px;color: rgba(255,255,255,0.6);">   来自于 张宏 的评价   </p>
	</div>
	</div>
				<div class="blck_tem">
	<div class="blck_tem_sale">享9.2折</div>
	<a  class="blck_tem_href" href="https://item.mi.com/1174100036.html">
	<img src="${pageContext.request.contextPath}/image/pms_1490077569.08131612!220x220.png" width="150" height="150" alt="小米电视4A 65英寸"></a>
	<h3 ><a class="blck_tem_title"href="https://item.mi.com/1174100036.html">小米电视4A 65英寸</a></h3>
	<p class="blck_tem_desc">4K超高清屏 / 真四核64位高性能处理器</p>
	<p class="blck_tem_price"> <span class="num">4599</span>元  <del><span class="num">4999</span>元</del>  </p>
	</div>
				<div class="blck_tem">
	<div class="blck_tem_sale">享9.5折 </div>
	<a  class="blck_tem_href" href="https://item.mi.com/1174100036.html">
	<img src="${pageContext.request.contextPath}/image/pms_1503909150.67293503!220x220.png" width="150" height="150" alt="小米电视4A 43英寸"></a>
	<h3 ><a class="blck_tem_title"href="https://item.mi.com/1174100036.html">小米电视4A 43英寸</a></h3>
	<p class="blck_tem_desc">全高清屏 / 人工智能语音 / 大存储</p>
	<p class="blck_tem_price"> <span class="num">1899</span>元  <del><span class="num">1999</span>元</del>  </p>
	</div>
				<div class="blck_tem">
	<div class="blck_tem_sale">享9折 </div>
	<a  class="blck_tem_href" href="https://item.mi.com/1174100036.html">
	<img src="${pageContext.request.contextPath}/image/pms_1495074053.84174465!220x220.jpg" width="150" height="150" alt="小米电视4 65英寸"></a>
	<h3 ><a class="blck_tem_title"href="https://item.mi.com/1174100036.html">小米电视4 65英寸</a></h3>
	<p class="blck_tem_desc">无边框式设计 / 3GB+32GB超大内存</p>
	<p class="blck_tem_price"> <span class="num">8999</span>元  <del><span class="num">9999</span>元</del>  </p>
	</div>
				<div class="blck_tem">
	<div class="blck_tem_null"> </div>
	<a  class="blck_tem_href" href="https://item.mi.com/1174100036.html">
	<img src="${pageContext.request.contextPath}/image/pms_1499072633.96298268!220x220.jpg" width="150" height="150" alt="小米空气净化器2"></a>
	<h3 ><a class="blck_tem_title"href="https://item.mi.com/1174100036.html">小米盒子3 增强版</a></h3>
	<p class="blck_tem_desc">高端 4K 网络机顶盒</p>
	<p class="blck_tem_price"> <span class="num">499</span>元  <del><span class="num">599</span>元</del>  </p>
	</div>
				<div class="blck_tem_s">
	<h3><a class="blck_tem_s_title">小米盒子3s</a></h3>
	<p class="blck_tem_s_price">349元</p>
	<a  class="blck_tem_s_href" href="https://item.mi.com/1174100036.html">
	<img src="${pageContext.request.contextPath}/image/pms_1479190789.95594557!220x220.jpg" width="80" height="80" alt="小米盒子3s"></a>
	</div>
				<div class="blck_tem_s">
<a class="blck_tem_s_tmore">浏览更多</a>
<p class="blck_tem_s_more">热门</p>
<a  class="blck_tem_s_href" href="href="https://www.mi.com/p/1995.html"">
<i class="iconfont"></i></a>
			</div>
				</div>
			<div class="Tues_3" style="display:none">
				<div class="blck_tem ">
	<div class="blck_tem_null"></div>
	<a  class="blck_tem_href" href="https://item.mi.com/1174100036.html">
	<img src="${pageContext.request.contextPath}/image/pms_1499138177.54329452!220x220 (1).jpg" width="150" height="150" alt="小米电视4 55英寸"></a>
	<h3 ><a class="blck_tem_title"href="https://item.mi.com/1174100036.html">小米笔记本Air 13.3" i7处理器</a></h3>
	<p class="blck_tem_desc">Intel酷睿i7处理器，8GB内存+256GB</p>
	<p class="blck_tem_price"> <span class="num">5599</span>元  <del><span class="num">5999</span>元</del>  </p>
	<div class="pop" style="display:none;height:84px;width:234px;position:relative;top:-68px;background: #ff6700;text-align:center">
	<p style="position:relative;margin-bottom: 5px;width:180px;top:8px;left:27px;text-align:center;color: #fff;font-size: 12px;">朋友圈一发就被刷爆了都问我哪买的什么电视，小米是不是...</p>
	<p style="position:relative;font-size: 12px;color: rgba(255,255,255,0.6);"> 来自于 1036363299 的评价 </p>
	</div>
	</div>
				<div class="blck_tem ">
	<div class="blck_tem_sale">享9.3折 </div>
	<a  class="blck_tem_href" href="https://item.mi.com/1174100036.html">
	<img src="${pageContext.request.contextPath}/image/pms_1499138177.54329452!220x220.jpg" width="150" height="150" alt="小米电视4A 49英寸 标准版"></a>
	<h3 ><a class="blck_tem_title"href="https://item.mi.com/1174100036.html">小米笔记本Air 13.3" i7处理器</a></h3>
	<p class="blck_tem_desc">Intel酷睿i7处理器，8GB内存+256GB</p>
	<p class="blck_tem_price"> <span class="num">2049</span>元  <del><span class="num">2399</span>元</del>  </p>
	<div class="pop" style="display:none;height:84px;width:234px;position:relative;top:-68px;background: #ff6700;text-align:center">
	<p style="position:relative;margin-bottom: 5px;width:180px;top:8px;left:27px;text-align:center;color: #fff;font-size: 12px;">外形高大尚，小米产品果然质量飞一般。</p>
	<p style="position:relative;font-size: 12px;color: rgba(255,255,255,0.6);">   来自于 放开我，我要拿五杀 的评价   </p>
	</div>
	</div>
				<div class="blck_tem ">
	<div class="blck_tem_null"></div>
	<a  class="blck_tem_href" href="https://item.mi.com/1174100036.html">
	<img src="${pageContext.request.contextPath}/image/pms_1469583247.6157588!220x220.jpg" width="150" height="150" alt="小米电视4A 32英寸"></a>
	<h3 ><a class="blck_tem_title"href="https://item.mi.com/1174100036.html">小米笔记本Air 13.3英寸</a></h3>
	<p class="blck_tem_desc">Intel 酷睿i5 处理器 独立显卡 </p>
	<p class="blck_tem_price"> <span class="num">4999</span>元  <del><span class="num">5199</span>元</del>  </p>
	<div class="pop" style="display:none;height:84px;width:234px;position:relative;top:-68px;background: #ff6700;text-align:center">
	<p style="position:relative;margin-bottom: 5px;width:180px;top:8px;left:27px;text-align:center;color: #fff;font-size: 12px;">重要的事情说3遍 超爱 超爱 超爱客服妹子</p>
	<p style="position:relative;font-size: 12px;color: rgba(255,255,255,0.6);">   来自于 张宏 的评价   </p>
	</div>
	</div>
				<div class="blck_tem">
	<div class="blck_tem_sale">享9.2折</div>
	<a  class="blck_tem_href" href="https://item.mi.com/1174100036.html">
	<img src="${pageContext.request.contextPath}/image/pms_1490077569.08131612!220x220.png" width="150" height="150" alt="小米电视4A 65英寸"></a>
	<h3 ><a class="blck_tem_title"href="https://item.mi.com/1174100036.html">小米电视4A 65英寸</a></h3>
	<p class="blck_tem_desc">4K超高清屏 / 真四核64位高性能处理器</p>
	<p class="blck_tem_price"> <span class="num">3999</span>元  <del><span class="num">4199</span>元</del>  </p>
	</div>
				<div class="blck_tem">
	<div class="blck_tem_sale">享9.5折 </div>
	<a  class="blck_tem_href" href="https://item.mi.com/1174100036.html">
	<img src="${pageContext.request.contextPath}/image/pms_1490595812.95661863!220x220.png" width="150" height="150" alt="小米电视4A 43英寸"></a>
	<h3 ><a class="blck_tem_title"href="https://item.mi.com/1174100036.html">小米无线鼠标</a></h3>
	<p class="blck_tem_desc">耐脏亲肤涂层，人体工学设计</p>
	<p class="blck_tem_price"> <span class="num">64</span>元  <del><span class="num">69</span>元</del>  </p>
	</div>
				<div class="blck_tem">
	<div class="blck_tem_sale">享9.5折 </div>
	<a  class="blck_tem_href" href="https://item.mi.com/1174100036.html">
	<img src="${pageContext.request.contextPath}/image/pms_1478248566.62624407!220x220.jpg" width="150" height="150" alt="小米电视4 65英寸"></a>
	<h3 ><a class="blck_tem_title"href="https://item.mi.com/1174100036.html">小米便携鼠标</a></h3>
	<p class="blck_tem_desc">轻薄便携，铝合金外壳 +ABS 材质</p>
	<p class="blck_tem_price"> <span class="num">94</span>元  <del><span class="num">99</span>元</del>  </p>
	</div>
				<div class="blck_tem">
	<div class="blck_tem_null"> </div>
	<a  class="blck_tem_href" href="https://item.mi.com/1174100036.html">
	<img src="${pageContext.request.contextPath}/image/pms_1490702347.3628109!220x220.png" width="150" height="150" alt="小米空气净化器2"></a>
	<h3 ><a class="blck_tem_title"href="https://item.mi.com/1174100036.html">悦米机械键盘</a></h3>
	<p class="blck_tem_desc">铝合金机身，TTC红轴，87 键</p>
	<p class="blck_tem_price"> <span class="num">269</span>元  <del><span class="num">299</span>元</del>  </p>
	</div>
				<div class="blck_tem_s">
	<h3><a class="blck_tem_s_title">多功能转接器</a></h3>
	<p class="blck_tem_s_price">349元</p>
	<a  class="blck_tem_s_href" href="https://item.mi.com/1174100036.html">
	<img src="${pageContext.request.contextPath}/image/pms_1469523170.25518983!220x220.jpg" width="80" height="80" alt="小米盒子3s"></a>
	</div>
				<div class="blck_tem_s">
	<a class="blck_tem_s_tmore">浏览更多</a>
	<p class="blck_tem_s_more">热门</p>
	<a  class="blck_tem_s_href" href="href="https://www.mi.com/p/1995.html"">
	<i class="iconfont"></i></a>
				</div>
				</div>
			<div class="Tues_4" style="display:none">
				<div class="blck_tem">
				<div class="blck_tem_sale">享9折 </div>
				<a  class="blck_tem_href" href="https://item.mi.com/1174100036.html"><img src="${pageContext.request.contextPath}/image/pms_1465366178.11466342!220x220 (1).jpg" width="150" height="150" alt="小米电视4 55英寸"></a>
				<h3 ><a class="blck_tem_title"href="https://item.mi.com/1174100036.html">米家恒温电水壶</a></h3>
				<p class="blck_tem_desc">水温智能控制，304 不锈钢内胆</p>
				<p class="blck_tem_price"> <span class="num">149</span>元  <del><span class="num">199</span>元</del>  </p>
				<div class="pop" style=" display:none;height:84px;width:234px;position:relative;top:-68px;background: #ff6700;text-align:center">
					<p style="position:relative;margin-bottom: 5px;width:180px;top:8px;left:27px;text-align:center;color: #fff;font-size: 12px;tran">客服妹子，来来来，给你沏杯咖啡。</p>
					<p style="position:relative;font-size: 12px;color: rgba(255,255,255,0.6);"> 来自于 1036363299 的评价 </p>
				</div>
			</div>
				<div class="blck_tem ">
				<div class="blck_tem_new">新品</div>
				<a  class="blck_tem_href" href="https://item.mi.com/1174100036.html">
				<img src="${pageContext.request.contextPath}/image/pms_1506417289.23728408!220x220.jpg" width="150" height="150" alt="小米电视4A 49英寸 标准版"></a>
				<h3 ><a class="blck_tem_title"href="https://item.mi.com/1174100036.html">小米随身手电筒</a></h3>
				<p class="blck_tem_desc">11 挡调光，随心而亮</p>
				<p class="blck_tem_price"> <span class="num">79</span>元  <del><span class="num">99</span>元</del>  </p>
				<div class="pop-1" style="display:none;height:84px;width:234px;position:relative;top:-68px;background: #ff6700;text-align:center">
						<p style="position:relative;margin-bottom: 5px;width:180px;top:8px;left:27px;text-align:center;color: #fff;font-size: 12px;">外形高大尚，小米产品果然质量飞一般。</p>
						<p style="position:relative;font-size: 12px;color: rgba(255,255,255,0.6);">  来自于 457652的评价  </p>
				</div>
				 </div>
				<div class="blck_tem ">
				<div class="blck_tem_sale">享9.5折</div>
	<a  class="blck_tem_href" href="https://item.mi.com/1174100036.html">
	<img src="${pageContext.request.contextPath}/image/pms_1500287084.72131750!220x220.jpg" width="150" height="150" alt="小米电视4A 32英寸"></a>
	<h3 ><a class="blck_tem_title"href="https://item.mi.com/1174100036.html">米家扫地机器人</a></h3>
	<p class="blck_tem_desc">智能路径规划，扫得干净扫得快  </p>
	<p class="blck_tem_price"> <span class="num">1599</span>元  <del><span class="num">1699</span>元</del>  </p>
	<div class="pop-2" style="display:none;height:84px;width:234px;position:relative;top:-68px;background: #ff6700;text-align:center">
	<p style="position:relative;margin-bottom: 5px;width:180px;top:8px;left:27px;text-align:center;color: #fff;font-size: 12px;">唉，这个月一下子工资没了，只能吃土了，当笔记本到手里...</p>
	<p style="position:relative;font-size: 12px;color: rgba(255,255,255,0.6);">   来自于 125452的评价   </p>
	</div>
	</div>
				<div class="blck_tem">
	<div class="blck_tem_sale">享9折</div>
	<a  class="blck_tem_href" href="https://item.mi.com/1174100036.html">
	<img src="${pageContext.request.contextPath}/image/T1zBYgBCWv1RXrhCrK!220x220 (1).jpg" width="150" height="150" alt="小米电视4A 65英寸"></a>
	<h3 ><a class="blck_tem_title"href="https://item.mi.com/1174100036.html">小米空气净化器2</a></h3>
	<p class="blck_tem_desc">10分钟，房间空气焕然一新</p>
	<p class="blck_tem_price"> <span class="num">4599</span>元  <del><span class="num">4999</span>元</del>  </p>
	</div>
				<div class="blck_tem">
	<div class="blck_tem_sale">享9折 </div>
	<a  class="blck_tem_href" href="https://item.mi.com/1174100036.html">
	<img src="${pageContext.request.contextPath}/image/T1OVC_ByY_1RXrhCrK!220x220 (1).jpg" width="150" height="150" alt="小米电视4A 43英寸"></a>
	<h3 ><a class="blck_tem_title"href="https://item.mi.com/1174100036.html">米家压力IH电饭煲</a></h3>
	<p class="blck_tem_desc">智能烹饪，灰铸铁粉体涂层内胆</p>
	<p class="blck_tem_price"> <span class="num">899</span>元  <del><span class="num">999</span>元</del>  </p>
	</div>
				<div class="blck_tem">
	<div class="blck_tem_sale">享9折 </div>
	<a  class="blck_tem_href" href="https://item.mi.com/1174100036.html">
	<img src="${pageContext.request.contextPath}/image/pms_1496647119.81414190!220x220.jpg" width="150" height="150" alt="小米电视4 65英寸"></a>
	<h3 ><a class="blck_tem_title"href="https://item.mi.com/1174100036.html">飞利浦智睿球泡灯</a></h3>
	<p class="blck_tem_desc">自由调节亮度，Wi-Fi随时操控</p>
	<p class="blck_tem_price"> <span class="num">49</span>元  <del><span class="num">59</span>元</del>  </p>
	</div>
				<div class="blck_tem">
	<div class="blck_tem_null"> </div>
	<a  class="blck_tem_href" href="https://item.mi.com/1174100036.html">
	<img src="${pageContext.request.contextPath}/image/pms_1495520422.36514041!220x220 (1).jpg" width="150" height="150" alt="小米空气净化器2"></a>
	<h3 ><a class="blck_tem_title"href="https://item.mi.com/1174100036.html">米家 LED 智能台灯</a></h3>
	<p class="blck_tem_desc">无可视频闪，四种场景优化调光</p>
	<p class="blck_tem_price"> <span class="num">149</span>元  <del><span class="num">199</span>元</del>  </p>
	</div>
				<div class="blck_tem_s">
	<h3><a class="blck_tem_s_title">Yeelight LED 吸顶灯</a></h3>
	<p class="blck_tem_s_price">349元</p>
	<a  class="blck_tem_s_href" href="https://item.mi.com/1174100036.html">
	<img src="${pageContext.request.contextPath}/image/pms_1490756071.3088664!220x220.png" width="80" height="80" alt="小米盒子3s"></a>
	</div>
				<div class="blck_tem_s">
					<a class="blck_tem_s_tmore">浏览更多</a>
	<p class="blck_tem_s_more">热门</p>
	<a  class="blck_tem_s_href" href="href="https://www.mi.com/p/1995.html"">
	<i class="iconfont"></i></a>
				</div>
			</div>
			</div>
		</div>
		<div class="smart"><!--周边-->
			<div class="box-hd"><!--标题-->
			<h2 class="title">周边</h2>
			<div class="more ">
			<ul class="tab-list">
			<li class="tab-active tab-active-4">热门</li>
			<li class="BOB-4">服装</li>
			<li class="TOT-4">居家</li>
			<li class="KOK-4">生活周边</li>
			<li class="">箱包</li>
			</ul>
			</div>
			</div>
			<div class="box-bd">
			<div class="elec_4">
			<ul class="brick-promo-list"> 
			<li class="brick-promo-smart"> 
			<a href="//www.mi.com/sportearphone/"" class="exposure">
			<img src="${pageContext.request.contextPath}/image/xmad_15137604510101_BtOCa.jpg" ></a>
			</li>
			<li class="brick-promo-smart">
			<a href="https://www.mi.com/earphonepro/"" class="exposure">
			<img src="${pageContext.request.contextPath}/image/xmad_15133038095279_UZoei.jpg" ></a>
			</li>
			</ul>
			</div>
			<div class="elec_16 Tues1">
			<div class="blck_tem">
			<a  class="blck_tem_href" href="https://item.mi.com/1174100036.html">
			<img src="${pageContext.request.contextPath}/image/pms_1508296999.64987276!220x220.jpg" width="150" height="150" alt="小米双层抓绒夹克 男款 "></a>
			<h3 ><a class="blck_tem_title"href="https://item.mi.com/1174100036.html">小米双层抓绒夹克 男款 </a></h3>
			<p class="blck_tem_price"> <span class="num">99</span>元  <del><span class="num">129</span>元</del>  </p>
			</div>
			<div class="blck_tem">
			<a  class="blck_tem_href" href="https://item.mi.com/1174100036.html">
			<img src="${pageContext.request.contextPath}/image/pms_1504778935.57065093!220x220.jpg" width="150" height="150" alt="小米移动电源10000mAh 高配版保护套"></a>
			<h3 ><a class="blck_tem_title"href="https://item.mi.com/1174100036.html">米家运动鞋 男款 </a></h3>
			<p class="blck_tem_price"> <span class="num">169</span>元 <del><span class="num">199</span>元</del></p>
			</div>
			<div class="blck_tem">
			<a  class="blck_tem_href" href="https://item.mi.com/1174100036.html">
			<img src="${pageContext.request.contextPath}/image/pms_1506499544.77931222!220x220.jpg" width="150" height="150" alt="小米一体织轻薄羽绒服 男款"></a>
			<h3 ><a class="blck_tem_title"href="https://item.mi.com/1174100036.html">小米一体织轻薄羽绒服 男款 </a></h3>
			<p class="blck_tem_price"> <span class="num">249</span>元 <del><span class="num">299</span>元</del></p>
			</div>
			<div class="blck_tem">
			<a  class="blck_tem_href" href="https://item.mi.com/1174100036.html">
			<img src="${pageContext.request.contextPath}/image/pms_1504510139.65413172!220x220.jpg" width="150" height="150" alt="Free Tie真皮板鞋 米家定制"></a>
			<h3 ><a class="blck_tem_title"href="https://item.mi.com/1174100036.html">Free Tie真皮板鞋 米家定制</a></h3>
			<p class="blck_tem_price"> <span class="num">169</span>元  <del><span class="num">199</span>元</del>  </p>
			</div>
			<div class="blck_tem">
			<a  class="blck_tem_href" href="https://item.mi.com/1174100036.html">
			<img src="${pageContext.request.contextPath}/image/pms_1506669932.05022137!220x220.jpg" width="150" height="150" alt="小米羊毛触屏手套 男款"></a>
			<h3 ><a class="blck_tem_title"href="https://item.mi.com/1174100036.html">小米羊毛触屏手套 男款</a></h3>
			<p class="blck_tem_price"> <span class="num">39</span>元  <del><span class="num">49</span>元</del>  </p>
			</div>
			<div class="blck_tem">
			<a  class="blck_tem_href" href="https://item.mi.com/1174100036.html">
			<img src="${pageContext.request.contextPath}/image/pms_1500282577.40987685!220x220.jpg" width="150" height="150" alt="TS偏光太阳镜   米家定制"></a>
			<h3 ><a class="blck_tem_title"href="https://item.mi.com/1174100036.html">TS偏光太阳镜   米家定制</a></h3>
			<p class="blck_tem_price"> <span class="num">89</span>元 <del><span class="num">99</span>元</del></p>
			</div>
			<div class="blck_tem">
			<a  class="blck_tem_href" href="https://item.mi.com/1174100036.html">
			<img src="${pageContext.request.contextPath}/image/pms_1492999959.43955760!220x220.jpg" width="150" height="150" alt="TS尼龙偏光太阳镜 米家定制"></a>
			<h3 ><a class="blck_tem_title"href="https://item.mi.com/1174100036.html">TS尼龙偏光太阳镜 米家定制</a></h3>
			<p class="blck_tem_price"> <span class="num">169</span>元  <del><span class="num">199</span>元</del>  </p>
			</div>
			<div class="blck_tem_s">
			<h3><a class="blck_tem_s_title">小米纪念款围..</a></h3>
			<p class="blck_tem_s_price">99元</p>
			<a  class="blck_tem_s_href" href="//www.mi.com/mivr/">
			<img src="${pageContext.request.contextPath}/image/pms_1478762755.55733411!220x220.jpg" width="80" height="80" alt="小米纪念款围.."></a>
			</div>
			<div class="blck_tem_s">
			<a class="blck_tem_s_tmore">浏览更多</a>
			<p class="blck_tem_s_more">热门</p>
			<a  class="blck_tem_s_href" href="href="https://www.mi.com/p/1995.html"">
			<i class="iconfont"></i></a>
			</div>
			</div>
			<div class="Tues2" style="display:none">
				<div class="blck_tem ">
	<div class="blck_tem_sale">享9折 </div>
	<a  class="blck_tem_href" href="https://item.mi.com/1174100036.html">
	<img src="${pageContext.request.contextPath}/image/pms_1503909300.25797209!220x220.png" width="150" height="150" alt="小米电视4 55英寸"></a>
	<h3 ><a class="blck_tem_title"href="https://item.mi.com/1174100036.html">小米电视4A 55英寸</a></h3>
	<p class="blck_tem_desc">4K高清HDR / 真四核64位高性能处理器</p>
	<p class="blck_tem_price"> <span class="num">2649</span>元  <del><span class="num">2999</span>元</del>  </p>
	<div class="pop" style="display:none;height:84px;width:234px;position:relative;top:-68px;background: #ff6700;text-align:center">
	<p style="position:relative;margin-bottom: 5px;width:180px;top:8px;left:27px;text-align:center;color: #fff;font-size: 12px;">朋友圈一发就被刷爆了都问我哪买的什么电视，小米是不是...</p>
	<p style="position:relative;font-size: 12px;color: rgba(255,255,255,0.6);"> 来自于 1036363299 的评价 </p>
	</div>
	</div>
				<div class="blck_tem ">
	<div class="blck_tem_sale">享9.4折 </div>
	<a  class="blck_tem_href" href="https://item.mi.com/1174100036.html">
	<img src="${pageContext.request.contextPath}/image/pms_1508927539.71959246!220x220.png" width="150" height="150" alt="小米电视4A 49英寸 标准版"></a>
	<h3 ><a class="blck_tem_title"href="https://item.mi.com/1174100036.html">小米电视4A 49英寸 标准版</a></h3>
	<p class="blck_tem_desc">4K HDR / 人工智能电视 / 超窄边</p>
	<p class="blck_tem_price"> <span class="num">2049</span>元  <del><span class="num">2399</span>元</del>  </p>
	<div class="pop-1" style="display:none;height:84px;width:234px;position:relative;top:-68px;background: #ff6700;text-align:center">
	<p style="position:relative;margin-bottom: 5px;width:180px;top:8px;left:27px;text-align:center;color: #fff;font-size: 12px;">外形高大尚，小米产品果然质量飞一般。</p>
	<p style="position:relative;font-size: 12px;color: rgba(255,255,255,0.6);">  来自于 石家辉 的评价  </p>
	</div>
	</div>
				<div class="blck_tem ">
	<div class="blck_tem_sale">享9折</div>
	<a  class="blck_tem_href" href="https://item.mi.com/1174100036.html">
	<img src="${pageContext.request.contextPath}/image/pms_1500287084.72131750!220x220.jpg" width="150" height="150" alt="小米电视4A 32英寸"></a>
	<h3 ><a class="blck_tem_title"href="https://item.mi.com/1174100036.html">小米电视4A 32英寸</a></h3>
	<p class="blck_tem_desc">64位四核处理器 / 1GB+4GB大内存 </p>
	<p class="blck_tem_price"> <span class="num">999</span>元  <del><span class="num">1199</span>元</del>  </p>
	<div class="pop-2" style="display:none;height:84px;width:234px;position:relative;top:-68px;background: #ff6700;text-align:center">
	<p style="position:relative;margin-bottom: 5px;width:180px;top:8px;left:27px;text-align:center;color: #fff;font-size: 12px;">唉，这个月一下子工资没了，只能吃土了，当笔记本到手里...</p>
	<p style="position:relative;font-size: 12px;color: rgba(255,255,255,0.6);">   来自于 张宏 的评价   </p>
	</div>
	</div>
				<div class="blck_tem">
	<div class="blck_tem_sale">享9.2折</div>
	<a  class="blck_tem_href" href="https://item.mi.com/1174100036.html">
	<img src="${pageContext.request.contextPath}/image/pms_1490077569.08131612!220x220.png" width="150" height="150" alt="小米电视4A 65英寸"></a>
	<h3 ><a class="blck_tem_title"href="https://item.mi.com/1174100036.html">小米电视4A 65英寸</a></h3>
	<p class="blck_tem_desc">4K超高清屏 / 真四核64位高性能处理器</p>
	<p class="blck_tem_price"> <span class="num">4599</span>元  <del><span class="num">4999</span>元</del>  </p>
	</div>
				<div class="blck_tem">
	<div class="blck_tem_sale">享9.5折 </div>
	<a  class="blck_tem_href" href="https://item.mi.com/1174100036.html">
	<img src="${pageContext.request.contextPath}/image/pms_1503909150.67293503!220x220.png" width="150" height="150" alt="小米电视4A 43英寸"></a>
	<h3 ><a class="blck_tem_title"href="https://item.mi.com/1174100036.html">小米电视4A 43英寸</a></h3>
	<p class="blck_tem_desc">全高清屏 / 人工智能语音 / 大存储</p>
	<p class="blck_tem_price"> <span class="num">1899</span>元  <del><span class="num">1999</span>元</del>  </p>
	</div>
				<div class="blck_tem">
	<div class="blck_tem_sale">享9折 </div>
	<a  class="blck_tem_href" href="https://item.mi.com/1174100036.html">
	<img src="${pageContext.request.contextPath}/image/pms_1495074053.84174465!220x220.jpg" width="150" height="150" alt="小米电视4 65英寸"></a>
	<h3 ><a class="blck_tem_title"href="https://item.mi.com/1174100036.html">小米电视4 65英寸</a></h3>
	<p class="blck_tem_desc">无边框式设计 / 3GB+32GB超大内存</p>
	<p class="blck_tem_price"> <span class="num">8999</span>元  <del><span class="num">9999</span>元</del>  </p>
	</div>
				<div class="blck_tem">
	<div class="blck_tem_null"> </div>
	<a  class="blck_tem_href" href="https://item.mi.com/1174100036.html">
	<img src="${pageContext.request.contextPath}/image/pms_1499072633.96298268!220x220.jpg" width="150" height="150" alt="小米空气净化器2"></a>
	<h3 ><a class="blck_tem_title"href="https://item.mi.com/1174100036.html">小米盒子3 增强版</a></h3>
	<p class="blck_tem_desc">高端 4K 网络机顶盒</p>
	<p class="blck_tem_price"> <span class="num">499</span>元  <del><span class="num">599</span>元</del>  </p>
	</div>
				<div class="blck_tem_s">
	<h3><a class="blck_tem_s_title">小米盒子3s</a></h3>
	<p class="blck_tem_s_price">349元</p>
	<a  class="blck_tem_s_href" href="https://item.mi.com/1174100036.html">
	<img src="${pageContext.request.contextPath}/image/pms_1479190789.95594557!220x220.jpg" width="80" height="80" alt="小米盒子3s"></a>
	</div>
				<div class="blck_tem_s">
<a class="blck_tem_s_tmore">浏览更多</a>
<p class="blck_tem_s_more">热门</p>
<a  class="blck_tem_s_href" href="href="https://www.mi.com/p/1995.html"">
<i class="iconfont"></i></a>
			</div>
				</div>
			<div class="Tues3" style="display:none">
				<div class="blck_tem ">
	<div class="blck_tem_null"></div>
	<a  class="blck_tem_href" href="https://item.mi.com/1174100036.html">
	<img src="${pageContext.request.contextPath}/image/pms_1499138177.54329452!220x220 (1).jpg" width="150" height="150" alt="小米电视4 55英寸"></a>
	<h3 ><a class="blck_tem_title"href="https://item.mi.com/1174100036.html">小米笔记本Air 13.3" i7处理器</a></h3>
	<p class="blck_tem_desc">Intel酷睿i7处理器，8GB内存+256GB</p>
	<p class="blck_tem_price"> <span class="num">5599</span>元  <del><span class="num">5999</span>元</del>  </p>
	<div class="pop" style="display:none;height:84px;width:234px;position:relative;top:-68px;background: #ff6700;text-align:center">
	<p style="position:relative;margin-bottom: 5px;width:180px;top:8px;left:27px;text-align:center;color: #fff;font-size: 12px;">朋友圈一发就被刷爆了都问我哪买的什么电视，小米是不是...</p>
	<p style="position:relative;font-size: 12px;color: rgba(255,255,255,0.6);"> 来自于 1036363299 的评价 </p>
	</div>
	</div>
				<div class="blck_tem ">
	<div class="blck_tem_sale">享9.3折 </div>
	<a  class="blck_tem_href" href="https://item.mi.com/1174100036.html">
	<img src="${pageContext.request.contextPath}/image/pms_1499138177.54329452!220x220.jpg" width="150" height="150" alt="小米电视4A 49英寸 标准版"></a>
	<h3 ><a class="blck_tem_title"href="https://item.mi.com/1174100036.html">小米笔记本Air 13.3" i7处理器</a></h3>
	<p class="blck_tem_desc">Intel酷睿i7处理器，8GB内存+256GB</p>
	<p class="blck_tem_price"> <span class="num">2049</span>元  <del><span class="num">2399</span>元</del>  </p>
	<div class="pop" style="display:none;height:84px;width:234px;position:relative;top:-68px;background: #ff6700;text-align:center">
	<p style="position:relative;margin-bottom: 5px;width:180px;top:8px;left:27px;text-align:center;color: #fff;font-size: 12px;">外形高大尚，小米产品果然质量飞一般。</p>
	<p style="position:relative;font-size: 12px;color: rgba(255,255,255,0.6);">   来自于 放开我，我要拿五杀 的评价   </p>
	</div>
	</div>
				<div class="blck_tem ">
	<div class="blck_tem_null"></div>
	<a  class="blck_tem_href" href="https://item.mi.com/1174100036.html">
	<img src="${pageContext.request.contextPath}/image/pms_1469583247.6157588!220x220.jpg" width="150" height="150" alt="小米电视4A 32英寸"></a>
	<h3 ><a class="blck_tem_title"href="https://item.mi.com/1174100036.html">小米笔记本Air 13.3英寸</a></h3>
	<p class="blck_tem_desc">Intel 酷睿i5 处理器 独立显卡 </p>
	<p class="blck_tem_price"> <span class="num">4999</span>元  <del><span class="num">5199</span>元</del>  </p>
	<div class="pop" style="display:none;height:84px;width:234px;position:relative;top:-68px;background: #ff6700;text-align:center">
	<p style="position:relative;margin-bottom: 5px;width:180px;top:8px;left:27px;text-align:center;color: #fff;font-size: 12px;">重要的事情说3遍 超爱 超爱 超爱客服妹子</p>
	<p style="position:relative;font-size: 12px;color: rgba(255,255,255,0.6);">   来自于 张宏 的评价   </p>
	</div>
	</div>
				<div class="blck_tem">
	<div class="blck_tem_sale">享9.2折</div>
	<a  class="blck_tem_href" href="https://item.mi.com/1174100036.html">
	<img src="${pageContext.request.contextPath}/image/pms_1490077569.08131612!220x220.png" width="150" height="150" alt="小米电视4A 65英寸"></a>
	<h3 ><a class="blck_tem_title"href="https://item.mi.com/1174100036.html">小米电视4A 65英寸</a></h3>
	<p class="blck_tem_desc">4K超高清屏 / 真四核64位高性能处理器</p>
	<p class="blck_tem_price"> <span class="num">3999</span>元  <del><span class="num">4199</span>元</del>  </p>
	</div>
				<div class="blck_tem">
	<div class="blck_tem_sale">享9.5折 </div>
	<a  class="blck_tem_href" href="https://item.mi.com/1174100036.html">
	<img src="${pageContext.request.contextPath}/image/pms_1490595812.95661863!220x220.png" width="150" height="150" alt="小米电视4A 43英寸"></a>
	<h3 ><a class="blck_tem_title"href="https://item.mi.com/1174100036.html">小米无线鼠标</a></h3>
	<p class="blck_tem_desc">耐脏亲肤涂层，人体工学设计</p>
	<p class="blck_tem_price"> <span class="num">64</span>元  <del><span class="num">69</span>元</del>  </p>
	</div>
				<div class="blck_tem">
	<div class="blck_tem_sale">享9.5折 </div>
	<a  class="blck_tem_href" href="https://item.mi.com/1174100036.html">
	<img src="${pageContext.request.contextPath}/image/pms_1478248566.62624407!220x220.jpg" width="150" height="150" alt="小米电视4 65英寸"></a>
	<h3 ><a class="blck_tem_title"href="https://item.mi.com/1174100036.html">小米便携鼠标</a></h3>
	<p class="blck_tem_desc">轻薄便携，铝合金外壳 +ABS 材质</p>
	<p class="blck_tem_price"> <span class="num">94</span>元  <del><span class="num">99</span>元</del>  </p>
	</div>
				<div class="blck_tem">
	<div class="blck_tem_null"> </div>
	<a  class="blck_tem_href" href="https://item.mi.com/1174100036.html">
	<img src="${pageContext.request.contextPath}/image/pms_1490702347.3628109!220x220.png" width="150" height="150" alt="小米空气净化器2"></a>
	<h3 ><a class="blck_tem_title"href="https://item.mi.com/1174100036.html">悦米机械键盘</a></h3>
	<p class="blck_tem_desc">铝合金机身，TTC红轴，87 键</p>
	<p class="blck_tem_price"> <span class="num">269</span>元  <del><span class="num">299</span>元</del>  </p>
	</div>
				<div class="blck_tem_s">
	<h3><a class="blck_tem_s_title">多功能转接器</a></h3>
	<p class="blck_tem_s_price">349元</p>
	<a  class="blck_tem_s_href" href="https://item.mi.com/1174100036.html">
	<img src="${pageContext.request.contextPath}/image/pms_1469523170.25518983!220x220.jpg" width="80" height="80" alt="小米盒子3s"></a>
	</div>
				<div class="blck_tem_s">
	<a class="blck_tem_s_tmore">浏览更多</a>
	<p class="blck_tem_s_more">热门</p>
	<a  class="blck_tem_s_href" href="href="https://www.mi.com/p/1995.html"">
	<i class="iconfont"></i></a>
				</div>
				</div>
			<div class="Tues4" style="display:none">
				<div class="blck_tem">
				<div class="blck_tem_sale">享9折 </div>
				<a  class="blck_tem_href" href="https://item.mi.com/1174100036.html"><img src="${pageContext.request.contextPath}/image/pms_1465366178.11466342!220x220 (1).jpg" width="150" height="150" alt="小米电视4 55英寸"></a>
				<h3 ><a class="blck_tem_title"href="https://item.mi.com/1174100036.html">米家恒温电水壶</a></h3>
				<p class="blck_tem_desc">水温智能控制，304 不锈钢内胆</p>
				<p class="blck_tem_price"> <span class="num">149</span>元  <del><span class="num">199</span>元</del>  </p>
				<div class="pop" style=" display:none;height:84px;width:234px;position:relative;top:-68px;background: #ff6700;text-align:center">
					<p style="position:relative;margin-bottom: 5px;width:180px;top:8px;left:27px;text-align:center;color: #fff;font-size: 12px;tran">客服妹子，来来来，给你沏杯咖啡。</p>
					<p style="position:relative;font-size: 12px;color: rgba(255,255,255,0.6);"> 来自于 1036363299 的评价 </p>
				</div>
			</div>
				<div class="blck_tem ">
				<div class="blck_tem_new">新品</div>
				<a  class="blck_tem_href" href="https://item.mi.com/1174100036.html">
				<img src="${pageContext.request.contextPath}/image/pms_1506417289.23728408!220x220.jpg" width="150" height="150" alt="小米电视4A 49英寸 标准版"></a>
				<h3 ><a class="blck_tem_title"href="https://item.mi.com/1174100036.html">小米随身手电筒</a></h3>
				<p class="blck_tem_desc">11 挡调光，随心而亮</p>
				<p class="blck_tem_price"> <span class="num">79</span>元  <del><span class="num">99</span>元</del>  </p>
				<div class="pop-1" style="display:none;height:84px;width:234px;position:relative;top:-68px;background: #ff6700;text-align:center">
						<p style="position:relative;margin-bottom: 5px;width:180px;top:8px;left:27px;text-align:center;color: #fff;font-size: 12px;">外形高大尚，小米产品果然质量飞一般。</p>
						<p style="position:relative;font-size: 12px;color: rgba(255,255,255,0.6);">  来自于 457652的评价  </p>
				</div>
				 </div>
				<div class="blck_tem ">
				<div class="blck_tem_sale">享9.5折</div>
	<a  class="blck_tem_href" href="https://item.mi.com/1174100036.html">
	<img src="${pageContext.request.contextPath}/image/pms_1500287084.72131750!220x220.jpg" width="150" height="150" alt="小米电视4A 32英寸"></a>
	<h3 ><a class="blck_tem_title"href="https://item.mi.com/1174100036.html">米家扫地机器人</a></h3>
	<p class="blck_tem_desc">智能路径规划，扫得干净扫得快  </p>
	<p class="blck_tem_price"> <span class="num">1599</span>元  <del><span class="num">1699</span>元</del>  </p>
	<div class="pop-2" style="display:none;height:84px;width:234px;position:relative;top:-68px;background: #ff6700;text-align:center">
	<p style="position:relative;margin-bottom: 5px;width:180px;top:8px;left:27px;text-align:center;color: #fff;font-size: 12px;">唉，这个月一下子工资没了，只能吃土了，当笔记本到手里...</p>
	<p style="position:relative;font-size: 12px;color: rgba(255,255,255,0.6);">   来自于 125452的评价   </p>
	</div>
	</div>
				<div class="blck_tem">
	<div class="blck_tem_sale">享9折</div>
	<a  class="blck_tem_href" href="https://item.mi.com/1174100036.html">
	<img src="${pageContext.request.contextPath}/image/T1zBYgBCWv1RXrhCrK!220x220 (1).jpg" width="150" height="150" alt="小米电视4A 65英寸"></a>
	<h3 ><a class="blck_tem_title"href="https://item.mi.com/1174100036.html">小米空气净化器2</a></h3>
	<p class="blck_tem_desc">10分钟，房间空气焕然一新</p>
	<p class="blck_tem_price"> <span class="num">4599</span>元  <del><span class="num">4999</span>元</del>  </p>
	</div>
				<div class="blck_tem">
	<div class="blck_tem_sale">享9折 </div>
	<a  class="blck_tem_href" href="https://item.mi.com/1174100036.html">
	<img src="${pageContext.request.contextPath}/image/T1OVC_ByY_1RXrhCrK!220x220 (1).jpg" width="150" height="150" alt="小米电视4A 43英寸"></a>
	<h3 ><a class="blck_tem_title"href="https://item.mi.com/1174100036.html">米家压力IH电饭煲</a></h3>
	<p class="blck_tem_desc">智能烹饪，灰铸铁粉体涂层内胆</p>
	<p class="blck_tem_price"> <span class="num">899</span>元  <del><span class="num">999</span>元</del>  </p>
	</div>
				<div class="blck_tem">
	<div class="blck_tem_sale">享9折 </div>
	<a  class="blck_tem_href" href="https://item.mi.com/1174100036.html">
	<img src="${pageContext.request.contextPath}/image/pms_1496647119.81414190!220x220.jpg" width="150" height="150" alt="小米电视4 65英寸"></a>
	<h3 ><a class="blck_tem_title"href="https://item.mi.com/1174100036.html">飞利浦智睿球泡灯</a></h3>
	<p class="blck_tem_desc">自由调节亮度，Wi-Fi随时操控</p>
	<p class="blck_tem_price"> <span class="num">49</span>元  <del><span class="num">59</span>元</del>  </p>
	</div>
				<div class="blck_tem">
	<div class="blck_tem_null"> </div>
	<a  class="blck_tem_href" href="https://item.mi.com/1174100036.html">
	<img src="${pageContext.request.contextPath}/image/pms_1495520422.36514041!220x220 (1).jpg" width="150" height="150" alt="小米空气净化器2"></a>
	<h3 ><a class="blck_tem_title"href="https://item.mi.com/1174100036.html">米家 LED 智能台灯</a></h3>
	<p class="blck_tem_desc">无可视频闪，四种场景优化调光</p>
	<p class="blck_tem_price"> <span class="num">149</span>元  <del><span class="num">199</span>元</del>  </p>
	</div>
				<div class="blck_tem_s">
	<h3><a class="blck_tem_s_title">Yeelight LED 吸顶灯</a></h3>
	<p class="blck_tem_s_price">349元</p>
	<a  class="blck_tem_s_href" href="https://item.mi.com/1174100036.html">
	<img src="${pageContext.request.contextPath}/image/pms_1490756071.3088664!220x220.png" width="80" height="80" alt="小米盒子3s"></a>
	</div>
				<div class="blck_tem_s">
					<a class="blck_tem_s_tmore">浏览更多</a>
	<p class="blck_tem_s_more">热门</p>
	<a  class="blck_tem_s_href" href="href="https://www.mi.com/p/1995.html"">
	<i class="iconfont"></i></a>
					</div>
			</div>
			</div>
		</div>
		<div class="star-goods"><!--为你推荐-->
<div class="star-hd">
<h2 class="star-title">为你推荐</h2>
<div class="star-more">
<div class="star-control1"><i class="iconfont test1"></i></div>
<div class="star-control2"><i class="iconfont test2"></i></div>
</div>
</div>
<div class="star-pic">
<ul class="star-pic-ul" style="left:0px;">
<li class="item-1">
<a calss="item-1-pic"><img class="ul-pic"src="${pageContext.request.contextPath}/image/pms_1502962291.85477516!140x140.jpg"></img></a>
<p class="max2">小米5</p>
<p class="price">1499元起</p>
<p class="desc">   3.2万人好评    </p>
</li>
<li class="item-2">
<a calss="item-2-pic"><img class="ul-pic"src="${pageContext.request.contextPath}/image/pms_1505110828.06928608!140x140.jpg"></img></a>
<p class="Mix2">小米Note 3 全网通版 6GB内... </p>
<p class="price">2699元</p>
<p class="desc">   6590人好评    </p>
</li>
<li class="item-3">
<a calss="item-3-pic"><img class="ul-pic"src="${pageContext.request.contextPath}/image/Mix2.png"></img></a>
<p class="Mix2"> 小米MIX2 全网通版 6GB内存</p>
<p class="price">3299元</p>
<p class="desc">   8288人好评    </p>
</li>
<li class="item-4">
<a calss="item-4-pic"><img class="ul-pic"src="${pageContext.request.contextPath}/image/pms_1494557692.6422096!280x280.jpg"></img></a>
<p class="dianshi">米家金属签字笔</p>
<p class="price">22元</p>
<p class="desc">   1万人好评    </p></li>
<li class="item-5">
<a calss="item-5-pic"><img class="ul-pic"src="${pageContext.request.contextPath}/image/pms_1506670699.47382057!140x140.jpg"></img></a>
<p class="dianshi">小米羊毛触屏手套 女款</p>
<p class="price">39元</p>
<p class="desc">   6114人好评    </p>
</li>
<li class="item-6">
<a calss="item-6-pic"><img class="ul-pic"src="${pageContext.request.contextPath}/image/pms_1510302125.54795698!140x140.jpg"></img></a>
<p class="dianshi">小米手环 2</p>
<p class="price">9.9元</p>
<p class="desc">   993人好评    </p>
</li>
<li class="item-7">
<a calss="item-7-pic"><img class="ul-pic"src="${pageContext.request.contextPath}/image/pms_1493284697.69911065!140x140.jpg"></img></a>
<p class="dianshi">小米6 标准高透贴膜</p>
<p class="desc">   1.1万人好评    </p>
<p class="price">9.9元</p></li>
<li class="item-8">
<a calss="item-8-pic"><img class="ul-pic"src="${pageContext.request.contextPath}/image/pms_1503285652.15135811!140x140.jpg"></img></a>
<p class="dianshi">小米圈铁耳机Pro</p>
<p class="price">6.9元</p>
<p class="desc">   2022人好评    </p>
</li>
<li class="item-9">
<a calss="item-9-pic"><img class="ul-pic"src="${pageContext.request.contextPath}/image/pms_1492571518.47778002!140x140.jpg"></img></a>
<p class="dianshi">小米6 全网通版 6GB内存</p>
<p class="price">2499元</p>
<p class="desc">   7.6万人好评    </p>
</li>
<li class="item-10">
<a calss="item-10-pic"><img class="ul-pic"src="${pageContext.request.contextPath}/image/pms_1504778942.26026107!140x140.jpg"></img></a>
<p class="dianshi">米家运动鞋 男款</p>
<p class="desc">   4520人好评    </p>
<p class="price">169元</p></li>
</ul>
</div>
</div>
		<div class="Hot"><!--热门-->
<div class="star-hd">
<h2 class="star-title">热评产品</h2>
<div class="Hot_1">
<div class="Hot_1_pic"><img src="${pageContext.request.contextPath}/image/12987438-4522-425f-a252-2493152edda1.jpg" width="296" height="220">
</div>
<div class="review">
<p ><a href="https://order.mi.com/comment/commentDetail/comment_id/134163707">
很小巧 像不喜欢戴活塞的人可以试试这种~很舒服包装还是一如既往的简洁 要是有盒子就好了=￣ω￣=</a></p>
<p class="author"> 来自于 鹤唳 的评价</p>
</div>
<div class="Hot_info">
<a href="//www.mi.com/capsuleearphone/">小米胶囊耳机</a>
<span >|</span>
<p >59元</p>
</div>
</div>
<div class="Hot_1">
<div class="Hot_1_pic"><img src="${pageContext.request.contextPath}/image/62d44838-f464-4c11-887c-9168645ae797.jpg" width="296" height="220">
</div>
<div class="review">
<p ><a href="https://order.mi.com/comment/commentDetail/comment_id/134163707">这箱子很好，外观漂亮，实用性强。很轻，有点软但不影响它的坚固。对于爱与旅游的我很合适</a></p>
<p class="author"> 来自于 子书雁 的评价 </p>
</div>
<div class="Hot_info">
<a href="//www.mi.com/capsuleearphone/">90分旅行箱 20寸</a>
<span >|</span>
<p >259元</p>
</div>
</div>
<div class="Hot_1">
<div class="Hot_1_pic"><img src="${pageContext.request.contextPath}/image/a5886d24-b443-4a15-88ca-5dbd43b72de3.jpg" width="296" height="220">
</div>
<div class="review">
<p ><a href="https://order.mi.com/comment/commentDetail/comment_id/134163707">先五星好评。再来说说小米空气净化器，北方的天气雾霾越来越常态，这就迫切需要一台性价比高的空气净化器</a></p>
<p class="author">  来自于 sddyboy 的评价 </p>
</div>
<div class="Hot_info">
<a href="//www.mi.com/capsuleearphone/">小米空气净化器2</a>
<span >|</span>
<p >599元</p>
</div>
</div>
<div class="Hot_2">
<div class="Hot_2_pic"><img src="${pageContext.request.contextPath}/image/54e35fdd-bc68-4a89-bad7-c9c3bb2fc6fe.jpg" width="296" height="220">
</div>
<div class="review">
<p ><a href="https://order.mi.com/comment/commentDetail/comment_id/134163707">包装很让人感动，式样也很可爱，做出的饭全家人都爱吃，超爱五星！</a></p>
<p class="author">  来自于 HZG 的评价  </p>
</div>
<div class="Hot_info">
<a href="//www.mi.com/capsuleearphone/">米家压力IH电饭煲</a>
<span >|</span>
<p >899元</p>
</div>
</div>
</div>
</div>
		<div class="Sub"><!--内容-->
		<div class="star-hd">
<h2 class="star-title">内容</h2>
<div class="Sub_bd">
<div class="Books" align="center">
<h class="Books_title">图书</h>
<a class="Books_turn iconfont"style="position:absolute;left:0px;top:41%;background-color:#c3c0bd;color:white;width: 20px;height: 24px;padding: 12px 0;font-size: 18px;line-height: 24px;"></a>
<a class="Books_turns  iconfont" style="position:absolute;right:0px;top:41%;;background-color:#c3c0bd;color:white;width: 20px;height: 24px;padding: 12px 0;font-size: 18px;line-height: 24px;"></a>

<ul class="books_ul" style="margin-left=0px">
	<li>
		<h4>哈利·波特与被诅咒的孩子</h4>
		<p class="price">“哈利·波特”第八个故事中文版震撼来袭！特别彩排版剧本！ </p>
		<p class="price" style="color: black; line-height: 34px;">29.37元 </p>
		<img src="${pageContext.request.contextPath}/image/5e5da924-84e3-4959-9e25-5891cdf30757 (1).png" />
	</li>
	<li>
		<h4>好吗好的</h4>
		<p class="price">畅销作家大冰2016年新书！讲给你听，好吗好的！ </p>
		<p class="price" style="color: black; line-height: 34px;">17.99元 </p>
		<img src="${pageContext.request.contextPath}/image/61e1385e-54de-48f3-8717-5e4f4b1cdd14.png" />
	</li>
	<li>
		<p class="price_last">海量好书，享受精品阅读时光<br>漂亮的中文排版，千万读者选择！</p>
		<p class="price_cliks">前往多看阅读</p>
		<img src="${pageContext.request.contextPath}/image/more-duokan.jpg" />
	</li>
	
</ul>
<ul class="bool_ulR" >
<li asd="1" class="lun_li"></li>
<li asd="2" class="lun_li"></li>
<li asd="3" class="lun_li"></li>
</ul>
</div>
<div class="MIUI" align="center">
	<h class="MIUI_title">MIUI 主题</h>
	<a class="MIUI_turn iconfont"style="position:absolute;left:0px;top:41%;background-color:#c3c0bd;color:white;width: 20px;height: 24px;padding: 12px 0;font-size: 18px;line-height: 24px;"></a>
	<a class="MIUI_turns  iconfont" style="position:absolute;right:0px;top:41%;;background-color:#c3c0bd;color:white;width: 20px;height: 24px;padding: 12px 0;font-size: 18px;line-height: 24px;"></a>

<ul class="MIUI_ul" >
	<li>
		<h4>米奇-有你有我</h4>
		<p class="price">米奇来啦！小米主题和迪士尼首度合作，打造精品迪士尼系列主题</p>
		<p class="price" style="color: black; line-height: 34px;">12米币</p>
		<img src="${pageContext.request.contextPath}/image/xmad_15106277789889_NVKse.png" />
	</li>
	<li>
		<h4>钢铁侠-科技控</h4>
		<p class="price">I'm Iron Man! 小米主题和迪士尼首度合作，打造精品漫威系列主题 </p>
		<p class="price" style="color: black; line-height: 34px;">12米币 </p>
		<img src="${pageContext.request.contextPath}/image/xmad_15106285428716_UgNzb.png" />
	</li>
	<li>
		<p class="price_last">众多个性主题百变锁屏与自由桌面<br>让你的手机与众不同！</p>
		<p class="price_cliks">前往MIUI主题市场</p>
		<img src="${pageContext.request.contextPath}/image/more-miui.jpg" />
	</li>
</ul>
<ul class="MIUI_ulR" >
<li asd="1" class="MIUI_li"></li>
<li asd="2" class="MIUI_li"></li>
<li asd="3" class="MIUI_li"></li>
</ul>
</div>
<div class="Game" align="center">
<h class="Game_title">游戏</h>
	<a class="Game_turn iconfont"style="position:absolute;left:0px;top:41%;background-color:#c3c0bd;color:white;width: 20px;height: 24px;padding: 12px 0;font-size: 18px;line-height: 24px;"></a>
	<a class="Game_turns  iconfont" style="position:absolute;right:0px;top:41%;;background-color:#c3c0bd;color:white;width: 20px;height: 24px;padding: 12px 0;font-size: 18px;line-height: 24px;"></a>
<ul class="Game_ul" >
	<li>
		<h4>小米枪战</h4>
		<p class="price">组好队  去跳伞！！</p>
		<p class="price" style="color: black; line-height: 34px;">免费</p>
		<img src="${pageContext.request.contextPath}/image/xmad_15094191317724_FNyjV.png" />
	</li>
	<li>
		<h4>米柚手游模拟器</h4>
		<p class="price">在电脑上玩遍小米所有手游</p>
		<p class="price" style="color: black; line-height: 34px;">免费</p>
		<img src="${pageContext.request.contextPath}/image/T1czW_BXCv1R4cSCrK.png" />
	</li>
	<li>
		<p class="price_last">免费下载海量的手机游戏<br>天天都有现金福利赠送</p>
		<p class="price_cliks">前往小米游戏商店</p>
		<img src="${pageContext.request.contextPath}/image/more-game.jpg" />
	</li>
</ul>
<ul class="Game_ulR" >
<li asd="1" class="Game_li"></li>
<li asd="2" class="Game_li"></li>
<li asd="3" class="Game_li"></li>
</ul>
</div>
<div class="App" align="center">
	<h class="App_title">应用</h>
	<a class="App_turn iconfont"style="position:absolute;left:0px;top:41%;background-color:#c3c0bd;color:white;width: 20px;height: 24px;padding: 12px 0;font-size: 18px;line-height: 24px;"></a>
	<a class="App_turns  iconfont" style="position:absolute;right:0px;top:41%;;background-color:#c3c0bd;color:white;width: 20px;height: 24px;padding: 12px 0;font-size: 18px;line-height: 24px;"></a>
<ul class="App_ul" >
	<li>
		<h4>Forest</h4>
		<p class="price">帮助您专心于生活中每个重要时刻</p>
		<p class="price" style="color: black; line-height: 34px;">免费</p>
		<img src="${pageContext.request.contextPath}/image/T1TkKvBCKv1R4cSCrK.png" />
	</li>
	<li>
		<h4>小米应用</h4>
		<p class="price">小米出品 必属精品</p>
		<p class="price" style="color: black; line-height: 34px;">免费</p>
		<img src="${pageContext.request.contextPath}/image/T15VZvB5Kv1R4cSCrK.png" />
	</li>
	<li>
		<p class="price_last">帮助小米手机和其他安卓手机用户<br>发现好用的安卓应用</p>
		<p class="price_cliks">前往小米应用商店</p>
		<img src="${pageContext.request.contextPath}/image/more-app.jpg" />
	</li>
</ul>
<ul class="App_ulR" >
<li asd="1" class="App_li"></li>
<li asd="2" class="App_li"></li>
<li asd="3" class="App_li"></li>
</ul>
</div>
</div>
</div>
</div>
		<div class="video"><!--视屏-->
			<div class="star-hd">
			<h2 class="star-title">视频</h2>
			<div class="video_title">
			<a class="more-link" href="//www.mi.com/video/">查看全部<i class="iconfont"></i></a></div>
		</div>
			<div class="video_bd">
				<ul class="video_list">
					<li class="video-item">
						<div class="video-pic">
							<img src="${pageContext.request.contextPath}/image/xmad_15053784427187_fmBed.jpg" width="296" height="180"/>
							<span class="video-play"><i class="iconfont"></i></span>
						<h3 >雷军与斯塔克打造全面屏2.0</h3>
						<p>一场关于小米MIX 2 极致工艺的巅峰对话</p>
						</div>
					</li>
					<li class="video-item">
						<div class="video-pic">
							<img src="${pageContext.request.contextPath}/image/xmad_15053796058409_uQmGq.jpg" width="296" height="180"/>
							<span class="video-play-2"><i class="iconfont"></i></span>
						<h3 >小米Note 3 与吴亦凡</h3>
						<p>看看小米Note 3 与吴亦凡谁更帅？</p>
						</div>
					</li>
					<li class="video-item">
						<div class="video-pic">
							<img src="${pageContext.request.contextPath}/image/xmad_15028039011215_UXSoK.jpg" width="296" height="180"/>
							<span class="video-play-3"><i class="iconfont"></i></span>
						<h3 >MIUI 9 理念视频.0</h3>
						<p>快如闪电，前所未有的流畅</p>
						</div>
					</li>
					<li class="video-item">
						<div class="video-pic">
							<img src="${pageContext.request.contextPath}/image/xmad_15053796919952_QBfTR.jpg" width="296" height="180"/>
							<span class="video-play-4"><i class="iconfont"></i></span>
						<h3 >拍人更美的背后故事</h3>
						<p>小米手机工程师采访视频</p>
						</div>
					</li>
				</ul>
			</div>
		</div>
</div>
	<div class="slogan ir">探索黑科技，小米为发烧而生</div>
</body>
</html>