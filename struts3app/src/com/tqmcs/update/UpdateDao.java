package com.tqmcs.update;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

public class UpdateDao {
	public static int add(UpdateAction a)
	{
		int status=0;
		try
		{
			Class.forName("oracle.jdbc.driver.OracleDriver");
			Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","sinu","sinu");
			PreparedStatement ps=con.prepareStatement("update emp3 set ename=?,password=?,email=?,gender=? where country=?");
			ps.setString(1, a.getEname());
			ps.setString(2, a.getPassword());
			ps.setString(3, a.getEmail());
			ps.setString(4, a.getGender());
			ps.setString(5, a.getCountry());
			
			status=ps.executeUpdate();
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return status;
	}

}