<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<script type="text/javascript"
	src="${pageContext.request.contextPath }/js/jquery.min.js"></script>

<link rel="stylesheet" type="text/css" href="css/shopcar.css" />
<link rel="stylesheet" type="text/css" href="css/bagmodal.css" />
<link rel="stylesheet" type="text/css" href="css/carhead.css" />
<style>

* {
	margin: 0px;
	padding: 0px;
}

.showModel {
	margin-right: 15px;
	margin-left: 10px;
	cursor: pointer;
	color: #000;
}

.span_1{
	font-family: montserrat regular, sans-serif, microsoft yahei;
	color: #000;
	font-weight: 300;
	text-transform: uppercase;
	padding: 0;
	margin: 0;
	text-align: left;
	display: block;
	height: 50px;
}

.jian{
	width: 40px;
	height: 37px;
	background: #000;
	color: #fff;
	margin-left: 20px;
	border: 1px solid #ccc;
}

.jia{
	width: 40px;
	height: 37px;
	background: #000;
	color: #fff;
	border: 1px solid #ccc;
}

.img_p1{
	width: 364px; 
	height: 364px;
}

.order_price span{
	width: 200px;
	height: 80px;
	display: block;
	float: left;
	margin-left:180px;
	line-height: 80px;
	text-align: center;
	
}

#pay{
	background: #a2221f;
	width: 120px;
	height: 40px;
	color: #fff;
	border: 1px solid #a2221f;
	float: right;
	margin-top: 20px;

}
</style>
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
					<span class="steps1">1 </span>
					<span class="label1">我的购物袋</span>
				</div>
				<div class="check_step2">
					<span class="steps2">2 </span>
					<span class="label2">支付及物流</span>
				</div>
				<div class="check_step3">
					<span class="steps3">3 </span>
					<span class="label3">成功提交订单</span>
				</div>
			</div>
			<div class="my_car">
				<h1 class="span_1">我的购物袋</h1>
				<div class="my_car_list">
					<table border="0px" class="table_list" cellpadding="0" cellspacing="0">
						<thead>
							<tr>
								<th class="th_qx"><input type="checkbox" id="qx" /></th>
								<th class="th_qx1">全选</th>
								<th class="th_sp">商品</th>
								<th class="th_dj">单价</th>
								<th class="th_sl">数量</th>
								<th class="th_jg">价格</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach items="${map }" var="m">
								<tr>
									<td class="td_check" style="width: 57px; height: 263px;">
										<input type="checkbox" name="xz" class="abc" />
									</td>
									<td class="td_img"><img id="img${m.key.goodsid }" class="img_p" src="img/${m.key.goods_picture }" />
									</td>
									<td class="td_goods">
										<span class="s1" id="s1${m.key.goodsid }">${m.key.goods_name }</span>
										<span class="s2" id="s2${m.key.goodsid }">${m.key.goods_color }</span>
										<span class="sg" id="sg${m.key.goodsid }" style="display: none;">${m.key.goodsid }</span>
										<button class="showModel" onclick="update(${m.key.goodsid })">修改</button> 
										<a href="goods.do?method=deletefromcar&goodsid=${m.key.goodsid }" class="delete_fromcar" onclick="del(this)">删除</a>
									</td>
									<td class="td_price" id="dj${m.key.goodsid }">￥${m.key.goods_price }</td>
									<td class="td_num">
										<button class="jian_1" onclick="change('-',${m.key.goodsid })">-</button> 
										<input type="text" class="in_num" id="inum${m.key.goodsid }" value="${m.value }" />
										<button class="jia_1" onclick="change('+',${m.key.goodsid })">+</button>
									</td>
									<td class="td_all_price" id="price${m.key.goodsid }">￥${m.key.goods_price }</td>
								</tr>
								
									<form action="" method="post">
									<div class="modal" id="modal${m.key.goodsid }">
										<div class="modal-content">
											<header class="modal-header">
												<span class="close">×</span>
											</header>
											<div class="modal-body">
												<div class="collect_left_img">
													<img class="img_p1" id="img_p1${m.key.goodsid }" src="" />
												</div>
												<div class="collect_right_data">
													<div class="goods_dec">
														<h1 class="goods_name" id=""></h1>
														<h2 class="goods_name1" itemprop="name"></h2>
														<div class="xiangqing">
															<span>★★★★★</span><span id="comment">评论</span>
															 <span class="g_det"></span>
														</div>
													</div>
													<div class="add_to_car">
														<div class="choose_g">
															<div class="select_goods">
																<select name="choose_goods" id="choose${m.key.goodsid }" class="choose">
																	<option value=""></option>
																</select> 																
																<input type="button" class="jian" value="-">
																<input type="text" name="num" class="num" id="num${m.key.goodsid }" value="${m.value }" /> 
																<input type="button" class="jia" value="+">
															</div>

															<div class="add_car">
																<p class="goods_price" id="goods_price${m.key.goodsid }"></p>
																<input type="button" name="" onclick="changeColors(${m.key.goodsid })" class="renew" value="更新" />
															</div>
														</div>
													</div>
												</div>
											</div>

										</div>
									</div>
								</form>
								
							</c:forEach>
							
				
							
						</tbody>
					</table>
					<form action="pay.jsp" method="post">
						<div class="order_price">
							<h2>订单总价</h2>
							<span id="sum_price">￥0</span>
							<button id="pay">立即结算</button>
						</div>
					</form>
					
				</div>
			</div>
		</div>
	</div>
</body>

<script type="text/javascript"
	src="${pageContext.request.contextPath }/js/addcar.js"></script>
	
<script type="text/javascript">

$(".close").on("click",function(){
	$(".modal").css("display","none");
})


function update(id) {
	
	$("#modal"+id).css("display","block");
	var goodsname = $("#s1"+id).html();
	var goodscolor = $("#s2"+id).html();
//	alert(goodscolor);
	var x = $("#img"+id).attr("src");
//	alert(x);
	$("#img_p1"+id).attr("src",x);
	$(".choose option:selected").html(goodscolor);
	var y = $("#inum"+id).val();	
	$("#num"+id).val(y);
//	alert(y);
		jQuery.ajax({
			type: "POST",
			url: "goods.do?method=findcolor&goodsname="+goodsname,
			dataType:"json",
			contentType: "application/x-www-form-urlencoded;charset=utf-8",
			success: function(data){
				var haizi=$(".choose").children();
				for(var i=1;i<haizi.length;i++){
					haizi[i].remove();
				}
		    	for(var i=0;i<data.length;i++){
		            $(".choose").append("<option value="+data[i].goodsid+">"+data[i].goods_color+"</option>");
		            $(".goods_name").html(data[i].goods_name);
		        	$(".goods_name1").html(data[i].goods_name1);
		        	$(".g_det").html(data[i].goods_desc);
		        	$(".goods_price").html("￥"+data[i].goods_price);
		          }
			 }
		});
};
		
			$(".choose").change(function(){
				var goodsid = $(this).val();
		//		alert(goodsid);	
				$.ajax({
					url:"goods.do?method=selectgoods&goodsid="+goodsid,
					type:"POST",
					contentType: "application/x-www-form-urlencoded;charset=utf-8",
					dataType:"json",
		            success:function(result){
		            	//alert(result);
		            	//alert(result[1].goods_name);
		            	$(".img_p1").attr("src","img/"+result[0].goods_pic);
		            	$(".choose").val(result[0].goodsid);
		            }
		        });        
			});
			
		function changeColors(color){
			var num = $("#num"+color).val();
			
			var goodsid = $("#choose"+color).val();
			var goodsid1 = $("#sg"+color).html();
		//	alert(goodsid);
		//	alert(goodsid1);
			
			$.ajax({
				url:"goods.do?method=findbyid&goodsid="+goodsid+"&num="+num+"&goodsid1="+goodsid1,
				type:"get",
				contentType: "application/x-www-form-urlencoded;charset=utf-8",
				dataType:"json",
	            success:function(result){
	            	var n = $("#num"+color).val();
	            	var json = result;
	            	var z = $(".choose option:selected").html();
	      //      	alert(z);
	            	$("#sg"+color).val(json[0].goodsid);
	            	$("#img"+color).attr("src","img/"+json[0].goods_picture);
	            	$("#s2"+color).html(z);   
	            	$("#inum"+color).val(n);
	            	$(".modal").css("display","none");
	            	
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
	//


	
	function change(op,goodsid){
		
		var num = $("#inum"+goodsid).val();
		if(op=="+"){
			$.ajax({
				  type: "POST",  
				  url: "goods.do?method=changenum2&op=jia&goodsid="+goodsid,  
				  contentType: "application/x-www-form-urlencoded;charset=utf-8",  
				  success: function(data){ 
				//	alert(data);
					var x = num*1 + 1;
					$("#dj"+goodsid).html();
					var y = $("#dj"+goodsid).html().substring(1);
					$("#price"+goodsid).html("￥"+x*y);
				 } 
				
//				$("#inum"+goodsid).val() = num*1 + 1 ; 
				//	var x = $("#inum"+goodsid).val();
				//	alert(x);
				//	$("#dj"+goodsid).html();
				//	var y = $("#dj"+goodsid).html();
					
				//	$("#price"+goodsid).html();
			});
			
		}
		
		if(op=="-"){
			if(num>1){
				$.ajax({
					  type: "POST",  
					  url: "goods.do?method=changenum2&op=jian&goodsid="+goodsid,  
					  contentType: "application/x-www-form-urlencoded;charset=utf-8",  
					  success: function(data){ 

				      } 
				});
			}
		}
	}
	

</script>
