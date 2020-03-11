<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<script src="https://cdn.staticfile.org/jquery/1.10.2/jquery.min.js"
	type="text/javascript" charset="utf-8"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath }/js/jquery-1.7.2.min.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath }/js/jquery-1.11.0.min.js"></script>
<html>
<head>
<title></title>
<link type="text/css" href="css/style下拉.css" rel="stylesheet" />
<link rel="stylesheet" type="text/css" href="css/login.css" />
<link rel="stylesheet" type="text/css" href="css/showsp.css" />
<style type="text/css">
a:hover {
	cursor: pointer;
}

#head_reg {
	display: block;
}

#head_wel {
	display: none;
}


</style>

</head>

<div class="content">
	<div class="nav_menu">
		<div class="head">
			<div class="head_1">
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
					<a class="wel">欢迎您,${sessionScope.username }</a> <span id="u_id"
						style="display: none;">${sessionScope.userid }</span>
				</div>
				<div class="head_2_two">
					<a class="" id="show_person" href="person.jsp">我的账户</a>

				</div>
				<div class="head_2_three">
					<a class="glyphicon glyphicon-shopping-cart"
						href="goods.do?method=findshopcar">我的购物袋</a>
				</div>
			</div>

			<div id="modal" class="modal">
				<form action="" method="post">
					<div class="modal-content">
						<header class="modal-header">
							<h4>登录</h4>
							<span class="close">×</span>
						</header>
						<div class="modal-body">
							<p>
								<input type="text" name="phone" id="phone" placeholder="*手机号"
									style="width: 250px; height: 30px;" />
							</p>
							<p>
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
				<a href="main.jsp">首页</a>
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
				<input type="text" name="" id="search" placeholder="搜索"
					class="search" /> <input type="button" name="" id="search_1"
					class="search_btn" />
				<!--<button class="search">
					<span style="">搜索</span>
					<!--<img src="img/timg.jpg" style="width: 20px;height: 20px; line-height: 50px; float: right;"/>
				</button>-->
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
								<a href="find.do?method=findlip"><span>唇部</span></a>
							</h3>
							<p class="mcate-item-bd">
								<a href="find.do?method=findliptype&liptype=唇釉">唇釉</a>
							</p>
							<p class="mcate-item-bd">
								<a href="find.do?method=findliptype&liptype=唇膏">唇膏</a>
							</p>
						</li>
						<li>
							<h3 class="mcate-item-hd">
								<a href="find.do?method=findface"><span>面部</span></a>
							</h3>
							<p class="mcate-item-bd">
								<a href="">腮红</a>
							</p>
							<p class="mcate-item-bd">
								<a href="">粉底液</a>
							</p>
							<p class="mcate-item-bd">
								<a href="">遮瑕</a>
							</p>
							<p class="mcate-item-bd">
								<a href="">面部清洁</a>
							</p>
							<p class="mcate-item-bd">
								<a href="">底妆与隔离</a>
							</p>
						</li>
						<li>
							<h3 class="mcate-item-hd">
								<span>眼部</span>
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
					4<br /> 3 <br /> 4
				</div>
				<div class="cont" style="display:none;">5</div>
				<div class="cont" style="display:none;">
					6<br /> 3 <br /> 3
				</div>
			</div>
		</div>
	</div>

	<div class="shop_main">
		<div class="dht_link">
			<a href="main.jsp">主页</a><span>></span><span>搜索结果</span>
			
		</div>
		<div class="secondary">
			<div class="section">
				<span class="section_1">产品筛选</span> <span class="section_2"></span>
				<span class="section_3"></span>
			</div>
			<div class="secondary_2">
				<div class="js">
					<select name="" class="px" id="sort" onchange="rank()">
						<option value="paixu">排序</option>
						<option value="moren">按默认排序</option>
						<option value="tall">按价格从高到低</option>
						<option value="low">按价格从低到高</option>
					</select>
				</div>
				<div class="section_right">
					<ul class="ul_first" id="">
						<c:forEach items="${map.list }" var="goods" varStatus="sta">

							<li class="li_first">
								<h2 class="h2_1">
									<span>热卖${sta.index+1 }</span>
								</h2>
								<div class="body_1">
									<div class="body_1_1"></div>
									<div class="body_1x">
										<div class="rm2">
											<ul>
												<li>
													<a href="goods.do?method=findbyname&goodsname=${goods.facename }" class="rlip">
														<img id="#img${goods.faceid }"src="img/${goods.facepic }">
													</a>
												</li>
											</ul>
										</div>
									</div>
									<div class="body_2x">
										<a href="" class="r2lip">${goods.facename }</a>
									</div>
									<h3>
										<a href="" title="GIORGIO ARMANI LIP MAESTRO" class="r3lip">${goods.facename1 }</a>
									</h3>
									<div class="start">
										<span class="start1">★</span> <span class="start1">★</span> <span
											class="start1">★</span> <span class="start1">★</span> <span
											class="start1">★</span>
									</div>
									<div class="price">
										<div class="price_1">
											<a href="" class="r4lip">￥${goods.faceprice }</a>
										</div>
										<div class="price_2">
											<a href="">立即选购</a>
										</div>
									</div>
								</div>
							</li>
						</c:forEach>

					</ul>
				</div>
			</div>

		</div>

	</div>
</div>

</body>
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
	var close = document.getElementsByClassName('close')[0];
	close.addEventListener('click', function() {
		modal.style.display = "none";
	});

	window.onload = function() {
		x = $("#u_id").html();
		if (x == "") {
			$("#head_reg").css("display", "block");
			$("#head_wel").css("display", "none");
		} else {
			$("#head_wel").css("display", "block");
			$("#head_reg").css("display", "none");
		}

	};

	$("#sure").click(function(){
		var phone = $("#phone").val();
		var password = $("#password").val();
		jQuery.ajax({
			type: "POST",
			url: "user.do?method=login1&phone="+phone+"&password="+password,
			contentType: "application/x-www-form-urlencoded;charset=utf-8",
			success: function(data){
				if(data=="ture"){
					$("#head_wel").css("display", "block");
					$("#head_reg").css("display", "none");
					$(".wel").html("欢迎您,"+data.goods_name);
				}
			}
		});

	})
	
	function rank(){
		var rank = $("#sort").val();
		
		if(rank=="moren"){
			location ="find.do?method=findgoods&goodstype="+face;
		}
		if(rank=="tall"){
			location = "find.do?method=findtall&goodstype="+face;
		}
		if(rank=="low"){
			location ="find.do?method=findlow&goodstype="+face;
		}
	}
</script>

</html>