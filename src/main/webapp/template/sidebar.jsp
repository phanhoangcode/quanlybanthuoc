<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<div class="col-12 col-sm-12 col-md-12 col-lg-3 col-xl-2">
	<form action="">
		<article class="search-sb" style="padding-top: 12px;">
			<h6 class="title-sidebar cursor">Tìm kiếm</h6>
			<aside class="">
				<input type="text" class="form-control form-control-sm"
					id="exampleInputEmail1" aria-describedby="emailHelp"
					placeholder="Tìm theo tên thuốc, mã thuốc">
			</aside>
		</article>
		<!-- NHÓM HÀNG -->
		<article class="search-sb" style="padding-top: 12px;">
			<a href="#" class="toggle-search-1">
				<h6 class="title-sidebar cursor">
					Nhóm hàng <i class="fas fa-minus-circle icon-change-1"
						style="float: right;"></i>
				</h6>
			</a>
			<aside id="searchBar-1" class="">
				<input type="text"
					class="form-control form-control-sm input-search-sidebar"
					id="exampleInputEmail1" aria-describedby="emailHelp"
					placeholder="Tìm theo nhóm hàng">
				<div class="custom-control custom-radio input-under-sidebar">
					<input type="radio" id="customRadio1" name="customRadio"
						class="custom-control-input" checked> <label
						class="custom-control-label cursor" for="customRadio1">Tất cả</label>
				</div>
				<div class="custom-control custom-radio input-under-sidebar">
					<input type="radio" id="customRadio2" name="customRadio"
						class="custom-control-input"> <label
						class="custom-control-label cursor" for="customRadio2">Thuốc
						kháng sinh</label>
				</div>
				<div class="custom-control custom-radio input-under-sidebar">
					<input type="radio" id="customRadio3" name="customRadio"
						class="custom-control-input"> <label
						class="custom-control-label cursor" for="customRadio3">Thuốc bổ</label>
				</div>
				<div class="custom-control custom-radio input-under-sidebar">
					<input type="radio" id="customRadio4" name="customRadio"
						class="custom-control-input"> <label
						class="custom-control-label cursor" for="customRadio4">Thuốc
						chống viêm</label>
				</div>
				<div class="custom-control custom-radio input-under-sidebar">
					<input type="radio" id="customRadio5" name="customRadio"
						class="custom-control-input"> <label
						class="custom-control-label cursor" for="customRadio5">Thuốc giảm
						đau</label>
				</div>
				<div class="custom-control custom-radio input-under-sidebar">
					<input type="radio" id="customRadio6" name="customRadio"
						class="custom-control-input"> <label
						class="custom-control-label cursor" for="customRadio6">Thuốc cảm
						cúm</label>
				</div>
			</aside>
		</article>
		<!-- TỒN KHO -->
		<article class="search-sb" style="padding-top: 12px;">
			<a href="#" class="toggle-search-2">
				<h6 class="title-sidebar cursor">
					Tồn kho <i class="fas fa-minus-circle icon-change-2"
						style="float: right;"></i>
				</h6>
			</a>
			<aside id="searchBar-2" class="">
				<div class="custom-control custom-radio input-under-sidebar">
					<input type="radio" id="customRadio7" name="customRadio"
						class="custom-control-input"> <label
						class="custom-control-label cursor" for="customRadio7">Còn hàng
						trong kho</label>
				</div>
				<div class="custom-control custom-radio input-under-sidebar">
					<input type="radio" id="customRadio8" name="customRadio"
						class="custom-control-input"> <label
						class="custom-control-label cursor" for="customRadio8">Hết hàng
						trong kho</label>
				</div>
			</aside>
		</article>
	</form>
</div>