package com.javatpoint;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

public class RegisterDao {
	
	public static int save(RegisterAction r)
	{
		int status=0;
		try
		{
			Class.forName("oracle.jdbc.driver.OracleDriver");
			Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","sinu","sinu");
			PreparedStatement ps=con.prepareStatement("insert into emp2 values(?,?,?,?,?)");
			ps.setString(1, r.getName());
			ps.setString(2, r.getPassword());
			ps.setString(3, r.getEmail());
			ps.setString(4, r.getGender());
			ps.setString(5, r.getCountry());
			status=ps.executeUpdate();
		}
		catch(Exception e)
		{e.printStackTrace();}
		return status;
	}

}
