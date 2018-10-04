<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<div class="modal fade" id="nhapthuoc" role="dialog">
	<div
		class="modal-dialog modal-dialog-centered modal-lg modal-nhapthuoc"
		role="document" data-backdrop="static">
		<div class="modal-content">
			<div class="modal-header">
				<h5 class="modal-title" id="exampleModalCenterTitle">Nhập thuốc</h5>
				<button type="button" class="close" data-dismiss="modal"
					aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
			</div>
			<div class="modal-body">
				<div class="container-fluid">
					<div class="row">
						<div class="col-12 col-sm-12 col-md-12 col-lg-8">
							<form>
								<div class="form-group row">
									<label for="colFormLabelSm"
										class="col-sm-2 col-12 col-form-label col-form-label-sm label-modal">Mã
										thuốc</label>
									<div class="col-sm-10 col-12 ">
										<input type="text" class="form-control form-control-sm"
											id="colFormLabelSm" placeholder="Nhập mã thuốc">
									</div>
								</div>
								<div class="form-group row">
									<label for="colFormLabelSm"
										class="col-sm-2 col-form-label col-form-label-sm label-modal">Tên
										thuốc</label>
									<div class="col-sm-10">
										<input type="text" class="form-control form-control-sm"
											id="colFormLabelSm" placeholder="Nhập tên thuốc">
									</div>
								</div>
								<div class="form-group row">
									<label for="colFormLabelSm"
										class="col-sm-2 col-form-label col-form-label-sm label-modal">Nhóm
										thuốc</label>
									<div class="col-sm-10">
										<input type="text" class="form-control form-control-sm"
											id="colFormLabelSm"
											placeholder="Nhập tên nhóm thuốc: dùng ajax success các nhóm thuốc">
									</div>
								</div>
								<div class="form-group row">
									<label for="colFormLabelSm"
										class="col-sm-2 col-form-label col-form-label-sm label-modal">Giá
										gốc</label>
									<div class="col-sm-5">
										<input type="text" class="form-control form-control-sm"
											id="colFormLabelSm">
									</div>
								</div>
								<div class="form-group row">
									<label for="colFormLabelSm"
										class="col-sm-2 col-form-label col-form-label-sm label-modal">Giá
										bán</label>
									<div class="col-sm-5">
										<input type="text" class="form-control form-control-sm"
											id="colFormLabelSm">
									</div>
								</div>
								<div class="form-group row">
									<label for="colFormLabelSm"
										class="col-sm-2 col-form-label col-form-label-sm label-modal">Tồn
										kho</label>
									<div class="col-sm-5">
										<input type="text" class="form-control form-control-sm"
											id="colFormLabelSm">
									</div>
								</div>
								<div class="form-group row">
									<label for="colFormLabelSm"
										class="col-sm-2 col-md-2 col-form-label col-form-label-sm label-modal">Đơn
										vị</label>
									<div class="col-sm-5 col-md-5">
										<select class="custom-select custom-select-sm">
											<option selected>Lựa chọn đơn vị thuốc: lọ, viên...</option>
											<option value="1">Viên</option>
											<option value="2">Lọ</option>
											<option value="3">Gói</option>
											<option value="3">Đơn vị khác</option>
										</select>
									</div>
									<label for="colFormLabelSm"
										class="col-sm-2 col-md-2 col-form-label col-form-label-sm label-modal">Số
										lượng</label>
									<div class="col-sm-3 col-md-3">
										<input type="text" class="form-control form-control-sm"
											id="colFormLabelSm">
									</div>
								</div>
							</form>
						</div>
						<div class="col-12 col-sm-12 col-md-12 col-lg-4">
							<div class="card text-center">

								<div class="card-body">
									<img class="card-img-top"
										src="http://photos.s-cute.com/130901/sample/contents/576_yuna/576_yuna_k04/002.jpg"
										alt="Card image cap">
								</div>
								<div class="card-footer text-muted">
									<a href="#" class="btn btn-sm btn-primary">Thêm ảnh</a>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="modal-footer mr-auto">
				<button type="button" class="btn btn-success btn-sm">
					<i class="fas fa-save"></i> <label class="form-check-label"
						for="defaultCheck1">Lưu và thêm mới</label>
				</button>
				<button type="button" class="btn btn-secondary btn-sm"
					data-dismiss="modal">
					<i class="fas fa-ban"></i> <label class="form-check-label"
						for="defaultCheck1">Bỏ qua</label>
				</button>
			</div>
		</div>
	</div>
</div>