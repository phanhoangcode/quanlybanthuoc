package com.qlt.connection;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class ConnectionsSQL {
	private static final String URL = "jdbc:mysql://localhost:3306/hoangdp_test?allowPublicKeyRetrieval=true&useUnicode=yes&characterEncoding=UTF-8&autoReconnect=true&useSSL=false";
	private static final String USERNAME = "hoangdp";
	private static final String PASSWORD = "hoang24893";

	// Test connection
	public static void main(String[] args) {
		// Test connection
		if (getConnection() != null) {
			System.out.println("You made it, take control your database now!");
		} else {
			System.out.println("Failed to make connection!");
		}
	}

	// Get connection
	public static Connection getConnection() {
		try {
			System.out.println("== MySQL connection JDBC testing ==");
			// Load driver class
			Class.forName("com.mysql.jdbc.Driver");

		} catch (ClassNotFoundException e) {
			System.out.println("Where is your MySQL JDBC Driver?");
			e.printStackTrace();
		}
		System.out.println("MySQL JDBC Driver Registered!");
		Connection connection = null;

		try {
			// Create connection object
			connection = DriverManager.getConnection(URL, USERNAME, PASSWORD);
		} catch (SQLException e) {
			System.out.println("Connection Failed! Check output console");
			e.printStackTrace();
		}
		return connection;
	}
}
