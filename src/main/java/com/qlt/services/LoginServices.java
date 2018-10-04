package com.qlt.services;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Logger;

import com.qlt.connection.ConnectionsSQL;
import com.qlt.dto.ProductDto;
import com.qlt.form.UsersForm;

public class LoginServices {

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

	/*
	 * =============================================================================
	 * ========================= PUBLIC METHOD =====================================
	 * 
	 */
	/**
	 * 
	 * @param username
	 * @param password
	 * @return
	 * @throws SQLException
	 */
	public boolean getAccountLogin(UsersForm usersForm) throws SQLException {

		// Create SQL
		String checkAccount = "SELECT COUNT(1)  FROM USERS WHERE USER_NAME = ? and PASSWORD = ?";

		// Create object prepareStatement execute SQL
		PreparedStatement preparedStatement = connection.prepareStatement(checkAccount);
		preparedStatement.setString(1, usersForm.getUserName());
		preparedStatement.setString(2, usersForm.getPassword());

		ResultSet resultSet = preparedStatement.executeQuery();

		while (resultSet.next()) {
			int exists = resultSet.getInt(1);
			if (exists > 0) {
				LOGGER.info("Login success");
				return true;
			}
		}
		LOGGER.info("Login failed");
		return false;
	}

	public List<ProductDto> getListProduct() throws SQLException {

		// Create SQL
		String getUser = "SELECT " + "PRD.ID, " + "PRD.PRODUCT_CD, " + "PRD.PRODUCT_NAME, " + "PRD.PRODUCT_GRP, "
				+ "PP.RETAIL_PRICE, " + "PP.COST_PRICE" + " FROM PRODUCTS PRD INNER JOIN PRODUCT_PRICE PP "
				+ "ON PRD.ID = PP.PRODUCTS_ID;";

		Statement statement = connection.createStatement();

		ResultSet resultSet = statement.executeQuery(getUser);

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

	/*
	 * ==========================================================================
	 * ========================= PRIVATE METHOD =================================
	 */
}
