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



<!DOCTYPE html>
<html>

	<head>
		<meta charset="UTF-8">
		<title></title>
		<link type="text/css" href="css/style下拉.css" rel="stylesheet" />
		<link rel="stylesheet" type="text/css" href="css/foot.css" />
		<link type="text/css" rel="stylesheet" href="css/body.css" />
		<link type="text/css" rel="stylesheet" href="css/bottom.css" />
		<link rel="stylesheet" type="text/css" href="css/collect.css" />
	<style type="text/css">
		.collect_buy p{
			text-align: center;
			line-height: 30px;
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
							<a>我的购物袋</a>
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
				<a href="首页x.html">主页</a><span>></span>
				<a href="person.html">我的账户</a>
				<span>></span>
				<a href="person.html">我的收藏</a><span>></span>
			</div>
			<div class="collect_main">
				<div class="collect_body">
					<div class="person_head_img">
						<span class="head_img_name" id="username">欢迎 ${sessionScope.username }</span>
					</div>
					<div class="head_inner">
						<ul>
							<li>
								<a href="user.do?method=finduser">个人资料</a>
							</li>
							<li>
								<a href="pay.do?method=showaddress" id="add_address">收货地址</a>
							</li>
							<li>
								<a href="user.do?method=showorder&status=待支付">我的订单</a>
							</li>
							<li>
								<a href="collect.jsp" style="color: #000;font-weight: 700;">我的收藏</a>
							</li>
						</ul>
					</div>

					<div class="collect_primary">
						<h2 class="primary_title">我的收藏</h2>
						<div class="primary_head_edit">
							<h1>收藏单<span>()</span></h1>
						</div>
						<div class="collect_div">
							<table class="collect_list">
								<c:forEach items="${map.list }" var="goods">
								<tr>
									<td><input type="checkbox" value="${goods.goodsid }"></td>
									<td class="item_img">
										<img src="img/${goods.goods_picture }" style="width: 160px; height: 160px;">
									</td>
									<td class="item_jg">
										<p class="cllect_name">${goods.goods_name }</p>
										<p class="cllect_detail_n">${goods.goods_color }</p>
										<a id="delete_collect" href="goods.do?method=deletecollect&goodsid=${goods.goodsid }">删除</a>
									</td>
									<td>
										<input type="text" value="1" style="width: 40px;height: 30px;text-align: center;">
									</td>
									<td class="item_pri">
										<div class="collect_buy">
											<p id="goods_price">￥${goods.goods_price }</p>
											<input type="button" value="立即购买" onclick="addCar(${goods.goodsid })"/>
										</div>
									</td>
								</tr>
								</c:forEach>
							</table>
						</div>
					</div>
					
					
					
													<form action="" method="post">
									<div class="modal" id="modal">
										<div class="modal-content">
											<header class="modal-header">
												<span class="close">×</span>
											</header>
											<div class="modal-body">
												<div class="collect_left_img">
													<img class="img_p1" id="img_p1" src="" />
												</div>
												<div class="collect_right_data">
													<div class="goods_dec">
														<h1 class="goods_name"></h1>
														<h2 class="goods_name1" itemprop="name"></h2>
														<div class="xiangqing">
															<span id="g_xq" class="g_det"></span>
														</div>
													</div>
													<div class="add_to_car">
														<div class="choose_g">
															<div class="select_goods">
																<select name="choose_goods" class="choose" id="choose${goods.goods_id }">
																	<option value=""></option>
																</select> 
																
																<input type="button" class="jian" value="-"> 
																<input type="text" name="num" class="num" id="num${goods.goods_id }" value="${goods.number }" /> 
																<input type="button" class="jia" value="+" >
															</div>

															<div class="add_car">
																<p class="goods_price"></p>
																<input type="button" class="renew" onclick="changeColors(${goods.goods_id})" value="更新" />
															</div>
														</div>
													</div>
												</div>
											</div>

										</div>
									</div>
								</form>
					

				</div>
			</div>
		</div>
	</body>

	<!--下拉遮拦-->
	<script type="text/javascript" src="js/首页下拉遮拦.js"></script>

	<!--跟随导航-->
	<script type="text/javascript" src="js/跟随导航.js"></script>

	<script type="text/javascript" src="js/collect.js"></script>
	
	<script type="text/javascript">
	function changeColors(color){
		
		var num = $("#num"+color).val();
		var goodsid = $("#choose"+color).val();
		var goodsid1 = $("#sg"+color).html();
		
		$.ajax({
			url:"goods.do?method=findbyid2&goodsid="+goodsid+"&num="+num+"&goodsid1="+goodsid1,
			type:"get",
			contentType: "application/x-www-form-urlencoded;charset=utf-8",
			dataType:"json",
            success:function(result){
            	var json = result;
            	var z = $(".choose option:selected").html();
            	$("#img1"+color).attr("src","img/"+json[0].goods_picture);
            	$("#sg"+color).val(json[0].goodsid);
            	$("#s2"+color).html(z);
            	var n = $("#num"+color).val();
            	$("#inum"+color).val(n);
            	$("#modal"+color).css("display","none"); 	            	
            }	
		});
		
	}
	
	

//加
$(".jia").click(function(){
	var x = $(this).parent(".select_goods").find(".num").val();
	x++;
	$(this).parent(".select_goods").find(".num").val(x);
	
})

//减
$(".jian").click(function(){
	var x = $(this).parent(".select_goods").find(".num").val();
	if(x>1){
		x--;
		$(this).parent(".select_goods").find(".num").val(x);		
	}
	
})


		function addCar(goodsid){
			var num = 1;
			//var goodsid = $("#choose_goods").val();
			alert(goodsid);
				location = "goods.do?method=addcar2&goodsid="+goodsid+"&num="+num;
		}
		
	</script>

</html>