package com.tqmcs;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

public class RegisterDao
{
	public static int save(RegisterAction a)
	{
		int s1=0;
		try
		{
			Class.forName("oracle.jdbc.driver.OracleDriver");
			Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","sinu","sinu");
			PreparedStatement ps=con.prepareStatement("insert into emp3 values(?,?,?,?,?)");
			ps.setString(1, a.getEname());
			ps.setString(2, a.getPassword());
			ps.setString(3, a.getEmail());
			ps.setString(4, a.getGender());
			ps.setString(5, a.getCountry());
			s1=ps.executeUpdate();
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return s1;
	}

}
