package com.jarq.testdb;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



@WebServlet("/TestDbServlet")
public class TestDbServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		// setup connection variables
		
		String user = "admin_admin";
		String pass = "jarek1234";
		String jdbcUrl = "jdbc:mysql://jarq.nazwa.pl:3306/admin_db";
		String driver = "com.mysql.jdbc.Driver";
		
		// get connection to dbs
		
		try {
			PrintWriter out = response.getWriter();
			
			out.println("Connecting to database: " + jdbcUrl);
			
			Class.forName(driver);
			
			Connection con = DriverManager.getConnection(jdbcUrl, user, pass);
			
			out.println("Success!!");
			
			con.close();
		}
		catch (Exception ex) {
			ex.printStackTrace();
			throw new ServletException(ex);
		}

	}

}
