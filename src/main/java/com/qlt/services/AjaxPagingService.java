package com.qlt.services;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Logger;

import com.qlt.connection.ConnectionsSQL;
import com.qlt.dto.ProductDto;

public class AjaxPagingService {
	/*
	 * =============================================================================
	 * ========================= DI ================================================
	 */
	private Connection connection = ConnectionsSQL.getConnection();

	/*
	 * =============================================================================
	 * ========================= CONST =============================================
	 */
	private final static Logger LOGGER = Logger.getLogger(LoginServices.class.getName());

	public List<ProductDto> ajaxPagingProductList(int current_page, int total_page) throws SQLException {

		// Create SQL
		String getListProductAjax = "SELECT PRD.ID, PRD.PRODUCT_CD, PRD.PRODUCT_NAME, "
				+ "PRD.PRODUCT_GRP, PP.RETAIL_PRICE, PP.COST_PRICE FROM PRODUCTS PRD " + "INNER JOIN PRODUCT_PRICE PP "
				+ "ON PRD.ID = PP.PRODUCTS_ID LIMIT ?,?;";
		
		Statement statement = connection.createStatement();

		ResultSet resultSet = statement.executeQuery(getListProductAjax);

		List<ProductDto> productDtoList = new ArrayList<ProductDto>();
		
		while (resultSet.next()) {
			ProductDto productDto = new ProductDto();
			productDto.setProductID(resultSet.getInt(1));
			productDto.setProductCd(resultSet.getString(2));
			productDto.setProductName(resultSet.getString(3));
			productDto.setProductGrp(resultSet.getString(4));
			productDto.setRetailPrice(resultSet.getInt(5));
			productDto.setCostPrice(resultSet.getInt(6));

			// Create value list product
			productDtoList.add(productDto);
		}
		LOGGER.info("Get list product is success, size is: " + productDtoList.size());
		return productDtoList;
	}
}
