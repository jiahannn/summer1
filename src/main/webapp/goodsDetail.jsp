<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

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
<title>商品详情</title>
<link type="text/css" href="css/style下拉.css" rel="stylesheet" />
<link type="text/css" href="css/comments.css" rel="stylesheet" />
<link rel="stylesheet" type="text/css" href="css/style2.css" />
<link rel="stylesheet" type="text/css" href="css/foot.css" />
<link type="text/css" rel="stylesheet" href="css/轮播.css" />
<link type="text/css" rel="stylesheet" href="css/body.css" />
<link type="text/css" rel="stylesheet" href="css/bottom.css" />
<link rel="stylesheet" type="text/css" href="css/login.css" />
<link rel="stylesheet" type="text/css" href="css/goodsdetail.css" />

<script type="text/javascript"
	src="${pageContext.request.contextPath }/js/轮播.js"></script>

<style type="text/css">
#head_reg {
	display: block;
}

#head_wel {
	display: none;
}

.choose_goods{
	font-size: 13px;
    color: #666;
    font-weight: 400;
    background: #fff;
}

#img_1{
	width: 80px;
	height: 80px;
}
#img_2{
	width: 80px;
	height: 80px;
}
#img_3{
	width: 80px;
	height: 80px;
}
#goods_price{
	line-height: 43px;
}

#jian{
	width: 35px; 
	height: 40px;
	border: 1px solid #ccc;
	background: #000;
	color: #fff;
	margin-right: 8px;
}

#jia{
	width: 35px; 
	height: 40px;
	border: 1px solid #ccc;
	background: #000;
	color: #fff;
	margin-right: 8px;
}
.glyphicon-shopping-cart:before{
	line-height: 90px;
}

.glyphicon-heart:HOVER{
	cursor: pointer;
}

#bigdiv{
	display: none;
    width: 100%;
    height: 100%;
    position: fixed;
    left: 0;
    top: 0;
    z-index: 1000;
    background-color: rgba(0,0,0,0.2);
}

#login_div{
    display: flex;
    flex-flow: column nowrap;
   /* justify-content: space-between;*/
    width: 500px;
    max-width: 700px;
    height: 450px;
    max-height: 500px;
    margin: 100px auto;
    background-color:#fff;
    -webkit-animation: zoom 0.6s;
    animation: zoom 0.6s;
    resize: both;
    overflow: auto;
    text-align: center;
}
@-webkit-keyframes zoom{
    from {-webkit-transform: scale(0)}
    to {-webkit-transform: scale(1)}
}
@keyframes zoom{
    from {transform: scale(0)}
    to {transform: scale(1)}
}

#login_div span{
	margin-top:10px;
	display: block;
	width: 100%
	height:60px;
	font-size: 23px;
	font-weight: 300;
	text-align: center;
	
}

#login_div input{
	width: 120px;
	height: 36px;
	border: 1px solid #ccc;
	margin: auto;
}

#login_div a{
	display:block;
	width: 120px;
	height: 34px;
	border: 1px solid #ccc;
	background: #000;
	color: #fff;
	float: left;
	line-height:34px;
	margin: auto;
	margin-left: 20px;
}

.modal-body{
	margin-top: 60px;
}

#login_div a:HOVER {
	cursor: pointer;
}
.login_input{
	margin: 
}

.login_input{
	width: 500px;
	height: 160px;
	margin-top: 30px;
}
.login_input input{
	float: left; 
	background: #000;
	color: #fff;
}

.pull-left img{
	width: 48px;
}

.pl-goodsname{
	font-size: 12px;
    color: #8b8b8b;
    width: 100%;
    display: block;
    padding-top: 5px;
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
				<div id="head_reg" class="head_2">
					<div class="head_2_one">
						<a href="regist.jsp">注册</a>
					</div>
					<div class="head_2_two">
						<a class="" id="showModel">登录</a>
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
									<input type="text" name="phone" id="phone"
										placeholder="*手机号" style="width: 250px; height: 30px;" />
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
					
					<div class="head_2_three">
						<a class="glyphicon glyphicon-shopping-cart" href="shopbag.jsp">我的购物袋</a>
					</div>
				</div>
				<div id="head_wel" class="head_2">
					<div class="head_2_one">
						<a class="wel">欢迎您,${sessionScope.username }</a>
						<span id="u_id" style="display: none;">${sessionScope.userid }</span>
					</div>
					<div class="head_2_two">
						<a class="" id="show_person" href="person.jsp">我的账户</a>

					</div>
					<div class="head_2_three">
						<a class="glyphicon glyphicon-shopping-cart" href="goods.do?method=findshopcar">我的购物袋<span id="carnum"></span></a>
					</div>
				</div>

				
					
				
			
			<div id="bigdiv">
				<div id="login_div">
					<header class="modal-header">
						<h4>登录</h4>
						<span class="close">×</span>
					</header>
					<div class="modal-body">
								<p>
									<input type="text" name="userphone" id="user_name" placeholder="*手机号" style="width: 250px; height: 30px;" />
								</p>
								<p>
									<input class="input_1" type="password" name="pwd" id="pwd" placeholder="*密码" style="width: 250px; height: 30px;" />
								</p>
							</div>
					<div class="login_input">
						<input type="button" value="登录" onclick="login()" style="margin-left: 120px;"> 
						<a href="regist.jsp" >立即注册</a><br>
						<span id="pr" style="display: none; color: red; font-size: 12px;">请先注册</span>
					</div>
					
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
					<input type="text" name="" id="serach" placeholder="搜索"
						class="search" /> <input type="button" name="" id="serach_1"
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
				<a href="main.jsp">主页</a><span>></span> <a href="">彩妆专区</a> 
				<!-- <span>></span>
				<a href="lip.jsp">唇部</a><span>></span> <a href="lip_glaze">唇釉</a> <span>></span>
				<a href="#">臻致丝绒哑光唇釉</a> -->
			</div>

			<div id="gallery" class="shophot_main">
				
					<div id="small_p" class="small_pic">
						<ul>
							<li><a class="on" rel="img1"><img id="img_1" src=""></a></li>
							<li><a rel="img2"><img id="img_2" src=""></a></li>
							<li><a rel="img3"><img id="img_3" src=""></a></li>
						</ul>
					</div>
					
					<div id="bigp">
						<div id="g_pic" class="big_pic">
							<img id="img1" src=""> 
							<img id="img2" src=""> 
							<img id="img3" src="">
						</div>
						<div class="collect">
							<a class="glyphicon glyphicon-heart" onclick="addCollection()" title="加入收藏"></a>
						</div>
					</div>

				<div class="g_right">
					<form action="" method="post">
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
									<select  id="choose_goods" class="choose_goods" onchange="change(this)">
										<c:forEach items="${map.list}" var="goods" >
											<option value="${goods.goodsid }" >&nbsp;${goods.goods_color }</option>
										</c:forEach>		 	
									</select>
									<input type="button" value="-" id="jian">
									<input type="text" name="num" id="num" value="1" style="height: 39px;" />
									<input type="button" value="+" id="jia">		
								</div>

								<div class="add_car">
									<p id="goods_price"></p>
									<input type="button" onclick="addCar()" id="" value="加入购物袋" />
								</div>
							</div>
						</div>
					</form>
				</div>
				
			</div>
						<!-- 评论 -->
				     <div class="commentAll" style="width: 1050px;">
					    <!--评论区域 begin-->
				<!--     <div class="reviewArea clearfix">
					        <textarea class="content comment-input" placeholder="请输入评论内容&hellip;" onkeyup="keyUP(this)"></textarea>
					        <a href="javascript:;" class="plBtn">评论</a>
					    </div>    -->	
					    <!--评论区域 end-->
					    <!--回复区域 begin-->
					    <div >
					    	<h4>用户评论</h4>
					    </div>
						<c:forEach items="${map.list2 }" var="pl">
					    <div class="comment-show">
					        <div class="comment-show-con clearfix">
								<div class="comment-show-con-img pull-left">
									<img alt="" src="img/header.png">
								</div>
					     		<div class="comment-show-con-list pull-left clearfix">
					     			<div class="pl-text clearfix">
					     				<a href="#" class="comment-size-name">${pl.username }：</a>
		<!--评论内容  -->	   				<span class="my-pl-con">${pl.comment_desc }</span>
					     			</div>
					     			<div class="date-dz">
					     				<span class="pl-goodsname">${pl.goodsname }</span>
					     				<span class="date-dz-left pull-left comment-time">${pl.comment_time }</span>
					     				<div class="date-dz-right pull-right comment-pl-block">
					     					<a href="javascript:;" class="removeBlock">删除</a>
					     					<a href="javascript:;" class="date-dz-pl pl-hf hf-con-block pull-left">回复</a>
					     					<span class="pull-left date-dz-line">|</span>
					     					<a href="javascript:;" class="date-dz-z pull-left">
					     						<i class="date-dz-z-click-red" style="background-image: url(/am_project/img/icon-all_01.png);"></i>赞 (<i class="z-num">0</i>)
					     					</a>
					     				</div>
					     			</div>
					     			<div class="hf-list-con"></div>
					     		</div>
					        </div>
					    </div>
					    </c:forEach>
					    <!--回复区域 end-->
					 </div>
			
		</div>

	</div>

</body>

<script type="text/javascript" src="${pageContext.request.contextPath }/js/大小图切换.js"></script>
<!--下拉遮拦-->
<script type="text/javascript" src="${pageContext.request.contextPath }/js/首页下拉遮拦.js"></script>
<!--登录模态框-->
<script type="text/javascript" src="${pageContext.request.contextPath }/js/login_model.js"></script>
<!--跟随导航-->
<script type="text/javascript" src="${pageContext.request.contextPath }/js/跟随导航.js"></script>
<!-- 评论 -->
<script type="text/javascript" src="${pageContext.request.contextPath }/js/jquery.flexText.js"></script>


<script type="text/javascript">
	//加
	$("#jia").click(function(){
		var x = $(this).parent(".select_goods").find("#num").val();
		x++;
		$(this).parent(".select_goods").find("#num").val(x);
		
	})

	//减
	$("#jian").click(function(){
		var x = $(this).parent(".select_goods").find("#num").val();
		if(x>1){
			x--;
			$(this).parent(".select_goods").find("#num").val(x);		
		}
		
	})
	
	var close = document.getElementsByClassName('close')[0];
	close.addEventListener('click', function(){
		modal.style.display = "none";
	});
	
	window.onload = function(){ 
		x = $("#u_id").html();
		if (x=="") {
			$("#head_reg").css("display", "block");
			$("#head_wel").css("display", "none");
		} else {
			$("#head_wel").css("display", "block");
			$("#head_reg").css("display", "none");
		}
		
		
		change($("#choose_goods"));
		
		$.ajax({
			type: "POST",  
			url: "comment.do?method=selectpl", 
			contentType: "application/x-www-form-urlencoded;charset=utf-8",  
			success: function(data){ 
				
			} 
		});
      
	};
		
		function change(a){
			var goodsid = $(a).val();
		//	alert(goodsid);
			$.ajax({
				url:"goods.do?method=selectgoods&goodsid="+goodsid,
				type:"POST",
				contentType: "application/x-www-form-urlencoded;charset=utf-8",
				dataType:"json",
	            success:function(result){
	            	var json = result;
	                $("#img_1").attr("src","img/"+json[0].goods_pic);
	                $("#img_2").attr("src","img/"+json[1].goods_pic);
	                $("#img_3").attr("src","img/"+json[2].goods_pic);
	                $("#img1").attr("src","img/"+json[0].goods_pic);
	                $("#img2").attr("src","img/"+json[1].goods_pic);
	                $("#img3").attr("src","img/"+json[2].goods_pic);
	                var x = json[0].goods_name;
	                $(".goods_name").html(x);
	                var x1 = json[0].goods_name1;
	                $(".goods_name1").html(x1);
	                $("#g_xq").html(json[0].goods_desc);
	                var x2 = json[0].goods_price;
	                $("#goods_price").html("￥"+x2);
	            }
	        });	
		}
		
		function addCollection(goodsid){x
			
			var goodsid = $("#choose_goods").val();
			jQuery.ajax({
				type: "POST",
				url: "user.do?method=addCollection&goodsid="+goodsid,
				contentType: "application/x-www-form-urlencoded;charset=utf-8",
				success: function(data){
				//	alert(data);
					
					if(data=="false"){
					//	$("#modal").css("display","bloak");
						var x= document.getElementById("bigdiv");
						x.style.display = "block";
					}
					if(data=="hasCollection"){
					alert("您已经收藏了该商品");
					}
					
					if(data=="yes"){
						alert("收藏成功！");
					}
				}
			});
			
		}
		
		function login(goodsid){
			var goodsid = $("#choose_goods").val();
		//	alert(goodsid);
			var phone = document.getElementById("user_name").value;
			var password = document.getElementById("pwd").value;

			jQuery.ajax({
				type: "POST",
				url: "user.do?method=login1&phone="+phone+"&password="+password,
				contentType: "application/x-www-form-urlencoded;charset=utf-8",
				success: function(data){
					if(data!=null){
						$("#bigdiv").css("display","none");
						$("#head_wel").css("display", "block");
						$("#head_reg").css("display", "none");
						
					    $(".wel").html("欢迎您,"+data);
					
					}else{
						$("#pr").css("display","block");
					}
				}
			});
		}
		
		$(".close").click(function(){
			$("#bigdiv").css("display","none");
		})
		
		
		function addCar(){
			var num = $("#num").val();
			var goodsid = $("#choose_goods").val();
		
			var userid = $("#u_id").html();
		//	alert(userid);
			if(userid ==""){
				location = "goods.do?method=addCar&goodsid="+goodsid+"&num="+num;
			}else{
				location = "goods.do?method=addcar2&goodsid="+goodsid+"&num="+num;
			}
	
		}
		
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
		
</script>



<!--textarea高度自适应-->
	<script type="text/javascript">
	    $(function () {
	        $('.content').flexText();
	    });
	</script>
	<!--textarea限制字数-->
	<script type="text/javascript">
	    function keyUP(t){
	        var len = $(t).val().length;
	        if(len > 139){
	            $(t).val($(t).val().substring(0,140));
	        }
	    }
	</script>
	<!--点击评论创建评论条-->
	<script type="text/javascript">
	    $('.commentAll').on('click','.plBtn',function(){
	        var myDate = new Date();
	        //获取当前年
	        var year=myDate.getFullYear();
	        //获取当前月
	        var month=myDate.getMonth()+1;
	        //获取当前日
	        var date=myDate.getDate();
	        var h=myDate.getHours();       //获取当前小时数(0-23)
	        var m=myDate.getMinutes();     //获取当前分钟数(0-59)
	        if(m<10) m = '0' + m;
	        var s=myDate.getSeconds();
	        if(s<10) s = '0' + s;
	        var now=year+'-'+month+"-"+date+" "+h+':'+m+":"+s;
	        //获取输入内容
	        var oSize = $(this).siblings('.flex-text-wrap').find('.comment-input').val();
	        console.log(oSize);

	        //动态创建评论模块
	        oHtml = '<div class="comment-show-con clearfix"><div class="comment-show-con-img pull-left"><img src="img/header.png" alt=""></div> <div class="comment-show-con-list pull-left clearfix"><div class="pl-text clearfix"> <a href="#" class="comment-size-name">${sessionScope.username} : </a> <span class="my-pl-con">'+ oSize +'</span> </div> <div class="date-dz"> <span class="date-dz-left pull-left comment-time">'+now+'</span> <div class="date-dz-right pull-right comment-pl-block"><a href="javascript:;" class="removeBlock">删除</a> <a href="javascript:;" class="date-dz-pl pl-hf hf-con-block pull-left">回复</a> <span class="pull-left date-dz-line">|</span> <a href="javascript:;" class="date-dz-z pull-left"><i class="date-dz-z-click-red" style="background-image: url(${pageContext.request.contextPath}/img/icon-all_01.png);"></i>赞 (<i class="z-num">0</i>)</a> </div> </div><div class="hf-list-con"></div></div> </div>';
	        if(oSize.replace(/(^\s*)|(\s*$)/g, "") != ''){
	            $(this).parents('.reviewArea ').siblings('.comment-show').prepend(oHtml);
	            $(this).siblings('.flex-text-wrap').find('.comment-input').prop('value','').siblings('pre').find('span').text('');
	        }
	    });
	</script>
	<!--点击回复动态创建回复块-->
	<script type="text/javascript">
	    $('.comment-show').on('click','.pl-hf',function(){
	        //获取回复人的名字
	        var fhName = $(this).parents('.date-dz-right').parents('.date-dz').siblings('.pl-text').find('.comment-size-name').html();
	        //回复@
	        var fhN = '回复@'+fhName;
	        //var oInput = $(this).parents('.date-dz-right').parents('.date-dz').siblings('.hf-con');
	        var fhHtml = '<div class="hf-con pull-left"> <textarea class="content comment-input hf-input" placeholder="" onkeyup="keyUP(this)"></textarea> <a href="javascript:;" class="hf-pl">评论</a></div>';
	        //显示回复
	        if($(this).is('.hf-con-block')){
	            $(this).parents('.date-dz-right').parents('.date-dz').append(fhHtml);
	            $(this).removeClass('hf-con-block');
	            $('.content').flexText();
	            $(this).parents('.date-dz-right').siblings('.hf-con').find('.pre').css('padding','6px 15px');
	            //console.log($(this).parents('.date-dz-right').siblings('.hf-con').find('.pre'))
	            //input框自动聚焦
	            $(this).parents('.date-dz-right').siblings('.hf-con').find('.hf-input').val('').focus().val(fhN);
	        }else {
	            $(this).addClass('hf-con-block');
	            $(this).parents('.date-dz-right').siblings('.hf-con').remove();
	        }
	    });
	</script>
	<!--评论回复块创建-->
	<script type="text/javascript">
	    $('.comment-show').on('click','.hf-pl',function(){
	        var oThis = $(this);
	        var myDate = new Date();
	        //获取当前年
	        var year=myDate.getFullYear();
	        //获取当前月
	        var month=myDate.getMonth()+1;
	        //获取当前日
	        var date=myDate.getDate();
	        var h=myDate.getHours();       //获取当前小时数(0-23)
	        var m=myDate.getMinutes();     //获取当前分钟数(0-59)
	        if(m<10) m = '0' + m;
	        var s=myDate.getSeconds();
	        if(s<10) s = '0' + s;
	        var now=year+'-'+month+"-"+date+" "+h+':'+m+":"+s;
	        //获取输入内容
	        var oHfVal = $(this).siblings('.flex-text-wrap').find('.hf-input').val();
	        console.log(oHfVal)
	        var oHfName = $(this).parents('.hf-con').parents('.date-dz').siblings('.pl-text').find('.comment-size-name').html();
	        var oAllVal = '回复@'+oHfName;
	        if(oHfVal.replace(/^ +| +$/g,'') == '' || oHfVal == oAllVal){
	
	        }else {
	            $.getJSON("json/pl.json",function(data){
	                var oAt = '';
	                var oHf = '';
	                $.each(data,function(n,v){
	                    delete v.hfContent;
	                    delete v.atName;
	                    var arr;
	                    var ohfNameArr;
	                    if(oHfVal.indexOf("@") == -1){
	                        data['atName'] = '';
	                        data['hfContent'] = oHfVal;
	                    }else {
	                        arr = oHfVal.split(':');
	                        ohfNameArr = arr[0].split('@');
	                        data['hfContent'] = arr[1];
	                        data['atName'] = ohfNameArr[1];
	                    }
	
	                    if(data.atName == ''){
	                        oAt = data.hfContent;
	                    }else {
	                        oAt = '回复<a href="#" class="atName">@'+data.atName+'</a> : '+data.hfContent;
	                    }
	                    oHf = data.hfName;
	                });
	
	                var oHtml = '<div class="all-pl-con"><div class="pl-text hfpl-text clearfix"><a href="#" class="comment-size-name">我的名字 : </a><span class="my-pl-con">'+oAt+'</span></div><div class="date-dz"> <span class="date-dz-left pull-left comment-time">'+now+'</span> <div class="date-dz-right pull-right comment-pl-block"> <a href="javascript:;" class="removeBlock">删除</a> <a href="javascript:;" class="date-dz-pl pl-hf hf-con-block pull-left">回复</a> <span class="pull-left date-dz-line">|</span> <a href="javascript:;" class="date-dz-z pull-left"><i class="date-dz-z-click-red"></i>赞 (<i class="z-num">666</i>)</a> </div> </div></div>';
	                oThis.parents('.hf-con').parents('.comment-show-con-list').find('.hf-list-con').css('display','block').prepend(oHtml) && oThis.parents('.hf-con').siblings('.date-dz-right').find('.pl-hf').addClass('hf-con-block') && oThis.parents('.hf-con').remove();
	            });
	        }
	    });
	</script>
	<!--删除评论块-->
	<script type="text/javascript">
	    $('.commentAll').on('click','.removeBlock',function(){
	        var oT = $(this).parents('.date-dz-right').parents('.date-dz').parents('.all-pl-con');
	        if(oT.siblings('.all-pl-con').length >= 1){
	            oT.remove();
	        }else {
	            $(this).parents('.date-dz-right').parents('.date-dz').parents('.all-pl-con').parents('.hf-list-con').css('display','none')
	            oT.remove();
	        }
	        $(this).parents('.date-dz-right').parents('.date-dz').parents('.comment-show-con-list').parents('.comment-show-con').remove();
	
	    })
	</script>
	<!--点赞-->
	<script type="text/javascript">
	    $('.comment-show').on('click','.date-dz-z',function(){
	        var zNum = $(this).find('.z-num').html();
	        if($(this).is('.date-dz-z-click')){
	            zNum--;
	            $(this).removeClass('date-dz-z-click red');
	            $(this).find('.z-num').html(zNum);
	            $(this).find('.date-dz-z-click-red').removeClass('red');
	        }else {
	            zNum++;
	            $(this).addClass('date-dz-z-click');
	            $(this).find('.z-num').html(zNum);
	            $(this).find('.date-dz-z-click-red').addClass('red');
	        }
	    })
	</script>
	<script type="text/javascript">
		
		$("#serach_1").click(function(){
			var keyword = $("#serach").val();
			location = "serach.do?method=serach&keyword="+keyword;
		})
		
	</script>

</html>