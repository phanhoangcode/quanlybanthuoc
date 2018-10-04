package com.qlt.action;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Logger;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.lang3.StringUtils;

import com.google.gson.Gson;
import com.qlt.connection.ConnectionsSQL;
import com.qlt.dto.GetInfoPrd;
import com.qlt.services.LoginServices;

/**
 * Servlet implementation class UpdateProduct
 */
@WebServlet(urlPatterns = "/updProductAction")
public class UpdateProduct extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private Connection connection = ConnectionsSQL.getConnection();
	private final static Logger LOGGER = Logger.getLogger(LoginServices.class.getName());

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public UpdateProduct() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String idUpdPrd = request.getParameter("idUpdPrd");
		String actionType = request.getParameter("actionType");
		System.out.println("Input info: " + idUpdPrd + "," + actionType);
		if (StringUtils.isNotEmpty(actionType) && StringUtils.isNotEmpty(idUpdPrd)
				&& StringUtils.equals(actionType, "ajaxNotJson")) {
			try {
				GetInfoPrd getInfoPrd = getInfoProduct(idUpdPrd);
				System.out.println("+ Ajax not JSON: " + getInfoPrd);
				RequestDispatcher dispatcher = request.getRequestDispatcher("/template/popup/popup-editProduct.jsp");
				request.setAttribute("getInfoPrd", getInfoPrd);
				dispatcher.forward(request, response);
			} catch (SQLException e) {
				LOGGER.info("Lỗi get info product: " + e.getMessage());
			}
		} else if (StringUtils.isNotEmpty(actionType) && StringUtils.isNotEmpty(idUpdPrd)
				&& StringUtils.equals(actionType, "ajaxWithJson")) {
			try {
				GetInfoPrd getInfoPrd = getInfoProduct(idUpdPrd);
				System.out.println("+ Ajax with JSON: " + getInfoPrd);
				Gson gson = new Gson();
				String productDetailsJson = gson.toJson(getInfoPrd);
				System.out.println("\n Parse JSON: " + productDetailsJson);				
				response.setContentType("application/json; charset=UTF-8");
//				RequestDispatcher dispatcher = request.getRequestDispatcher("/template/popup/demo.jsp");
//				request.setAttribute("productDetailsJson", productDetailsJson);
//				dispatcher.forward(request, response);
				response.getWriter().write(productDetailsJson);

			} catch (SQLException e) {
				LOGGER.info("Lỗi get info product: " + e.getMessage());
			}
		}

	}

	private GetInfoPrd getInfoProduct(String idUpdPrd) throws SQLException {
		String getInfoSQL = "SELECT PRD.PRODUCT_CD, " + "PRD.PRODUCT_NAME, PP.COST_PRICE, " + "PP.RETAIL_PRICE "
				+ "FROM PRODUCTS PRD " + "INNER JOIN PRODUCT_PRICE PP " + "ON PRD.ID = PP.PRODUCTS_ID "
				+ "WHERE PRD.ID = ?";

		PreparedStatement preparedStatement = connection.prepareStatement(getInfoSQL);
		preparedStatement.setString(1, idUpdPrd);

		ResultSet resultSet = preparedStatement.executeQuery();
		GetInfoPrd getInfoPrd = new GetInfoPrd();
		while (resultSet.next()) {
			getInfoPrd.setProductCd(resultSet.getString(1));
			getInfoPrd.setProductName(resultSet.getString(2));
			getInfoPrd.setCostPrice(resultSet.getInt(3));
			getInfoPrd.setRetailPrice(resultSet.getInt(4));
		}
		LOGGER.info("Get thanh cong");
		System.out.println(getInfoPrd);
		return getInfoPrd;
	}

}
