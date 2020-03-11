<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>



<link rel="stylesheet" type="text/css" href="css/login.css" />
<link type="text/css" href="css/style下拉.css" rel="stylesheet" />

<style>
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
						<a class="wel">欢迎您,${sessionScope.username }</a>
					</div>
					<div class="head_2_two">
						<a class="" id="show_person" href="person.jsp">我的账户</a>

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
					<input type="text" name="" id="search" placeholder="搜索" class="search" /> 
					<input type="button" name="" id="search_1"
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
									<a href="find.do?method=findmakelip&makeuptype=lip"><span>唇部</span></a>
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
									<a href="find.do?method=findmakeface&makeuptype=face"><span>面部</span></a>
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
									<a href="find.do?method=findmakeeye&makeuptype=eye"><span>眼部</span></a>
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
	
	

</script>