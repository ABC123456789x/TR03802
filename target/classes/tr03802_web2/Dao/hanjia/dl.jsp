<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
* {
	margin: 0;
	padding: 0;
}

#box {
	height: 100vh;
	background-image: url('../image/bj.jpg');
	background-repeat: no-repeat;
	background-size: 100% 100%;
}

.wz {
	color: white;
	position: absolute;
	top: 45%;
	left: 16%;
}

#dl {
	width: 380px;
	height: 300px;
	margin: 0px auto;
	background-color: #fff;
	position: absolute;
	top: 20%;
	right: 10%;
}

.shang {
	margin: 18px 0px 10px 0px;
	border-bottom: 1px solid #CCCCCC;
	margin: 0 auto;
	height: 61px;
	position: relative;
}

.xia {
	width: 380px;
	height: 370px;
	background-color: #f1f1f1;
	margin-top: 21px;
}

.shang a {
	width: 136px;
	text-align: center;
	height: 11px;
	line-height: 15px;
	margin: 11px;
	padding: 13px;
	border-radius: 15px;
	display: inline-block;
}

.action {
	color: white;
	background-color: blue;
}

a:hover {
	cursor: pointer;
}

@
keyframes .x {from { transform:translateX(0px);
	
}

to {
	transform: translateX(205px);
}

}
.x {
	transition: 1s;
}

.div1 {
	width: 100%;
	height: 100%;
	display: block;
}

.div2 {
	width: 100%;
	height: 100%;
	display: none;
}

.x {
	width: 175px;
	height: 3px;
	background-color: green;
	position: absolute;
	top: 60px;
	left: 0px;
}

.form {
	border-radius: 10px;
	position: absolute;
	top: 34%;
	right: 4%;
	background-color: white;
	width: 332px;
	height: 270px;
	padding: 30px 10px;
}

input {
	border: 1px black solid;
	border-radius: 10px;
	height: 40px;
	width: 250px;
}

.dlu {
	color: white;
	background-color: #409EFF;
	width: 330px;
}

.dlubox {
	width: 330px;
	margin: 0 auto;
}

.zhbox {
	margin-top: 20px;
	height: 63px;
}

.mmbox {
	height: 63px;
	margin-top: 20px;
	margin-bottom: 20px;
}

span {
	display: none;
	color: red;
	margin-left: 48px;
	font-size: 12px;
}
</style>
<script>
	function jz() {
		var zh = document.querySelector("#zh").value;
		var mm = document.querySelector("#mm").value;

		if (zh === "") {
			document.querySelector(".zhpd").style.display = "block";
			return false;
		} else {
			document.querySelector(".zhpd").style.display = "none";
		}

		if (mm === "") {
			document.querySelector(".mmpd").style.display = "block";
			return false;
		} else {
			document.querySelector(".mmpd").style.display = "none";
		}
	}
	function wx() {
		var zh = document.querySelector("#wxzh").value;
		var mm = document.querySelector("#wxmm").value;

		if (zh === "") {
			document.querySelector(".wxzh").style.display = "block";
			return false;
		} else {
			document.querySelector(".wxzh").style.display = "none";
		}

		if (mm === "") {
			document.querySelector(".wxmm").style.display = "block";
			return false;
		} else {
			document.querySelector(".wxmm").style.display = "none";
		}
	}
</script>
</head>
<body>
	<div id="box">
		<div class="wz">
			<h1>停车云&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;智慧停车管理系统</h1>
		</div>
		<div id="dl">
			<div class="shang">
				<a class="a1 action">账号登录</a> <a class="a1">微信登录</a>
				<div class="x"></div>
			</div>

			<div class="xia">
				<div class="div1">
					<div class="form">
						<form action="zhanghao" method="post" onsubmit="return jz();">
							<div class="zhbox">
								账号：<input type="text" name="zhanghao" id="zh" /><br /> <span
									class="zhpd">账号不能为空</span>
							</div>
							<div class="mmbox">
								密码：<input type="password" name="zpwd" id="mm" /><br /> <span
									class="mmpd">密码不能为空</span>
							</div>
							<div class="dlubox">
								<input type="submit" value="登录" class="dlu" id="dll" />
							</div>
						</form>
					</div>
				</div>
				<div class="div2">
					<div class="form">
						<form action="weixin" method="post" onsubmit="return wx();">
							<div class="zhbox">
								微信账号：<input type="text" name="weixin" id="wxzh" " /><br /> <span
									class="wxzh">账号不能为空</span>
							</div>
							<div class="mmbox">
								密码：<input type="password" name="wpwd" id="wxmm" /><br /> <span
									class="wxmm">密码不能为空</span>
							</div>
							<div class="dlubox">
								<input type="submit" value="登录" class="dlu" />
							</div>
						</form>
					</div>
				</div>
			</div>

		</div>
	</div>
</body>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script type="text/javascript">
	$(document).ready(function() {
		$(".a1").eq(0).click(function() {
			$('.a1').removeClass('action');
			$(this).addClass('action');
			$(".x").css('left', '0px');
			$('.div2').css('display', 'none');
			$('.div1').css('display', 'block');

			$(".a1").css('background-color', 'transparent');

			$(this).css('background-color', 'blue');
			$(".a1").css('color', 'black');

			$(this).css('color', 'white');
		});

		$(".a1").eq(1).click(function() {
			$('.a1').removeClass('action');
			$(this).addClass('action');
			$(".x").css('left', '205px');
			$('.div1').css('display', 'none');
			$('.div2').css('display', 'block');
			$(".a1").css('background-color', 'transparent');

			$(this).css('background-color', 'blue');
			$(".a1").css('color', 'black');

			$(this).css('color', 'white');
		});
	})
	$(document).ready(function() {
		$('.a1').click(function() {
			$('.a1').removeClass('action')
			$(this).addClass('action')
			$(this).css('color', 'green').siblings().css('color', 'black')
			$('.div1').css('display', 'none')
			$('.div1').eq($(this).index()).css('display', 'block')
			$(".a1").css('background-color', 'transparent');

			$(this).css('background-color', 'blue');
			$(".a1").css('color', 'black');

			$(this).css('color', 'white');
		})
	})
</script>
</html>