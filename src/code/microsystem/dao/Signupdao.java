package code.microsystem.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import code.microsystem.bean.Signupbean;
import code.microsystem.connection.DAO;
import javafx.util.converter.PercentageStringConverter;

public class Signupdao {
	
	public static int register(Signupbean sb )
	{
		int status=0;
		
		try
		{
			Connection c=DAO.geConnection();
			PreparedStatement pts=c.prepareStatement("select * from signup where phone=? or email=?");
			pts.setString(1,sb.getUphone() );
			pts.setString(2, sb.getUemail());
			ResultSet r=pts.executeQuery();
			if(r.next())
			{
				return 0;
			}
			else
			{
			
			
			Connection con=DAO.geConnection();
			PreparedStatement ps=con.prepareStatement("insert into Signup(name,password,birthday,gender,email,phone,security_q,security_a)values(?,?,?,?,?,?,?,?)");
			ps.setString(1,sb.getUname() );
			ps.setString(2,sb.getUpass() );
			ps.setString(3,sb.getUbirthday());
			ps.setString(4, sb.getGender());
			ps.setString(5, sb.getUemail());
			ps.setString(6, sb.getUphone());
			ps.setString(7, sb.getUsque());
			ps.setString(8, sb.getUsans());
			status=ps.executeUpdate();
			}
			
		}catch(Exception e)
		{
			System.out.println(e);
		}
		return status;
		
		
	}
public static boolean chekqn(Signupbean sb1)
{
	try
	{
		Connection con=DAO.geConnection();
		PreparedStatement ps=con.prepareStatement("select * from signup where security_q=? or security_a=?");
		ps.setString(1, sb1.getUsque());
		ps.setString(2, sb1.getUsans());
		ResultSet r=ps.executeQuery();
		if(r.next())
		{
			return true;
		}
		else
		{
			return false;
		}
	}catch(Exception e)
	{
		System.out.println(e);
	}
	
return true;
	
}
public static int updpass(Signupbean sb2,String email)
{
int status=0;
{
	try
	{
		System.out.println(sb2.getUpass());
		System.out.println(email);
		Connection con=DAO.geConnection();
		PreparedStatement ps;
		ps=con.prepareStatement("update signup set password=? where email=?");		
		ps.setString(1, sb2.getUpass());
		ps.setString(2, email);
		status=ps.executeUpdate();
		System.out.println("hello i am here");
		
	}catch(Exception e)
	{
		System.out.println(e);
	}
	return status;
}
}
}
