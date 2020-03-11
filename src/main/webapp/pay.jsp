<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<script type="text/javascript" src="${pageContext.request.contextPath }/js/jquery-1.7.2.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/js/jquery-1.11.0.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/js/jquery.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/js/jquery-1.9.1.min.js"></script>

<html>

<head>
<meta charset="UTF-8">
<title></title>
<link rel="stylesheet" type="text/css" href="css/pay.css" />
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
    padding: 6px 12px;
    font-size: 14px;
    line-height: 1.42857143;
    color: #555;
    background-color: #fff;
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
	
</style>
</head>

<body>

	<div class="content">
		<div class="shopb_head">
			<img src="img/logo.png"
				style="width: 240px; height: 54px; vertical-align: middle;" />
		</div>
		<div class="jx_shop">
			<a href="main.jsp">返回购物</a>
		</div>
		<div class="content_car">
			<div class="check_lc">
				<div class="check_step1">
					<span class="steps1">1 </span> <span class="label1">我的购物袋</span>
				</div>
				<div class="check_step2">
					<span class="steps2">2 </span> <span class="label2">支付及物流</span>
				</div>
				<div class="check_step3">
					<span class="steps3">3 </span> <span class="label3">成功提交订单</span>
				</div>
			</div>
			<div class="my_car">
				<h1 class="span_1">支付及物流</h1>
				<div class="my_car_list">
					<div class="address_info">
						<h3>收货人信息</h3>
					</div>
					<div class="address_section">
						<div class="address_choose">
							<div class="address_choose_lastname">收货人信息</div>
							<div class="address_choose_address">地址</div>
							<div class="address_choose_zip">邮编</div>
							<div class="address_choose_phone">电话</div>
						</div>

						<div class="address_checked">
							<c:forEach items="${map.list }" var="dz">
								<div class="address_choose_lastname">
									<input type="radio" name="address" checked="checked" value="${dz.addressid }" />
									<span class="dz_name">${dz.username }</span>
								</div>
								<div class="address_choose_address">${dz.areadetail }</div>
								<div class="address_choose_zip">${dz.zipcode }</div>
								<div class="address_choose_phone">${dz.userphone }</div>
							</c:forEach>
							<button id="showModel">添加地址</button>
						</div>


						<form action="pay.do?method=addarea" method="post" onsubmit="return dosubmit()">
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


						<c:forEach items="${list }" var="goods">
							<div class="showcar">
								<div class="carimg">
									<img class="showcar_img" src="${goods.goodspic }" />
								</div>
								<div class="carp">
									<input type="checkbox" checked="checked" name="goodsid" value="${goods.goodsid }"  >
									<span class="goodsname">${goods.goodsname }</span>
									<span class="goodscolor">${goods.goodscolor }</span> 
									<span class="goodsnum">数量：${goods.goodsnum }</span> 
								    <span class="goodsprice">￥${goods.goodsprice }</span>
								</div>
							</div>
						</c:forEach>

						<div class="pay_method">
							<div class="pay_method_check">
								<legend>
									<span class="legend_message">支付方式</span>
								</legend>
								<div class="payment">
									<span class="online_pay">在线支付</span>
								</div>
								<div class="pay_zfb">
									<input type="radio" name="paymethod" value="alipay" checked="checked" /> <span
										class="pay_method_img"><img src="img/alipay.png" /></span>
								</div>
								<div class="pay_wechat">
									<input type="radio" name="paymethod" value="weixin" />
									<span class="pay_method_img"><img src="img/weixinpay.png" /></span>
								</div>

								<div class="offline_pay">
									<input type="radio" name="paymethod" value="xianjin" />货到付款
								</div>
							</div>
						</div>
						<div class="order_price">
							<h2>商品总价</h2>
							<span id="sum_price">￥${sessionScope.sumprice }</span>
							<button id="pay">提交订单</button>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>

<script type="text/javascript" src="${pageContext.request.contextPath }/js/addcar.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/js/address.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/js/distpicker.data.js"></script><!-- 省市区级联 -->
<script type="text/javascript" src="${pageContext.request.contextPath }/js/distpicker.js"></script><!-- 省市区级联 -->

<script>

	
	
	$("#pay").click(function(){
		var list = new Array();
		var listp = new Array();
		var listn = new Array();
		var sumprice = $("#sum_price").html().substring(1);
		var paymethod = $("input[name='paymethod']:checked").val();
		var addressid = $("input[name='address']:checked").val();
		$("input[name='goodsid']:checked").each(function(){
			if($(this).prop("checked")){
				list.push($(this).val());
				var price = $(this).parents(".carp").children(".goodsprice").html().substring(1);
				var nums = $(this).parents(".carp").children(".goodsnum").html().substring(3);
				listp.push(price);
				listn.push(nums);
			}
		})
		
		$.ajax({
			type: "POST",  
			url: "pay.do?method=tjorder&sumprice="+sumprice+"&paymethod="+paymethod+"&addressid="+addressid+"&goodsid="+list+"&goodsprice="+listp+"&goodsnum="+listn , 
			contentType: "application/x-www-form-urlencoded;charset=utf-8",  
			success: function(data){ 
			var orderid = data;
				location = "returnzfb.jsp?orderid="+orderid+"&sumprice="+sumprice;
			} 
		});
		
	})
	 
	

	
	
	 
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