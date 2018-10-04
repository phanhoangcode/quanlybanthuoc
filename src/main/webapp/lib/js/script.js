// @ts-nocheck
$(document).ready(function () {

	/* DataTables */

	$('#tb-danhsachthuoc').DataTable({
		"orderCellsTop": true,
		"ordering": false,
		columnDefs: [{
			orderable: false,
			targets: [0, 6]
		}],
		// select : {
		// style : 'multi',
		// selector : 'td:first-child'
		// },
		// order : [ [ 1, 'asc' ] ],
		"lengthChange": false,
		// "lengthMenu" : [ 5, 10, 20, 45, 80 ],
		"pageLength": 3,
		"searching": false,
		// disable showing page entries
		// "info" : false,
		/* full button: first...last */
		"pagingType": "full_numbers",
		// Setup fixed height
		// "scrollY" : "650px",
		/* Custom icon button paging */
		language: {
			paginate: {
				"first": '<i class="fas fa-angle-double-left"></i>',
				"previous": '<i class="fas fa-angle-left"></i>',
				"next": '<i class="fas fa-angle-right"></i>',
				"last": '<i class="fas fa-angle-double-right"></i>'
			}
		}
	});

	/* toggle icon sidebar */
	$(".toggle-search-1").click(function () {
		$("#searchBar-1").toggle(300);
		$(".icon-change-1").toggleClass('fa-minus-circle fa-plus-circle');
	});
	$(".toggle-search-2").click(function () {
		$(".icon-change-2").toggleClass('fa-minus-circle fa-plus-circle');
		$("#searchBar-2").toggle(300);

	});

	// // Jquery checkall
	// $(".chkb-all").click(function() {
	//
	// var statusCheck = $("#tb-danhsachthuoc").find("tr.selected").length;
	// var statusCheck2 = $("#tb-danhsachthuoc tbody").children("tr").length;
	// // console.log("1: " + statusCheck + ", 2: " + statusCheck2);
	//
	// var checkStt = statusCheck != statusCheck2;
	//
	// // console.log(checkStt);
	// if (checkStt == true) {
	// $('.check-all').prop('checked', true);
	// $("tr.odd, tr.even").addClass("selected");
	// } else if (checkStt == false) {
	// $('.check-all').prop('checked', false);
	// $("tr.odd, tr.even").removeClass("selected");
	// }
	// });

	var prdIdList = new Array();
	$("td.select-checkbox").click(function () {
		// Khi click vào checkbox --> kiểm tra xem thẻ cha tr: có class
		// selected
		// được add thêm hay không
		var check = $(this).parent("tr").hasClass("selected");
		console.log(check);
		// nếu có thì check == false, không thì check = true
		if (check == false) {
			// nếu check = false, thì lấy giá trị của thẻ con input -->
			// add vào
			// list ID
			var prdIdAdd = $(this).find("input").val();
			prdIdList.push(prdIdAdd);
			console.log(prdIdList);
		} else if (check == true && prdIdList.length > 0) {
			// Nếu bỏ check thì xoá dữ liệu ID tương ứng trong mảng
			var prdIdDeleted = $(this).find("input").val();
			prdIdList.splice($.inArray(prdIdDeleted, prdIdList), 1);
			console.log(prdIdList);
		} else if (check == false && prdIdList.length == 0) {
			console.log(prdIdList.length);
		}
	});

	// Demo AJAX
	$("#ajaxAction").click(function () {
		console.log(prdIdList.length);
		if (prdIdList.length == 0) {
			console.log("prdIdList không được phép null");
		} else if (prdIdList.length > 0) {
			$.ajax({
				type: 'POST',
				data: {
					"actionType": "ajaxNotJson",
					"prdIdList1": prdIdList,
					"email": "Phan Hoang"
				},
				url: 'deleteAction',
				success: function (result) {
					console.log(prdIdList);
				}
			});
		}
	});

	// Load AJAX to modal update product info: Not JSON
	$("button#ajaxNoJson").click(function () {
		console.log("dasdas");
		var idUpd = $(this).find("input").val();
		$.ajax({
			type: 'POST',
			data: {
				"actionType": "ajaxNotJson",
				"idUpdPrd": idUpd
			},
			url: 'updProductAction',
			success: function (data, status, xhr) {
				console.log(xhr.getResponseHeader("Content-Type"));
				$('#modalNhapthuoc').html(data);
				$('#suathongtinthuoc').modal('show');
			}
		});
	});

	// Load AJAX to modal update product info: With JSON
	$("button#ajaxWithJson").click(function () {
		var idUpd = $(this).find("input").val();
		$.ajax({
			type: 'POST',
			data: {
				"actionType": "ajaxWithJson",
				"idUpdPrd": idUpd
			},
			dataType: 'json',
			url: 'updProductAction',
			success: function (response, status, xhr) {
				// Get loại thông tin mà Ajax trả về từ servlet
				console.log(xhr.getResponseHeader("Content-Type"));
				// var productDetail =
				// JSON.parse(JSON.stringify(response));
				// stringify: chuyển đối tượng sang array, từ
				// array sang JSON
				var productDetail = $.parseJSON(JSON.stringify(response));
				console.log(productDetail);
				// Set value từ JSON lên form input
				$('#suathongtinthuocJSON').modal('show');
				$('#productCd').val(productDetail.productCd);
				$('#productName').val(productDetail.productName);
				$('#costPrice').val(productDetail.costPrice);
				$('#retailPrice').val(productDetail.retailPrice);
			},
			error: function (error) {
				console.log(" Loi roi , tim loi di ");
			}
		});
	});

});