<%@page import="java.net.URLDecoder"%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<link href="css/bootstrap.min.css" rel="stylesheet">
<script type="text/javascript" src="js/jquery.min.js"></script>
<style type="text/css">
#div {
	margin-top: 50px;
}

#div1 {
	margin-left: 1190px;
}

#div2 {
	margin-left: 1200px;
}

#div3 {
	margin-left: 1200px;
	display: none;
}
#msg {
	margin-left: 1200px;
	color: red;
}

input {
	margin-top: 20px;
}
</style>

<script type="text/javascript">
	$(function() {
		$("#bot1").click(function() {
			$("#div2").css("display", "block");
			$("#div3").css("display", "none");
		});

		$("#bot2").click(function() {
			$("#div2").css("display", "none");
			$("#div3").css("display", "block");
		});
	});
</script>

</head>

<body style="background-image: url(img/hhw.jpg) ;">
	<div class="row" id="div">
		<div class="row" id="div1">

			<button type="button" class="btn btn-success btn-lg" id="bot1">员工登录</button>
			<button type="button" class="btn btn-primary btn-lg" id="bot2">管理员登录</button>

		</div>

		<div class="row" id="div2">
			<form class="form-inline" action="empLogin" method="post">

				<div class="row">
					<input type="text" name="eAccount" class="form-control"
						style="width: 250px ; height: 40px;" placeholder="员工姓名">
				</div>

				<div class="row">
					<input type="password" name="ePassword" class="form-control"
						style="width: 250px ; height: 40px;" placeholder="密码">
				</div>

				<div class="row">
					<input type="submit" class="btn btn-success" value="登录"
						style="width: 250px ; height: 40px;">
				</div>

			</form>
		</div>

		<div class="row" id="div3">
			<form class="form-inline" action="#" method="post">

				<div class="row">
					<input type="text" name="" class="form-control"
						style="width: 250px ; height: 40px;" placeholder="管理员姓名">
				</div>

				<div class="row">
					<input type="password" name="" class="form-control"
						style="width: 250px ; height: 40px;" placeholder="密码">
				</div>

				<div class="row">
					<input type="submit" class="btn btn-success" value="登录"
						style="width: 250px ; height: 40px;">
				</div>

			</form>

		</div>
		
		<div class="row" id="msg">
			${ msg }
		</div>
	</div>
	
</body>

</html>