<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<div class="col-12 col-sm-12 col-md-12 col-lg-9 col-xl-10">
	<div class="d-flex">
		<div class="mr-auto p-2 align-self-center"
			style="text-transform: uppercase;">
			<h5>DANH MỤC THUỐC</h5>
		</div>
		<div class="p-2">
			<!-- Example single danger button -->
			<div class="btn-group" style="display: none;">
				<button type="button" class="btn btn-sm btn-danger dropdown-toggle"
					data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
					Hành động</button>
				<div class="dropdown-menu">
					<a class="dropdown-item" href="#">Action</a> <a
						class="dropdown-item" href="#">Another action</a> <a
						class="dropdown-item" href="#">Something else here</a>
					<div class="dropdown-divider"></div>
				</div>
			</div>
			<button type="submit" class="btn btn-sm btn-success btn-head"
				data-toggle="modal" data-target="#nhapthuoc" data-backdrop="static">
				<i class="fas fa-plus-circle"></i> &nbspNhập thuốc
			</button>
			<!-- 			<input id="ajaxAction" type="button" value="Ajax Action" -->
			<!-- 				class="btn btn-info btn-sm" /> -->
		</div>
	</div>
	<div class="row wrap-list-prd">
		<div class="col-12">
			<div class="table-responsive-lg table-1">
				<form action="getID">
					<table id="tb-danhsachthuoc"
						class="table table-sm table-hover table-bordered display">
						<thead>
							<tr class="head-tb">
								<th style="width: 10%" class="parent-chk cursor"><input
									type="checkbox" class="check-all"></th>
								<th style="width: 15%">Mã thuốc</th>
								<th style="width: 20%">Tên thuốc</th>
								<th style="width: 15%">Nhóm thuốc</th>
								<th style="width: 15%">Giá bán</th>
								<th style="width: 10%">Giá gốc</th>
								<th style="width: 15%">Hành động</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach var="productDto" items="${productDtoList}">
								<tr id="check-body">
									<td class="cursor sub-chkbox"><input type="checkbox"
										class="check-some"> <input type="hidden" name="prdID"
										value="${productDto.productID}"></td>
									<td>${productDto.productCd}</td>
									<td>${productDto.productName}</td>
									<td>${productDto.productGrp}</td>
									<td>${productDto.retailPrice}</td>
									<td>${productDto.costPrice}</td>
									<td>
										<div class="btn-group mr-2" role="group"
											aria-label="First group">
											<button type="button" id="ajaxNoJson"
												class="btn btn-info btn-sm" data-toggle="modal"
												data-target="">
												<i class="fas fa-pen-square"></i>&nbsp;&nbsp;Sửa <input
													type="hidden" name="prdID" value="${productDto.productID}">
											</button>
											<button type="button" id="ajaxWithJson"
												class="btn btn-danger btn-sm">
												<i class="fas fa-trash-alt"></i>&nbsp;&nbsp;Xóa <input
													type="hidden" name="prdID" value="${productDto.productID}">
											</button>
										</div>
									</td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
				</form>
			</div>
		</div>
	</div>
	<div id="tableInfo"></div>
</div>
<%-- <c:import url="/template/popup/modal-nhapthuoc.jsp"></c:import> --%>
<c:import url="/template/popup/demo.jsp"></c:import>

<div id="modalNhapthuoc"></div>