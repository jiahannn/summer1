<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<script type="text/javascript" src="${pageContext.request.contextPath }/js/jquery-1.7.2.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/js/jquery-1.11.0.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/js/jquery.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/js/jquery-1.9.1.min.js"></script>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
	<link type="text/css" href="css/style下拉.css" rel="stylesheet" />
	<link rel="stylesheet" type="text/css" href="css/foot.css" />
	<link type="text/css" rel="stylesheet" href="css/body.css" />
	<link type="text/css" rel="stylesheet" href="css/bottom.css" />
	<link rel="stylesheet" type="text/css" href="css/address.css" />
		
		
<style type="text/css">
.province{
	height: 34px;
    padding: 6px 12px;
    font-size: 14px;
    line-height: 1.42857143;
    color: #555;
    background-color: #fff;
    background-image: none;
    width: 120px;
}

.city{
	height: 34px;
    padding: 6px 12px;
    font-size: 14px;
    line-height: 1.42857143;
    color: #555;
    background-color: #fff;
    background-image: none;
    width: 120px;
}

.area{
	height: 34px;

    font-size: 14px;
    line-height: 1.42857143;
    color: #555;   
    background-image: none;
    width: 120px;
}

select{
	text-rendering: auto;
    letter-spacing: normal;
    word-spacing: normal;
    text-indent: 0px;
    text-shadow: none;
    text-align: start;
}

.address_2{
	margin-top: 3px;
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
							<a href="">欢迎您,${sessionScope.username }</a>
						</div>
						<div class="head_2_two">
							<a class="" id="show_person">我的账户</a>

						</div>
						<div class="head_2_three">
							<a><img src="" />我的购物袋</a>
						</div>

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
			<div class="dht_link">
				<a href="main.jsp">主页</a><span>></span>
				<a href="person.jsp">我的账户</a>
				<span>></span>
				<a href="person.jsp">收货地址</a><span>></span>
			</div>
			<div class="address_main">
				<div class="address_body">
					<div class="person_head_img">
						<span class="head_img_name" id="username">欢迎 ${sessionScope.username }</span>
					</div>
					<div class="head_inner">
						<ul>
							<li>
								<a href="user.do?method=finduser">个人资料</a>
							</li>
							<li>
								<a href="address.jsp" id="add_address" style="color: #000;font-weight: 700;">收货地址</a>
							</li>
							<li>
								<a href="user.do?method=showorder&status=待支付">我的订单</a>
							</li>
							<li>
								<a href="user.do?method=showcollect">我的收藏</a>
							</li>
						</ul>
					</div>
					<div class="address_primary">
						<h2 class="primary_title">收货地址</h2>
						<div class="primary_head_edit">
							<h1>我的地址薄</h1>
						</div>
						<div class="tj_a">
							<a class="add_a" id="showModel">添加新地址</a>
						</div>
						
						<form action="user.do?method=addarea" method="post" onsubmit="return dosubmit()">
							<div id="modal" class="modal">
								<div class="modal-content">
									<div class="address_detail_page">
										<header class="modal-header">
											<h4>添加新地址</h4>
											<span class="close">×</span>
										</header>
										<div class="modal-body">
											<div class="address_left">
												<div class="address_left_name">
													<input type="text" name="username" id="a_username"
														placeholder="姓名*" style="width: 352px; height: 35px;" />
												</div>
												<div data-toggle="distpicker">
												  <select class="province" name="province"></select>
												  <select class="city" name="city"></select>
												  <select class="area" name="area"></select>
												</div>
											</div>
											<div class="address_right">
												<div class="address_phone">
													<input type="text" name="userphone" id="a_phone" placeholder="手机号码*"
														style="width: 352px; height: 35px;" />
												</div>
												<div class="address_xxdz">
													<input type="text" name="address" id="a_address"
														placeholder="详细地址*" style="width: 352px; height: 35px;" />
												</div>
												<div class="address_yb">
													<input type="text" name="zipcode" id="a_yb"
														placeholder="邮编*" style="width: 352px; height: 35px;" />
												</div>
											</div>
										</div>
										<footer class="modal-footer">
											<input type="submit" value="确认并保存" id="sure"/>
										</footer>
									</div>
								</div>
							</div>
						</form>
						
						
						<div class="address_detail">
							<ul class="address_list">
								<c:forEach items="${map.list }" var="address">
								<li class="address_li">
									<span style="display: none;">${address.addressid }</span>
									<div class="address_name">${address.username }</div>
									<div class="address_xq">
										<div class="address_1">
											<span class="sheng">${address.province }</span>
											<span class="city">${address.city }</span>
											<span class="area">${address.area }</span>
										</div>
										<div class="address_2">
											<span class="detail">${address.areadetail }</span>
											<span class="zipcode">邮编：${address.zipcode }</span>
											<span class="phone">手机号码：${address.userphone }</span>
										</div>
									</div>
									<div class="address_update">
										<a class="address_delete" href="user.do?method=deladdress&addressid=${address.addressid }">删除</a>
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
	<script type="text/javascript" src="${pageContext.request.contextPath }/js/首页下拉遮拦.js"></script>
	<!--跟随导航-->
	<script type="text/javascript" src="${pageContext.request.contextPath }/js/跟随导航.js"></script>
	<!-- 添加地址-->
	<script type="text/javascript" src="${pageContext.request.contextPath }/js/address.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/js/distpicker.data.js"></script><!-- 省市区级联 -->
<script type="text/javascript" src="${pageContext.request.contextPath }/js/distpicker.js"></script><!-- 省市区级联 -->


<script type="text/javascript">
var isCommitted = false;//表单是否已经提交标识，默认为false
function dosubmit(){
    if(isCommitted==false){
        isCommitted = true;//提交表单后，将表单是否已经提交标识设置为true
        return true;//返回true让表单正常提交
    }else{
        return false;//返回false那么表单将不提交
    }
}




</script>
</html>
