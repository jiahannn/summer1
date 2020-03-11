<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<script type="text/javascript"
	src="${pageContext.request.contextPath }/js/jquery.min.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath }/js/jquery-1.7.2.min.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath }/js/jquery-1.11.0.min.js"></script>

<link type="text/css" href="css/style下拉.css" rel="stylesheet" />
<link rel="stylesheet" type="text/css" href="css/foot.css" />
<link type="text/css" rel="stylesheet" href="css/body.css" />
<link type="text/css" rel="stylesheet" href="css/bottom.css" />
<link rel="stylesheet" type="text/css" href="css/login.css" />
<link rel="stylesheet" type="text/css" href="css/person.css" />
<link rel="stylesheet" type="text/css" href="css/order.css" />
<link type="text/css" href="css/comments.css" rel="stylesheet" />
<link rel="stylesheet" type="text/css" href="css/style2.css" />
<style>
	.backorder{
	width: 100%;
}

.backorder a{
	display: block;
	margin-left: 20px;
	font-size: 13px;
	text-decoration: underline;
}

.backorder a:hover{
	color: orange;
}

.orderid{
	font-size: 28px;
    font-weight: 700;
    float: left;
    margin: 15px 0 35px 2.77%;
    color: #000;
    float: left;
    text-transform: uppercase;
}

.comment{
	float: right;
	line-height: 90px;
}

.comment button{
	background: #000;
	color: #fff;
	border: 1px solid #ccc;
	width: 140px;
	height: 40px;
	cursor: pointer;
	margin-top: 15px;
}

.my_order{
	display: block;
	background: #eee;
    padding: 20px;
    font-family: montserrat regular,sans-serif,microsoft yahei;
    font-size: 18px;
    color: #000;
    font-weight: 400;
    text-transform: uppercase;
    text-align: left;
}
.goodsname{
	vertical-align: middle;
	display: block;
	float: left;
	line-height: 120px;
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

#commentAll{
	display: none;
}
</style>



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
					<span class="head_img_name" id="username">欢迎 ${sessionScope.username }</span>
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
						<h2 class="primary_title">订单详情</h2>
						<div class="backorder">
							<a href="user.do?method=showorder&status=待支付">返回订单列表</a>
						</div>
						<div class="orderid">${sessionScope.orderid }</div>
						<div class="comment"><button id="comment">确认收货并评价</button></div>
						<div class="p_orders_tabs">
							<span class="my_order">我的订单</span>
						</div>
						<div class="order_detail">
							<table>
								<thead>
									<tr class="tr1">
										<th>订单号</th>
										<th>下单时间</th>
										<th>商品</th>
										<th>数量</th>
										<th>单价</th>
										<th>订单状态</th>
									</tr>
								</thead>
								<tbody>
									<c:forEach items="${map1.list }" var="xq">
										<tr>
											<td>${xq.orderid }</td>
											<span id="sumprice" style="display: none;">${xq.sumprice }</span>
											<td>${xq.ordertime }</td>
											<td><img src="img/${xq.goods_picture }" style="width: 120px;height: 110px;display: block;float: left;">
											<span class="goodsname">${xq.goods_name }</span></td>
											<td>${xq.goodsnum }</td>
											<td>￥${xq.goods_price }</td>
											<td class="status">${xq.status }</td>
										</tr>
									</c:forEach>
								</tbody>
							</table>
						</div>
						
					<!-- 评论 -->
				     <div class="commentAll" id="commentAll">
					    <!--评论区域 begin-->
					    <div class="reviewArea clearfix">
					        <textarea class="content comment-input" placeholder="请输入评论内容&hellip;" onkeyup="keyUP(this)"></textarea>
					        <a href="javascript:;" class="plBtn">评论</a>
					    </div>
					    <!--评论区域 end-->
					    <!--回复区域 begin-->
						<c:forEach items="${map2.list }" var="pl">
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
					     					<a href="comment.do?method=deletepl&commentid=${pl.commentid }" class="removeBlock">删除</a>
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
		</div>
	</div>
</body>


<!--下拉遮拦-->
<script type="text/javascript"
	src="${pageContext.request.contextPath }/js/首页下拉遮拦.js"></script>

<!--跟随导航-->
<script type="text/javascript"
	src="${pageContext.request.contextPath }/js/跟随导航.js"></script>
	
<!-- 评论 -->
<script type="text/javascript" src="${pageContext.request.contextPath }/js/jquery.flexText.js"></script>
	
	
<script type="text/javascript">

	
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
		$(".plBtn").on("click",function(){
			var comment = $(".comment-input").val();
			alert(comment);
			var goodsname = $(".goodsname").html();
			alert(goodsname);
			location = "comment.do?method=addcomment&comment="+comment+"&goodsname="+goodsname;
		})
		
		$(document).ready(function(){
			$.ajax({
				type: "POST",  
				url: "comment.do?method=selectpl", 
				contentType: "application/x-www-form-urlencoded;charset=utf-8",  
				success: function(data){ 
					
				} 
			});
			
			var x = $(".status").html();
			if(x=="待支付"){
				$("#comment").html("去支付");
				$("#comment").click(function(){
					var sumprice = $("#sumprice").html();
					var orderid = $(".orderid").html();
					location = "returnzfb.jsp?orderid="+orderid+"&sumprice="+sumprice;        //未支付的订单去支付
					
				})
			}else {
				$("#comment").click(function(){
					$("#commentAll").css("display","block");
				})
			}
		})
		
		
		
	</script>
