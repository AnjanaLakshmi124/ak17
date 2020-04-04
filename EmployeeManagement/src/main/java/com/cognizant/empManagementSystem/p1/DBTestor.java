package com.cognizant.empManagementSystem.p1;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBTestor {
	public static void main(String[] args) throws SQLException {
		Connection con=null;
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
		
		con=DriverManager.getConnection("jdbc:mysql://localhost:3306/group10","root","root");
		if(con!=null) {
			System.out.println("success");
		}} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		}
	}

