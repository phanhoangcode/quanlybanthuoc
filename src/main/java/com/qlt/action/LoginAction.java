package com.qlt.action;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;
import java.util.logging.Logger;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.collections4.CollectionUtils;
import org.apache.commons.lang3.StringUtils;

import com.qlt.dto.ProductDto;
import com.qlt.form.UsersForm;
import com.qlt.services.LoginServices;

/**
 * Servlet implementation class LoginAction
 */
@WebServlet(name = "Login Servlet", urlPatterns = "/loginAction")
public class LoginAction extends HttpServlet {
	/* ======================================== */
	/* ================== DI ================== */
	/* ======================================== */
	protected LoginServices loginServices = new LoginServices();

	/* ======================================== */
	/* =============== CONST ================== */
	/* ======================================== */
	private static final long serialVersionUID = 1L;
	private static final String LOGIN = "login";
	private static final String REGIST_USER = "regist-user";

	/* ======================================== */
	/* ============ PUBLIC METHOD ============= */
	/* ======================================== */

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public LoginAction() {
		super();
		// TODO Auto-generated constructor stub
	}

	/* ======================================== */
	/* ============ PRIVATE METHOD ============ */
	/* ======================================== */

	/* ======================================== */
	/* ========== PROTECTED METHOD ============ */
	/* ======================================== */

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

		UsersForm usersForm = new UsersForm();

		usersForm.setUserName(request.getParameter("username"));
		usersForm.setPassword(request.getParameter("password"));

		String buttonType = request.getParameter("btn-check");

		System.out.println("\n param: " + usersForm);

		if (StringUtils.equals(buttonType, LOGIN)) {
			try {
				if (loginServices.getAccountLogin(usersForm)) {

					List<ProductDto> productDtoList = loginServices.getListProduct();

					if (CollectionUtils.isNotEmpty(productDtoList)) {

						System.out.println("List product: " + productDtoList);
						RequestDispatcher dispatcher = request.getRequestDispatcher("/views/index.jsp");
						request.setAttribute("productDtoList", productDtoList);
						dispatcher.forward(request, response);
					} else {
						System.out.println();
						Logger.getLogger(LoginAction.class.getName()).info("Lỗi rồi ak: ))))");
					}

				}
			} catch (SQLException e) {
				System.out.println("Mã lỗi: " + e.getMessage());
				e.printStackTrace();
			}
		} else if (StringUtils.equals(buttonType, REGIST_USER)) {
			RequestDispatcher dispatcher = request.getRequestDispatcher("/registUser");
			dispatcher.forward(request, response);
			// response.sendRedirect("/registUser");
			// response.sendRedirect("login/registUser.jsp");
		}
	}
}
