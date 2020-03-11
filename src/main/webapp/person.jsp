<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<script type="text/javascript" src="${pageContext.request.contextPath }/js/jquery.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/js/jquery-1.7.2.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/js/jquery-1.11.0.min.js"></script>

<html>
	<head>
		<meta charset="UTF-8">
		<title></title>
		<link type="text/css" href="css/style下拉.css" rel="stylesheet" />
		<link rel="stylesheet" type="text/css" href="css/foot.css" />
		<link type="text/css" rel="stylesheet" href="css/body.css" />
		<link type="text/css" rel="stylesheet" href="css/bottom.css" />
		<link rel="stylesheet" type="text/css" href="css/person1.css" />
		
	<style type="text/css">
		.per_xx p{
			margin-left: 10px;
			margin-top: 12px;
			text-align: left;
		}
		
		.per_update{
			margin-top: 15px;
			margin-left: 10px;
		}
	</style>	
	</head>

	<body>
		<div class="content">
			<div class="nav_menu">
				<div class="head">
					<div class="head_1">
						<img src="img/logo.png" width="240px" height="54px" style="padding-top: 20px;" />
					</div>
					<div class="head_2">
						<div class="head_2_one">
							<a href="user.do">欢迎您,${sessionScope.username }</a>
						</div>
						<div class="head_2_two">
							<a class="" id="show_person">我的账户</a>

						</div>
						<div class="head_2_three">
							<a href="goods.do?method=findshopcar">我的购物袋</a>
						</div>
					</div>
				</div>
				<div class="nav">
					<div class="main">
						<a href="main.jsp">首页</a>
					</div>
					<div class="list" id="navlist">
						<ul id="navfouce">
							<li class="xiala">
								<a href="">最新资讯</a>
							</li>
							<li class="xiala">
								<a href="">彩妆专区</a>
							</li>
							<li class="xiala">
								<a href="">护肤专区</a>
							</li>
							<li class="xiala">
								<a href="">香水专区</a>
							</li>
							<li class="xiala">
								<a href="">明星产品</a>
							</li>
							<li class="xiala">
								<a href="">官网礼遇</a>
							</li>
						</ul>
					</div>
					<div class="serach_show">
						<input type="text" name="" id="search" placeholder="搜索" class="search" />
						<input type="button" name="" id="search_1" class="search_btn" />
						<!--<button class="search">
					<span style="">搜索</span>
					<!--<img src="img/timg.jpg" style="width: 20px;height: 20px; line-height: 50px; float: right;"/>
				</button>-->
					</div>
					<div class="box" id="navbox" style="height:0px;opacity:0;overflow:hidden;">
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
									<h3 class="mcate-item-hd"><span>美容工具</span></h3>
									<p class="mcate-item-bd">
										<a href="">化妆刷</a>
									</p>
								</li>
								<li>
									<h3 class="mcate-item-hd"><span>发现更多</span></h3>
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
							4<br /> 3
							<br /> 4
						</div>
						<div class="cont" style="display:none;">
							5
						</div>
						<div class="cont" style="display:none;">
							6<br /> 3
							<br /> 3
						</div>
					</div>
				</div>
			</div>
			<div class="dht_link">
				<a href="main.jsp">主页</a><span>></span>
				<a href="person.jsp">我的账户</a>
				<span>></span>
				<a href="person.jsp">个人资料</a><span>></span>
			</div>
			<div class="person_main">
				<div class="person_body">
					<div class="person_head_img">
						<span class="head_img_name" id="username">欢迎  ${sessionScope.username }</span>
					</div>
					<div class="head_inner">
						<ul>
							<li>
								<a href="person.jsp" style="color: #000; font-weight: 700;">个人资料</a>
							</li>
							<li>
								<a href="pay.do?method=showaddress" id="add_address">收货地址</a>
							</li>
							<li>
								<a href="user.do?method=showorder&status=待支付">我的订单</a>
							</li>
							<li>
								<a href="user.do?method=showcollect">我的收藏</a>
							</li>
						</ul>
					</div>
					<div class="person_primary">
						<h2 class="primary_title">个人资料</h2>
						<div class="primary_head_edit">
							<h1>我的信息</h1>
						</div>
						
						<div class="per_xx">
							<p class="yhm">用户名：<span id="uname">${user.username }</span></p>
							<p class="yhsj">手机号码：<span id="uphone">${user.phone }</span></p>
							<p class="youx">邮箱：<span id="umail">${user.email }</span></p>
							<p class="birthday">生日：<span id="birth">${user.birthday }</span></p>
						</div>
						
						<div class="per_update">
							<button style="width: 90px; height: 30px;">修改密码</button>
							<button id="showModel" style="width: 95px; height: 30px;">编辑我的信息</button>
						</div>
					

						<form action="user.do?method=update" method="post">
							<div id="modal" class="modal">
								<div class="modal-content">
									<div class="person_detail_page">
										<header class="modal-header">
											<h4>编辑我的信息</h4>
											<span class="close">×</span>
										</header>
										<div class="modal-body">
											<div class="person_sex">
												<span>
													性别 &nbsp;&nbsp; <input type="radio" name="sex" id="sex" value="男士" checked="checked"/> 男士
																	<input type="radio" name="sex" id="sex" value="女士" /> 女士
												</span>
											</div>
											<div class="person_detail">
												<div class="person_name">
													<input type="text" name="username" id="username" placeholder="姓名*" />
												</div>
												<div class="person_birth">
													<input type="date" name="birthday" id="birthday" value="生日*" placeholder="生日*" />
												</div>
											</div>
											<div class="person_detail">
												<div class="person_phone">
													<input type="text" name="phone" id="phone" placeholder="手机*" />
												</div>
												<div class="person_mail">
													<input type="text" name="username" id="username1" placeholder="邮箱*" />
												</div>
											</div>
											<div class="person_detail">
												<div class="person_yzm">
													<input type="text" name="" id="" placeholder="验证码*" />
													<span style="cursor:pointer;">
														<img src="check.do" onclick="this.src='check.do?'+new Date().getTime();" style="width: 130px; height: 37px"/>
													</span>
												</div>
												<div class="person_dxyzm">
													<input type="text" name="" id="" placeholder="短信验证码*" />
													<input type="button" name="" id="" value="获取短信验证码" style="background: #000; color: #fff;" />
												</div>
											</div>
										</div>
										<footer class="modal-footer">
											<button id="sure">保存修改</button>
										</footer>
									</div>
								</div>
							</div>
						</form>

					</div>
				</div>

			</div>

		</div>
	</body>

	<!--下拉遮拦-->
	<script type="text/javascript" src="${pageContext.request.contextPath }/js/首页下拉遮拦.js"></script>
	<!--跟随导航-->
	<script type="text/javascript" src="${pageContext.request.contextPath }/js/跟随导航.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath }/js/person.js" ></script>
	
<script type="text/javascript">
	$(document).ready(function(){
		$.ajax({
			url:"user.do?method=finduser",
			type:"get",
			contentType: "application/x-www-form-urlencoded;charset=utf-8",
			dataType:"text",
	        success:function(data){
	        	
	        }
	    });
	})
</script>
</html>