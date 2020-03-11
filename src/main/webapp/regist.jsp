<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<script type="text/javascript" src="${pageContext.request.contextPath }/js/jquery.min.js"></script>

<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<title>regist</title>
<link rel="stylesheet" type="text/css" href="css/regist.css" />
<link rel="stylesheet" type="text/css" href="css/login.css" />
<link type="text/css" href="css/style下拉.css" rel="stylesheet" />
<link rel="stylesheet" type="text/css" href="css/foot.css" />
<link type="text/css" rel="stylesheet" href="css/body.css" />

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
						<a href="regist.html">注册</a>
					</div>
					<div class="head_2_two">
						<a class="" id="showModel">登录</a>
					</div>
					<div class="head_2_three">
						<a><img src="" />我的购物袋</a>
					</div>
				</div>
				
				
				
				

				<form action="" method="post">
					<div id="modal" class="modal">
						<div class="modal-content">
							<header class="modal-header">
								<h4>登录</h4>
								<span class="close">×</span>
							</header>
							<div class="modal-body">
								<p>
									<input type="text" name="username" id="username"
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
					</div>
				</form>
			</div>
			<div class="nav">
				<div class="main">
					<a href="">首页</a>
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
									<span>唇部</span>
								</h3>
								<p class="mcate-item-bd">
									<a href="">唇釉</a>
								</p>
								<p class="mcate-item-bd">
									<a href="">唇膏</a>
								</p>
							</li>
							<li>
								<h3 class="mcate-item-hd">
									<span>面部</span>
								</h3>
								<p class="mcate-item-bd">
									<a href="">腮红</a>
								</p>
								<p class="mcate-item-bd">
									<a href="">粉底液</a>
								</p>
								<p class="mcate-item-bd">
									<a href="">遮瑕</a>
								</p>
								<p class="mcate-item-bd">
									<a href="">面部清洁</a>
								</p>
								<p class="mcate-item-bd">
									<a href="">底妆与隔离</a>
								</p>
							</li>
							<li>
								<h3 class="mcate-item-hd">
									<span>眼部</span>
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
			<a href="首页x.html">主页</a><span>></span> <a href="彩妆.html">新用户注册</a>
		</div>
		<div class="main_regist">
			<div class="m_regist">
				<div class="regist_1">
					<span class="regist_1_head">注册成为会员</span>
				</div>
				<form action="user.do?method=regist" method="post">
					<div class="regist_1_sex">
						<span> 性别 <input type="radio" name="sex" id="sex"
							value="男士" checked="checked" /> 男士 <input type="radio" name="sex"
							id="sex" value="女士" /> 女士
						</span>

					</div>
					<div class="regist_1_input">
						<div class="regist_1_phone">
							<input type="text" name="phone" id="phone" placeholder="*手机号码"
								onblur="checkphone()" /><br> <span id="hg"></span>
						</div>
						<div class="regist_1_name">
							<input type="text" name="username" id="username1"
								placeholder="*姓名" /><br> <span id="hg1"></span>
						</div>
					</div>
					<div class="regist_pwd">
						<div class="regist_1_pwd">
							<input type="password" name="password" id="pwd" placeholder="*密码"
								style="width: 320px; height: 37px;" />
							<div class="r_pwd" id="pwd_1"></div>
							<div class="r_pwd" id="pwd_2"></div>
							<div class="r_pwd" id="pwd_3"></div>
							<br />
							<div class="r_qiangdu">弱</div>
							<div class="r_qiangdu">中</div>
							<div class="r_qiangdu">强</div>
						</div>
						<div class="regist_1_pwd1">
							<input type="password" name="pwd1" id="pwd1" placeholder="*确认密码"
								style="width: 320px; height: 37px;" /> <span class="pwd_eql"></span>
						</div>
					</div>
					<div class="" style="width: 723px; height: 100px;">
						<div class="yzm_yanzheng">
							<div style="width: 330px; height: 52px;">
								<input type="text" name="pageCode" id="yzm" placeholder="请输入验证码" />
								<span
									style="cursor:pointer; display: block; width: 160px; float: right;margin-top: 9px;">
									<img src="check.do"
									onclick="this.src='check.do?'+new Date().getTime();"
									style="width: 130px; height: 37px; " />
								</span>
							</div>
							<span id="yz" style="color: red;"></span>
						</div>
						<div class="regist_1_mail">
							<input type="text" name="email" id="user_mail" placeholder="*邮箱"
								onblur="checkmail()" /><br> <span id="yx"></span>
						</div>
					</div>

					<div class="zhuce">
						<input type="checkbox" name="agreement" id="agreement" />我已阅读并同意协议<br>
						<span id="ag"></span>
						<input type="submit" name="regist" id="regist" value="注册" />
					</div>

				</form>

			</div>

		</div>
	</div>
</body>

<!--下拉遮拦-->
<script type="text/javascript"
	src="${pageContext.request.contextPath }/js/首页下拉遮拦.js"></script>
<!--登录模态框-->
<script type="text/javascript"
	src="${pageContext.request.contextPath }/js/login_model.js"></script>
<!--跟随导航-->
<script type="text/javascript"
	src="${pageContext.request.contextPath }/js/跟随导航.js"></script>
<!--密码验证-->
<script type="text/javascript"
	src="${pageContext.request.contextPath }/js/regist.js"></script>

<script type="text/javascript">

/**判断手机号是否被注册*/
window.onload = function(){
	$("#phone").blur(function(){
		var phone = $(this).val();
		var reg = /^1([358][0-9]|4[579]|66|7[0135678]|9[89])[0-9]{8}$/;
		if(phone==""){
			$("#hg").html("*手机号不能为空！");
		}
		if(!reg.test(phone)){
		    $("#hg").html("*不合格！")	   
		}else{
			 $.ajax({
                 url:"user.do?method=checkphone",
                 type:"POST",
                 contentType: "application/x-www-form-urlencoded;charset=utf-8",
                 data:"phone="+phone,
                 dataType:"text",
                 async:false,
                 success:function(result){
                     $("#hg").html(result);
                 }
             });
		}
	});
	
	$("#yzm").blur(function(){
		var pageCode = $(this).val();
		if(pageCode==""){
			$("#yz").html("*请输入验证码！");
		}else{
			$.ajax({
				url:"user.do?method=checkCode",
				type:"POST",
				contentType: "application/x-www-form-urlencoded;charset=utf-8",
				data:"pageCode="+pageCode,
				dataType:"text",
                async:false,
                success:function(result){
                    $("#yz").html(result);
                }
			})
		}
	})
}


/*判断密码一致*/
$("#regist").click(function(){
	var pwd = $("#pwd").val();
	var pwd1 = $("#pwd1").val();
	var y = $("#phone").val();
	var c = $("#yzm").val();
	var uname = $("#username1").val();
	var yzm = $("#yz").html();
	var sj = $("#hg").html();
	if(pwd!=pwd1){
		$(".pwd_eql").html("*密码不一致")
		$("#pwd1").val("")
		return false;
	}
	if(document.getElementById("agreement").checked==false){
		$("#ag").html("*请先同意协议");
		return false;
	}
	if(uname==""){
		$("#hg1").html("*姓名不能为空")
		return false;
	}if(y==""){
		$("#hg").html("*手机号不能为空")
		return false;
	}if(c==""){
		$("#yz").html("*请输入验证码！")
		return false;
	}if(yzm!=""){
		return false;
	}if(sj!=""){
		return false;
	}else{
		$(".pwd_eql").html("");
		$("#hg1").html("")
		$("#hg").html("")
		$("#yz").html("");
		$("#ag").html("");
		return true;
	}
	
})


function checkmail(){
    
	var z=$("#user_mail").val();
	var regx = /^[A-Za-z0-9\u4e00-\u9fa5]+@[a-zA-Z0-9_-]+(\.[a-zA-Z0-9_-]+)+$/;
	if(!regx.test(z) || z==null){
	    $("#yx").html("*不合格")
	   
	}else{
		$("#yx").html("")
	}
	
}


</script>
</html>



