package com.mindtree.utility;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

public class DBConnection {

	private static String JDBCURL = "jdbc:mysql://127.0.0.1:3306/webchallenge";
	private static String USERNAME = "root";
	private static String PASS = "9909";

	public static Connection getConnection() {
		Connection con = null;
		try {
			try {
				Class.forName("com.mysql.cj.jdbc.Driver");
			} catch (ClassNotFoundException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			con = DriverManager.getConnection(JDBCURL, USERNAME, PASS);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return con;
	}

}
