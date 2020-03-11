<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<script src="https://cdn.staticfile.org/jquery/1.10.2/jquery.min.js"
	type="text/javascript" charset="utf-8"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath }/js/jquery-1.7.2.min.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath }/js/jquery-1.11.0.min.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath }/js/jquery.min.js"></script>


<!--轮播-->
<script type="text/javascript"
	src="${pageContext.request.contextPath }/js/轮播.js"></script>

<head>
<title>首页导航栏</title>
<link type="text/css" href="css/style下拉.css" rel="stylesheet" />
<link rel="stylesheet" type="text/css" href="css/foot.css" />
<link type="text/css" rel="stylesheet" href="css/轮播.css" />
<link type="text/css" rel="stylesheet" href="css/body.css" />
<link type="text/css" rel="stylesheet" href="css/bottom.css" />
<link rel="stylesheet" type="text/css" href="css/login.css" />
<style type="text/css">
a:hover{
	cursor: pointer;
}
.bo_img {
	text-align: center;
	width: 100%;
}

.bo_xs {
	text-align: center;
}

.bo_p1 {
	font-size: 16px;
	font-weight: 300;
	padding-top: 8px;
	font-family: montserrat regular, sans-serif, microsoft yahei;
}

.bo_p2 {
	font-size: 13px;
	font-weight: 300;
	padding-top: 8px;
	font-family: montserrat regular, sans-serif, microsoft yahei;
}

.bo_p3 {
	font-size: 14px;
	padding-top: 8px;
	font-family: montserrat regular, sans-serif, microsoft yahei;
}

.bo_xs a {
	display: block;
	line-height: 30px;
	font-size: 14px;
	width: 80px;
	height: 30px;
	background: #000;
	color: #fff;
	margin: auto;
	margin-top: 8px;
	border: 1px solid #ccc;
}

#head_reg {
	display: block;
}

#head_wel {
	display: none;
}
</style>

</head>
<body>
	<div class="content">
		<div class="nav_menu">
			<div class="head">
				<div class="head_1">
				<!-- <a href="serach.do?method=xxx">点击</a> -->		
					<img src="img/logo.png" width="240px" height="54px"
						style="padding-top: 20px;" />
				</div>
				<div id="head_reg" class="head_2">
					<div class="head_2_one">
						<a href="regist.jsp">注册</a>
					</div>
					<div class="head_2_two">
						<a class="" id="showModel">登录</a>

					</div>
					<div class="head_2_three">
						<a class="glyphicon glyphicon-shopping-cart" href="shopbag.jsp">我的购物袋</a>
					</div>
				</div>
				<div id="head_wel" class="head_2">
					<div class="head_2_one">
						<a class="wel">欢迎您,${sessionScope.username }</a>
						<a id="quit" href="user.do?method=quit">×</a>
					</div>
					<div class="head_2_two">
						<a class="" id="show_person" href="user.do?method=finduser">我的账户</a>

					</div>
					<div class="head_2_three">
						<a class="glyphicon glyphicon-shopping-cart" href="goods.do?method=findshopcar">我的购物袋</a>
					</div>
				</div>

				<div id="modal" class="modal">
					<form action="user.do?method=login" method="post">
						<div class="modal-content">
							<header class="modal-header">
								<h4>登录</h4>
								<span class="close">×</span>
							</header>
							<div class="modal-body">
								<p style="height: 90px;margin-top: 80px;">
									<input type="text" name="phone" id="username"
										placeholder="*手机号" style="width: 250px; height: 30px;" />
								</p>
								<p style="height: 90px;">
									<input class="input_1" type="password" name="password"
										id="password" placeholder="*密码"
										style="width: 250px; height: 30px;" />
								</p>
							</div>
							<footer class="modal-footer">
								<button id="cancel">取消</button>
								<button id="sure">登录</button>
							</footer>
						</div>
					</form>
				</div>
			</div>
			<div class="nav">
				<div class="main">
					<a href="">首页</a>
				</div>
				<div class="list" id="navlist">
					<ul id="navfouce">
						<li class="xiala"><a href="">最新资讯</a></li>
						<li class="xiala"><a href="">彩妆专区</a></li>
						<li class="xiala"><a href="">护肤专区</a></li>
						<li class="xiala"><a href="">香水专区</a></li>
						<li class="xiala"><a href="">明星产品</a></li>
						<li class="xiala"><a href="">官网礼遇</a></li>
					</ul>
				</div>
				<div class="serach_show">
					<input type="text" name="" id="serach" placeholder="搜索" class="search" /> 
					<input type="button" name="" id="serach_1" class="search_btn" />
				</div>
				<div class="box" id="navbox"
					style="height:0px;opacity:0;overflow:hidden;">
					<div class="cont" style="display:none; ">
						<ul class="sublist clearfix">
							<li>
								<p class="mcate-item-bd">
									<a href="">新品上市</a>
								</p>
								<p class="mcate-item-bd">
									<a href="">当季推荐</a>
								</p>
								<p class="mcate-item-bd">
									<a href="">全部产品</a>
								</p>
							</li>
						</ul>
					</div>

					<div class="cont" style="display:none;">
						<ul class="sublist clearfix">
							<li>
								<h3 class="mcate-item-hd">
									<a href="find.do?method=findmakelip&makeuptype=唇部"><span>唇部</span></a>
								</h3>
								<p class="mcate-item-bd">
									<a href="find.do?method=findlip&liptype=唇釉">唇釉</a>
								</p>
								<p class="mcate-item-bd">
									<a href="find.do?method=findlip&liptype=唇膏">唇膏</a>
								</p>
							</li>
							<li>
								<h3 class="mcate-item-hd">
									<a href="find.do?method=findmakeface&makeuptype=面部"><span>面部</span></a>
								</h3>
								<p class="mcate-item-bd">
									<a href="find.do?method=findface&facetype=胭脂">胭脂</a>
								</p>
								<p class="mcate-item-bd">
									<a href="find.do?method=findface&facetype=粉底液">粉底液</a>
								</p>
								<p class="mcate-item-bd">
									<a href="">遮瑕</a>
								</p>
								<p class="mcate-item-bd">
									<a href="find.do?method=findface&facetype=洁面">面部清洁</a>
								</p>
								<p class="mcate-item-bd">
									<a href="">底妆与隔离</a>
								</p>
							</li>
							<li>
								<h3 class="mcate-item-hd">
									<a href="find.do?method=findmakeeye&makeuptype=眼部"><span>眼部</span></a>
								</h3>
								<p class="mcate-item-bd">
									<a href="">眉笔</a>
								</p>
								<p class="mcate-item-bd">
									<a href="">眼线</a>
								</p>
								<p class="mcate-item-bd">
									<a href="">睫毛膏</a>
								</p>
								<p class="mcate-item-bd">
									<a href="">眼影</a>
								</p>
							</li>
							<li>
								<h3 class="mcate-item-hd">
									<span>美容工具</span>
								</h3>
								<p class="mcate-item-bd">
									<a href="">化妆刷</a>
								</p>
							</li>
							<li>
								<h3 class="mcate-item-hd">
									<span>发现更多</span>
								</h3>
								<p class="mcate-item-bd">
									<a href="">红管唇釉</a>
								</p>
								<p class="mcate-item-bd">
									<a href="">黑管唇釉</a>
								</p>
							</li>
						</ul>
					</div>
					<div class="cont" style="display:none;">
						<ul class="sublist clearfix">
							<li>
								<p class="mcate-item-bd">
									<a href="">新品上市</a>
								</p>
								<p class="mcate-item-bd">
									<a href="">当季推荐</a>
								</p>
								<p class="mcate-item-bd">
									<a href="">全部产品</a>
								</p>
							</li>
							<li>
								<p class="mcate-item-bd">
									<a href="">新品上市</a>
								</p>
								<p class="mcate-item-bd">
									<a href="">当季推荐</a>
								</p>
								<p class="mcate-item-bd">
									<a href="">全部产品</a>
								</p>
							</li>
						</ul>
					</div>
					<div class="cont" style="display:none;">
						4<br /> 3<br /> 4
					</div>
					<div class="cont" style="display:none;">5</div>
					<div class="cont" style="display:none;">
						6<br /> 3<br /> 3
					</div>
				</div>
			</div>
		</div>

		<!--轮播-->
		<div class="banner" id="J_bg_ban">
			<ul>
				<li><a href="#"><img src="img/kv24-1920-636.jpg" /></a></li>
				<li><a href="#"><img src="img/kv30-1920-636.jpg" /></a></li>
				<li><a href="#"><img src="img/GACKV2018022701_1920x636.jpg" /></a></li>
				<li><a href="#"><img src="img/GACKV2018062801_1920x636.jpg" /></a></li>
				<li><a href="#"><img src="img/kv26-1920-636.jpg" /></a></li>
				<li><a href="#"><img src="img/GACKV20170821204_1920x636.jpg" /></a></li>
				<li><a href="#"><img src="img/kv29-1920-636.jpg" /></a></li>
				
			</ul>
			<div class="indicator" id="J_bg_indicator"></div>
			<div class="ban-btn clearfloat" id="J_bg_btn">
				<a class="next-btn fr" href="javascript:">&gt;</a><a
					class="prev-btn fl" href="javascript:">&lt;</a>
			</div>
		</div>

		<!--
	描述：body 
-->
		<div class="menu_body" id="">
			<ul class="ul_first" id="">
			
			
				<li class="li_first">
					<h2 class="h2_1"><span>彩妆热卖</span></h2>
					<div class="body_1">
						<div class="body_1_1">			
						</div>
						<div class="body_1x">
							<div class="rm2">
								<ul>
									<li><a class="rlip"><img id="img1" src=""></a></li>
								</ul>
							</div>
						</div>
						<div class="body_2x">
							<a href="" class="r2lip"></a>
						</div>
						<h3><a href="" title="GIORGIO ARMANI LIP MAESTRO" class="r3lip"></a></h3>
						<div class="start">
							<span class="start1">★</span>
							<span class="start1">★</span>
							<span class="start1">★</span>
							<span class="start1">★</span>
							<span class="start1">★</span>
						</div>
						<div class="price">
							<div class="price_1"><a href="" class="r4lip"></a></div>
							<div class="price_2"><a href="">立即购买</a></div>
						</div>
						
					</div>
				</li>
				
				<li class="li_first">
					<h2 class="h2_1">
						<span>彩妆热卖</span>
					</h2>
					<div class="body_1">
						<div class="body_1_1"></div>
						<div class="body_1x">
							<div class="rm2">
								<ul>
									<li><a class="f"><img id="img2" src="" /></a></li>
								</ul>
							</div>
						</div>
						<div class="body_2x">
							<a class="f1" href=""></a>
						</div>
						<h3>
							<a class="f2" href="" title="GIORGIO ARMANI LIP MAESTRO"></a>
						</h3>
						<div class="start">
							<span class="start1">★</span> <span class="start1">★</span> <span
								class="start1">★</span> <span class="start1">★</span> <span
								class="start1">★</span>
						</div>
						<div class="price">
							<div class="price_1">
								<a class="f3" href=""></a>
							</div>
							<div class="price_2">
								<a href="">立即选购</a>
							</div>
						</div>
					</div>
				</li>
				<li class="li_first">
					<h2 class="h2_1">
						<span>彩妆热卖</span>
					</h2>
					<div class="body_1">
						<div class="body_1_1"></div>
						<div class="body_1x">
							<div class="rm2">
								<ul>
									<li><a class="g"><img id="img3" src="" /></a></li>
								</ul>
							</div>
						</div>
						<div class="body_2x">
							<a class="g1" href=""></a>
						</div>
						<h3>
							<a class="g2" href="" title="GIORGIO ARMANI LIP MAESTRO"></a>
						</h3>
						<div class="start">
							<span class="start1">★</span> <span class="start1">★</span> <span
								class="start1">★</span> <span class="start1">★</span> <span
								class="start1">★</span>
						</div>
						<div class="price">
							<div class="price_1">
								<a class="g3" href=""></a>
							</div>
							<div class="price_2">
								<a href="">立即选购</a>
							</div>
						</div>
					</div>
				</li>
	
				
			</ul>

		</div>


		<div class="bottom">
			<div id="bottom_pic" style="width: 987px;height: 826px; float: left;">
				<div id="b_pic1"
					style="width: 987px;height: 826px; background-image:url(img/hp-mosaic-content-IRIS-CELADON-1.jpg); display:block;">
					<div id="b_pic2"
						style="width: 100%;height: 100%;background: #81c0ab;display:none;">
						<div class="one">
							<div class="one_a">
								<a href="">阿玛尼寄情女士香水系列</a>
							</div>
							<div class="two_a">
								<a href="">以自然之名 诠释全新愉悦</a>
							</div>
							<div class="thr_a">
								<a href="">了解详情</a>
							</div>
						</div>


					</div>
				</div>
			</div>
			<div class="bottom_vedio">
				<div id="b_vedio2"
					style="width: 531px;height: 320px; background: #151515;">
					<video id="1" width="100%" height="100%" controls="controls"
						object-fit="fill";>
						<source src="img/阿玛尼寄情女士香水系列.mp4" type="audio/mp4"></source>
					</video>
				</div>
				<div class="" style="width: 531px; height: 526px;">
					<div class="bo_img">
						<img src="img/GAC20002.png"
							style="width: 430px; height: 370px;text-align: center;" />
					</div>
					<div class="bo_xs">
						<p class="bo_p1">寄情女士香水</p>
						<p class="bo_p2">水生茉莉之调，携手一抹柑橘清新</p>
						<p class="bo_p3">￥560/30ml</p>
						<a href="goods.do?method=">立即购买</a>
					</div>
				</div>
			</div>
		</div>


		<div class="foot">
			<div class="foot_1">
				<div class="foot_dec">
					<p class="p1">
						DETAIL
						</p1>
					<p class="p2">FAR-EASTERN REFINEMENT MEETS ITALIAN NATURALNESS</p>
					<p class="p3">当东方优雅遇上意大利的自然主义</p>
					<a href="">>查看更多</a>
				</div>
			</div>
			<div class="foot_2">
				<div class="foot_a1">
					<img src="" />
					<p>100%官方正品保证</p>
				</div>
				<div class="foot_a2"></div>
				<div class="foot_a3"></div>
			</div>
		</div>



	</div>

</body>
<!--鼠标悬浮-->
<script type="text/javascript"
	src="${pageContext.request.contextPath }/js/hover.js"></script>
<!--下拉遮拦-->
<script type="text/javascript"
	src="${pageContext.request.contextPath }/js/首页下拉遮拦.js"></script>
<!--登录模态框-->
<script type="text/javascript"
	src="${pageContext.request.contextPath }/js/login_model.js"></script>
<!--跟随导航-->
<script type="text/javascript"
	src="${pageContext.request.contextPath }/js/跟随导航.js"></script>

<script type="text/javascript">
	window.onload = function() {
		x = $(".wel").html();
		if (x == "欢迎您,") {
			$("#head_reg").css("display", "block");
			$("#head_wel").css("display", "none");
		} else {
			$("#head_wel").css("display", "block");
			$("#head_reg").css("display", "none");
		}      
	}
	
   
	$(document).ready(function(){ 
		
		$.ajax({
			url:"goods.do?method=hotgoods",
			type:"get",
			contentType: "application/x-www-form-urlencoded;charset=utf-8",
			dataType:"json",
            success:function(result){           	
          //  	alert(result[0].hotid);
            	
            	var json = result;
            	
            	var x = json[0].hotname;
            	$(".r2lip").html(x);
            	
            	var x1 = json[0].hotname1
            	$(".r3lip").html(x1);
            	var x2 = json[0].hotprice
            	$(".r4lip").html("￥"+x2);
            	$("#img1").attr("src","img/"+json[0].hotpic);
            	
            	var f1 = json[1].hotname
            	$(".f1").html(f1);
            	var f2 = json[1].hotname1
            	$(".f2").html(f2);
            	var f3 = json[1].hotprice;
            	$(".f3").html("￥"+f3);
            	$("#img2").attr("src","img/"+json[1].hotpic);
            	
            	var g1 = json[2].hotname
            	$(".g1").html(g1);
            	var g2 = json[2].hotname1;
            	$(".g2").html(g2);
            	var g3 = json[2].hotprice
            	$(".g3").html("￥"+g3);
            	$("#img3").attr("src","img/"+json[2].hotpic);
            	
            	$(".rlip").click(function(){
            		var a = json[0].hotname;
            		
            		location="goods.do?method=findbyname&goodsname="+a;
            		})
            		
            	$(".f").click(function(){
            		var a1 = json[1].hotname;
            		
            		location="goods.do?method=findbyname&goodsname="+a1;
            	})
            	
            	$(".g").click(function(){
            		var a2 = json[2].hotname;
            	
            		location="goods.do?method=findbyname&goodsname="+a2;
            	})
            }
		
         });
		
	});
	
	
	$("#serach_1").click(function(){
		var keyword = $("#serach").val();
		location = "serach.do?method=serach&keyword="+keyword;
	})
	
	

	

</script>


