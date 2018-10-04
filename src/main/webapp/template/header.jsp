<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<header>
	<nav class="navbar navbar-expand-lg navbar-dark bg-dark my-nav">
		<div class="container-fluid">
			<a href="#" class="navbar-brand ilogo">Pharmacy</a>
			<button class="navbar-toggler" data-toggle="collapse"
				data-target="#navbarText">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse my-items-nav" id="navbarText">
				<!--mr-auto: chỉnh item sang trái -->
				<ul class="navbar-nav mr-auto">
					<li class="nav-item active"><a href="#" class="nav-link">
							<span> <i class="fas fa-heartbeat"></i>&nbsp; <label
								class="form-check-label cursor"> Bán thuốc</label>
						</span>
					</a></li>
					<li class="nav-item dropdown active"><a
						class="nav-link dropdown-toggle" href="#" id="navbarDropdown"
						role="button" data-toggle="dropdown" aria-haspopup="true"
						aria-expanded="false"> <span> <i
								class="fas fa-file-medical-alt"></i>&nbsp; <label
								class="form-check-label cursor" for="defaultCheck1">
									Hàng hóa </label>
						</span>
					</a>
						<div class="dropdown-menu dropdown-cmn imenudown"
							aria-labelledby="navbarDropdown">
							<a class="dropdown-item drop-header" href="#"> <span> <i
									class="fas fa-list-ul"></i>&nbsp; <label
									class="form-check-label cursor"> Danh mục thuốc </label>
							</span>
							</a> <a class="dropdown-item drop-header" href="#"> <span> <i
									class="fas fa-dollar-sign"></i>&nbsp; <label
									class="form-check-label cursor"> Thiết lập giá </label>
							</span>
							</a> <a class="dropdown-item drop-header" href="#"> <span> <i
									class="fas fa-calendar-check"></i>&nbsp; <label
									class="form-check-label cursor"> Kiểm kho </label>
							</span>
							</a>
						</div></li>
					<li class="nav-item dropdown active"><a
						class="nav-link dropdown-toggle" href="#" id="navbarDropdown"
						role="button" data-toggle="dropdown" aria-haspopup="true"
						aria-expanded="false"> <span> <i
								class="fas fa-exchange-alt"></i>&nbsp; <label
								class="form-check-label cursor" for="defaultCheck1">
									Giao dịch </label>
						</span>
					</a>
						<div class="dropdown-menu dropdown-cmn imenudown"
							aria-labelledby="navbarDropdown">
							<a class="dropdown-item drop-header" href="#"> <span> <i
									class="fas fa-file-alt"></i>&nbsp; <label
									class="form-check-label cursor" for="defaultCheck1">
										Hóa đơn </label>
							</span>
							</a> <a class="dropdown-item drop-header" href="#"> <span> <i
									class="fas fa-share-square"></i>&nbsp; <label
									class="form-check-label cursor" for="defaultCheck1">
										Nhập hàng </label>
							</span>
							</a>
						</div></li>
				</ul>
				<ul class="navbar-nav">
					<li class="nav-item dropdown active"><a href="#"
						class="nav-link dropdown-toggle" id="navbarDropdown" role="button"
						data-toggle="dropdown"> <span> <i
								class="fas fa-user-alt"></i>&nbsp; <label
								class="form-check-label" for="defaultCheck1"> Phan Hoang
							</label>
						</span>
					</a>
						<div class="dropdown-menu dropdown-cmn imenudown-account"
							aria-labelledby="navbarDropdown">
							<a href="#" class="dropdown-item drop-header drop-header">Thông tin tài khoản</a> <a
								href="#" class="dropdown-item drop-header drop-header">Xem báo cáo cuối ngày</a> <a
								href="#" class="dropdown-item drop-header drop-header">Đổi mật khẩu</a>
							<div class="dropdown-divider"></div>
							<a href="#" class="dropdown-item drop-header">Đăng xuất</a>
						</div></li>
				</ul>
			</div>
		</div>
	</nav>
</header>