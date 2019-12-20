package code.microsystem.connection;

import java.sql.DriverManager;

import java.sql.Connection;

public class DAO {
	public static Connection con;
	public static Connection geConnection()
	{
		try
		{
			Class.forName("com.mysql.jdbc.Driver");
			con=DriverManager.getConnection("jdbc:mysql://localhost:3306/project","root","root");
			
			
		}catch(Exception e)
		{
			System.out.println(e);
		}
		return con;
	}

}
