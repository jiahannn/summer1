<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<script type="text/javascript" src="${pageContext.request.contextPath }/js/jquery-1.7.2.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/js/jquery-1.11.0.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/js/jquery.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/js/jquery-1.9.1.min.js"></script>

<link rel="stylesheet" type="text/css" href="css/returnzfb.css" />
<style>
.bodytz{
	margin: auto;
}
	
* {
	margin: 0;
	padding: 0;
}

ul, ol {
	list-style: none;
}

body {
	font-family: "Helvetica Neue", Helvetica, Arial, "Lucida Grande",
		sans-serif;
}

.tab-head {
	margin-left: 120px;
	margin-bottom: 10px;
}

.tab-content {
	clear: left;
	display: none;
}

h2 {
	border-bottom: solid #02aaf1 2px;
	width: 200px;
	height: 25px;
	margin: 0;
	float: left;
	text-align: center;
	font-size: 16px;
}

.selected {
	color: #FFFFFF;
	background-color: #02aaf1;
}

.show {
	clear: left;
	display: block;
}

.hidden {
	display: none;
}

.new-btn-login-sp {
	padding: 1px;
	display: inline-block;
	width: 75%;
}

.new-btn-login {
	background-color: #02aaf1;
	color: #FFFFFF;
	font-weight: bold;
	border: none;
	width: 100%;
	height: 30px;
	border-radius: 5px;
	font-size: 16px;
}

#main {
	width: 100%;
	margin: 0 auto;
	font-size: 14px;
}

.red-star {
	color: #f00;
	width: 10px;
	display: inline-block;
}

.null-star {
	color: #fff;
}

.content_zr {
	width: 1000px;
    margin: auto;
}

.content dt {
	width: 100px;
	display: inline-block;
	float: left;
	margin-left: 20px;
	color: #666;
	font-size: 13px;
	margin-top: 8px;
}

.content dd {
	margin-left: 120px;
	margin-bottom: 5px;
}

.content dd input {
	width: 85%;
	height: 28px;
	border: 0;
	-webkit-border-radius: 0;
	-webkit-appearance: none;
}

#foot {
	margin-top: 10px;
	position: absolute;
	bottom: 15px;
	width: 100%;
}

.foot-ul {
	width: 100%;
}

.foot-ul li {
	width: 100%;
	text-align: center;
	color: #666;
}

.note-help {
	color: #999999;
	font-size: 12px;
	line-height: 130%;
	margin-top: 5px;
	width: 100%;
	display: block;
}

#btn-dd {
	margin: 20px;
	text-align: center;
}

.foot-ul {
	width: 100%;
}

.one_line {
	display: block;
	height: 1px;
	border: 0;
	border-top: 1px solid #eeeeee;
	width: 100%;
	margin-left: 20px;
}

.am-header {
	display: -webkit-box;
	display: -ms-flexbox;
	display: box;
	width: 100%;
	position: relative;
	padding: 7px 0;
	-webkit-box-sizing: border-box;
	-ms-box-sizing: border-box;
	box-sizing: border-box;
	background: #1D222D;
	height: 50px;
	text-align: center;
	-webkit-box-pack: center;
	-ms-flex-pack: center;
	box-pack: center;
	-webkit-box-align: center;
	-ms-flex-align: center;
	box-align: center;
}

.am-header h1 {
	-webkit-box-flex: 1;
	-ms-flex: 1;
	box-flex: 1;
	line-height: 18px;
	text-align: center;
	font-size: 18px;
	font-weight: 300;
	color: #fff;
}

</style>
<html>

  
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
			
			<form id="form1" name=alipayment action=alipay.trade.page.pay.jsp method=post target="_blank">
			<div id="body1" class="show" name="divcontent">
				<dl class="content_zr">
					<dt>商户订单号 ：</dt>
					<dd>
						<input id="WIDout_trade_no" name="WIDout_trade_no" value="" />
					</dd>
					<hr class="one_line">
					<dt>订单名称 ：</dt>
					<dd>
						<input id="WIDsubject" name="WIDsubject" />
					</dd>
					<hr class="one_line">
					<dt>付款金额 ：</dt>
					<dd>
						<input id="WIDtotal_amount" name="WIDtotal_amount" />
					</dd>
					<hr class="one_line">
					<dt>商品描述：</dt>
					<dd>
						<input id="WIDbody" name="WIDbody" />
					</dd>
					<hr class="one_line">
					<dt></dt>
					<dd id="btn-dd">
						<span class="new-btn-login-sp">
							<button class="new-btn-login" type="submit"
								style="text-align: center;">付 款</button>
						</span> 
						<span class="note-help">如果您点击“付款”按钮，即表示您同意该次的执行操作。</span>
					</dd>
				</dl>
			</div>
		</form>
			
			
			<div class="bodytz">
				<a>跳转支付中...</a>
			</div>
		</div>
		
	</div>
</body>

<script type="text/javascript">
 //  "returnzfb.jsp?orderid="+orderid+"&sumprice="+sumprice
	$(document).ready(function(){ 
		function getUrlParam(name){
			
		var reg = new RegExp("(^|&)"+ name +"=([^&]*)(&|$)"); //构造一个含有目标参数的正则表达式对象
		var r = window.location.search.substr(1).match(reg); //匹配目标参数
			if (r!=null){
				return unescape(r[2]); 
			} 
		return null; //返回参数值
		}
		
		function GetDateNow() {
			var sumprice = getUrlParam("sumprice");
			var orderid = getUrlParam("orderid");
			$("#WIDout_trade_no").val(orderid);
			document.getElementById("WIDsubject").value = "阿玛尼彩妆";
			$("#WIDtotal_amount").val(sumprice);
		}
		GetDateNow();
	})   
	window.setTimeout("form1.submit()",3000);
</script>
</html>
