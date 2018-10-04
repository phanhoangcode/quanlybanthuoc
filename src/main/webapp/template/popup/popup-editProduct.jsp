<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<div class="modal fade" id="suathongtinthuoc" tabindex="-1"
	role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
	<div class="modal-dialog modal-dialog-centered" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<h5 class="modal-title" id="exampleModalLabel">Cập nhật thông
					tin thuốc</h5>
				<button type="button" class="close" data-dismiss="modal"
					aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
			</div>
			<div class="modal-body">
				<form>
					<div class="form-group">
						<label for="recipient-name" class="col-form-label">Mã
							thuốc</label> <input type="text" class="form-control form-control-sm"
							value="${getInfoPrd.productCd}" id="recipient-name">
					</div>
					<div class="form-group">
						<label for="recipient-name" class="col-form-label">Tên
							thuốc:</label> <input type="text" value=""
							class="form-control form-control-sm" id="recipient-name">
					</div>
					<div class="form-group">
						<label for="recipient-name" class="col-form-label">Giá
							gốc:</label> <input type="text" value=""
							class="form-control form-control-sm" id="recipient-name">
					</div>
					<div class="form-group">
						<label for="recipient-name" class="col-form-label">Giá
							bán:</label> <input type="text" value=""
							class="form-control form-control-sm" id="recipient-name">
					</div>
				</form>
			</div>
			<div class="modal-footer">
				<button type="submit" class="btn btn-success btn-sm">
					<i class="fas fa-save"></i> <label class="form-check-label"
						for="defaultCheck1">Cập nhật thông tin</label>
				</button>
				<button type="submit" class="btn btn-secondary btn-sm"
					data-dismiss="modal">
					<i class="fas fa-ban"></i> <label class="form-check-label"
						for="defaultCheck1">Bỏ qua</label>
				</button>
			</div>
		</div>
	</div>
</div>