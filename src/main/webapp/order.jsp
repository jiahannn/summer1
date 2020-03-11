<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<script type="text/javascript"
	src="${pageContext.request.contextPath }/js/jquery.min.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath }/js/jquery-1.7.2.min.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath }/js/jquery-1.11.0.min.js"></script>



<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<title></title>
<link type="text/css" href="css/style下拉.css" rel="stylesheet" />
<link rel="stylesheet" type="text/css" href="css/foot.css" />
<link type="text/css" rel="stylesheet" href="css/body.css" />
<link type="text/css" rel="stylesheet" href="css/bottom.css" />
<link rel="stylesheet" type="text/css" href="css/login.css" />
<link rel="stylesheet" type="text/css" href="css/person.css" />
<link rel="stylesheet" type="text/css" href="css/order.css" />
<style type="text/css">
body {
	-webkit-font-smoothing: antialiased;
}

.order_detail {
	font: 12px montserrat light, sans-serif, microsoft yahei;
}

.order {
	background: #000;
	color: #fff;
	height: 58px;
	width: 219px;
}

a:hover {
	text-decoration: underline;
	cursor: pointer;
}

.modal{
    display: none;
    width: 100%;
    height: 100%;
    position: fixed;
    left: 0;
    top: 0;
    z-index: 1000;
    background-color: rgba(0,0,0,0.2);
}
.modal-content{
    display: flex;
    flex-flow: column nowrap;
    justify-content: space-between;
    width: 920px;
   /* max-width: 1000px;*/
    height: 530px;
   /* max-height: 550px;*/
    margin: 100px auto;
    /*border-radius:10px;*/
    background-color:#fff;
    -webkit-animation: zoom 0.6s;
    animation: zoom 0.6s;
    resize: both;
    overflow: auto;
}
@-webkit-keyframes zoom{
    from {-webkit-transform: scale(0)}
    to {-webkit-transform: scale(1)}
}
@keyframes zoom{
    from {transform: scale(0)}
    to {transform: scale(1)}
}

.modal-header{
    box-sizing:border-box;
    /*border-bottom:1px solid #ccc;*/
    height: 100px;
    display: flex;
    line-height: 100px;
    justify-content: space-between;
    align-items: center;
}
.close{
    color: #b7b7b7;
    font-size: 30px;
    font-weight: bold;
    margin-right: 20px;
    transition: all 0.3s;
}
.close:hover, .close:focus{
    color: #95b4ed;
    text-decoration: none;
    cursor: pointer;
}
</style>
</head>

<body>
	<div class="content">
		<div class="nav_menu">
			<div class="head">
				<div class="head_1">
					<img src="img/logo.png" width="240px" height="54px"
						style="padding-top: 20px;" />
				</div>
				<div class="head_2">
					<div class="head_2_one">
						<a href="user.do">欢迎您,${sessionScope.username }</a>
					</div>
					<div class="head_2_two">
						<a href="user.do?method=finduser" id="show_person">我的账户</a>

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
						4<br /> 3 <br /> 4
					</div>
					<div class="cont" style="display:none;">5</div>
					<div class="cont" style="display:none;">
						6<br /> 3 <br /> 3
					</div>
				</div>
			</div>
		</div>
		<div class="dht_link">
			<a href="main.jsp">主页</a><span>></span> <a
				href="user.do?method=finduser">我的账户</a> <span>></span> <a
				href="collection.jsp">我的收藏</a><span>></span>
		</div>
		<div class="collect_main">
			<div class="collect_body">
				<div class="person_head_img">
					<span class="head_img_name" id="username">欢迎
						${sessionScope.username }</span>
				</div>
				<div class="head_inner">
					<ul>
						<li><a href="user.do?method=finduser">个人资料</a></li>
						<li><a href="pay.do?method=showaddress" id="add_address">收货地址</a></li>
						<li><a href="order.jsp" style="color: #000; font-weight: 700;">我的订单</a></li>
						<li><a href="user.do?method=showcollect">我的收藏</a></li>
					</ul>
				</div>

				<div class="collect_primary">
					<h2 class="primary_title">我的订单</h2>
					<div class="p_orders_tabs">
						<ul class="history_orders_menu">
							<li class="menu_item ">
								<div class="line">
									<a id="order1" href="user.do?method=showorder&status=待支付">未完成订单(<span
										id="unfinish"></span>)
									</a>
								</div>
							</li>
							<li class="menu_select">
								<div class="line">
									<a id="order2" href="user.do?method=showorder&status=已支付">已完成订单(<span
										id="finish"></span>)
									</a>
								</div>
							</li>
						</ul>
					</div>
					<div class="order_detail">
						<table>
							<thead>
								<tr class="tr1">
									<th>订单号</th>
									<th>下单时间</th>
									<th>地址</th>
									<th>总价</th>
									<th>订单状态</th>
									<th>操作</th>
								</tr>
							</thead>
							<tbody>
								<c:forEach items="${map.list }" var="order">
									<tr>
										<td class="orderid">${order.orderid }</td>
										<td>${order.ordertime }</td>
										<td>${order.areadetail }</td>
										<td>￥${order.sumprice }</td>
										<td>${order.status }</td>
										<td>
										<a class="show">查看详情</a>
										</td>
									</tr>
								</c:forEach>

							</tbody>
						</table>
					</div>
				</div>


							<div id="modal" class="modal">
								<div class="modal-content">
									<div class="address_detail_page">
										<header class="modal-header">
											<h4>添加新地址</h4>
											<span class="close">×</span>
										</header>
										<div class="modal-body">
											<table>
												<thead>
													<tr class="tr1">
														<th>订单号</th>
														<th>下单时间</th>
														<th>商品</th>
														<th>数量</th>
														<th>总价</th>
														<th>订单状态</th>
													</tr>
												</thead>
												<tbody>
													<c:forEach items="${map1.list }" var="xq">
														<tr>
															<td>${xq.orderid }</td>
															<td>${xq.ordertime }</td>
															<td>
																<img src="img/${xq.goods_picture }" style="width: 120px;height: 110px;">
																${xq.goods_name }
															</td>
															<td>${xq.goodsnum }</td>
															<td>￥${xq.sumprice }</td>
															<td>${xq.status }</td>
														</tr>
													</c:forEach>
												</tbody>
											</table>
										</div>	
									</div>
								</div>
							</div>


			</div>
		</div>
	</div>
</body>

<!--下拉遮拦-->
<script type="text/javascript"
	src="${pageContext.request.contextPath }/js/首页下拉遮拦.js"></script>

<!--跟随导航-->
<script type="text/javascript"
	src="${pageContext.request.contextPath }/js/跟随导航.js"></script>
<script type="text/javascript">
$(document).ready(function(){
	
	var orderid = $(".orderid").html();
	if(orderid==null){
		$(".tr1").css("display","none");
	}
	
	
	$.ajax({
		url:"user.do?method=",
		type:"get",
		contentType: "application/x-www-form-urlencoded;charset=utf-8",
		dataType:"text",
        success:function(data){ 
        	
        }
    });
	$("#order2").click(function(){
		document.getElementById("order2").className="order";
	})
	
	$("#order1").click(function(){
		document.getElementById("order1").className="order";
	})
	
	var unfinish = "待支付";
	var finish = "已支付";
	$.ajax({
		url:"user.do?method=findorder&unfinish="+unfinish+"&finish="+finish,
		type:"get",
		contentType: "application/x-www-form-urlencoded;charset=utf-8",
		dataType:"json",
        success:function(data){ 
        	
        	$("#unfinish").html(data.count1);
        	$("#finish").html(data.count2);
        }
    });
	
	
})

	$(".show").click(function(){
		var orderid = $(this).parents('tr').find(".orderid").html();
	
				
		location = "user.do?method=selectorder&orderid="+orderid;
	})
		
	
	
	
</script>


</html>