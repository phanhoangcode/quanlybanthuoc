<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!doctype html>
<html lang="en">

<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css"
	integrity="sha384-9gVQ4dYFwwWSjIDZnLEWnxCjeSWFphJiwGPXr1jddIhOegiu1FwO5qRGvFXOdJZ4"
	crossorigin="anonymous">

<link href="https://fonts.googleapis.com/css?family=Open+Sans"
	rel="stylesheet">

<title>Hello, world!</title>

<style type="text/css">
body, .font-btn, input[type="text"], input[type="password"] {
	font-family: 'Open Sans', sans-serif;
	font-size: 15px;
}

.wrap-main {
	min-height: 100vh;
	background-color: #ecf0f1;
	padding: 15px;
	align-items: center;
	margin: auto;
	display: flex;
	flex-wrap: wrap;
	justify-content: center;
}

.row-login {
	width: 450px;
}

.login-form {
	border-radius: 5px;
	padding: 30px 40px;
	width: 100%;
	background: #fff;
}

.wrap-button-login {
	padding-top: 20px;
}

.border-input {
	border-radius: 25px;
}

.btn-main {
	width: 170px;
	border: 1px #1678C2;
	background-color: #1678C2;
}

.btn-main:hover {
	background-color: #16AB39;
	border: 1px #16AB39;
}

a, a:visited, a:link, a:hover, a:active {
	text-decoration: none;
}

a:hover, a:active {
	color: #636e72;
}

.a-social {
	font-size: 22px;
	color: #fff;
	display: -webkit-box;
	display: -webkit-flex;
	display: -moz-box;
	display: -ms-flexbox;
	display: flex;
	justify-content: center;
	align-items: center;
	width: 50px;
	height: 50px;
	border-radius: 50%;
	margin: 5px;
}

.bg-1 {
	background-color: #304D8A;
}

.bg-2 {
	background-color: #E0321C;
}

.bg-1:hover {
	color: #fff;
	background-color: #116DC2;
}

.bg-2:hover {
	color: #fff;
	background-color: #ff3300;
}

/* Icon view inside input */
.input-icon {
	position: relative;
}

.view-pass {
	font-size: 15px;
	color: #999999;
	display: -webkit-box;
	display: -webkit-flex;
	display: -moz-box;
	display: -ms-flexbox;
	display: flex;
	align-items: center;
	position: absolute;
	height: 100%;
	top: 0;
	right: 12px;
	padding: 0 5px;
	margin-top: 15px;
}
</style>
</head>

<body>
	<div class="container-fluid wrap-main">
		<div class="row justify-content-center row-login">
			<form class="login-form" action="loginAction" method="post">
				<div class="form-group">
					<label for="exampleInputEmail1">Tên đăng nhập</label> <input
						type="text" name="username"
						class="form-control form-control-lg border-input"
						id="exampleInputEmail1" aria-describedby="emailHelp">
				</div>
				<div class="form-group input-icon">
					<label for="exampleInputPassword1">Mật khẩu</label> <input
						type="password" name="password"
						class="form-control form-control-lg border-input"
						id="exampleInputPassword1"> <a href="" class="view-pass">
						<i class="fas fa-eye"></i>
					</a>
				</div>
				<div class="form-check">
					<div class="row justify-content-center">
						<div class="col-auto mr-auto">
							<div class="custom-control custom-checkbox" style="left: -18px;">
								<input type="checkbox" class="custom-control-input"
									id="customCheck1"> <label class="custom-control-label"
									for="customCheck1">Nhớ đăng nhập</label>
							</div>
						</div>
						<div class="col-auto">
							<a href="#" class="text-primary">Quên mật khẩu ?</a>
						</div>
					</div>
				</div>

				<div class="form-group wrap-button-login">
					<div class="row justify-content-center">
						<div class="col-auto" style="margin-bottom: 20px;">
							<button type="submit" name="btn-check" value="login"
								class="btn btn-success btn-block btn-main btn-lg border-input">
								<span class="font-btn">Đăng nhập</span>
							</button>
						</div>
						<div class="col-auto">
							<button type="submit" name="btn-check" value="regist-user"
								class="btn btn-success btn-main btn-lg border-input">
								<span class="font-btn">Đăng ký</span>
							</button>
						</div>
					</div>
				</div>

				<div class="dropdown-divider"></div>

				<div class="row" style="text-align: center;">
					<div class="col-12">
						<p class="text-muted">đăng nhập bằng mạng xã hội</p>
					</div>
				</div>
				<div class="row justify-content-center">
					<div class="col-2">
						<a href="#" class="a-social bg-1"><i class="fab fa-facebook-f"></i></a>
					</div>
					<div class="col-2">
						<a href="#" class="a-social bg-2"> <i
							class="fab fa-google-plus-g"></i></a>
					</div>
				</div>
			</form>
		</div>
	</div>
	<!-- Optional JavaScript -->
	<!-- jQuery first, then Popper.js, then Bootstrap JS -->
	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
		integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
		crossorigin="anonymous"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js"
		integrity="sha384-cs/chFZiN24E4KMATLdqdvsezGxaGsi4hLGOzlXwp5UZB1LY//20VyM2taTB4QvJ"
		crossorigin="anonymous"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.min.js"
		integrity="sha384-uefMccjFJAIv6A+rW+L4AHf99KvxDjWSu1z9VI8SKNVmz4sk7buKt/6v9KI65qnm"
		crossorigin="anonymous"></script>

	<script defer
		src="https://use.fontawesome.com/releases/v5.0.10/js/all.js"
		integrity="sha384-slN8GvtUJGnv6ca26v8EzVaR9DC58QEwsIk9q1QXdCU8Yu8ck/tL/5szYlBbqmS+"
		crossorigin="anonymous"></script>
</body>

</html>