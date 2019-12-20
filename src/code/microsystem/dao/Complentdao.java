package code.microsystem.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;

import code.microsystem.bean.Complentbean;
import code.microsystem.connection.DAO;

public class Complentdao {
	public static int register(Complentbean cb)
	{
		int status=0;
		try
		{
			Connection con=DAO.geConnection();
			PreparedStatement ps=con.prepareStatement("insert into user_complent(Laptop_model,Problem,Address,Pin,Landmark,Prefere_service_time,Contact_person,Mobile,Pickup_facility)values(?,?,?,?,?,?,?,?,?)");
			ps.setString(1, cb.getLaptop_model());
			ps.setString(2, cb.getProblem());
			ps.setString(3, cb.getAddress());
			ps.setString(4, cb.getPin());
			ps.setString(5, cb.getLandmark());
			ps.setString(6, cb.getPrefere_service_time());
			ps.setString(7, cb.getContact());
			ps.setString(8, cb.getMobile());
			ps.setString(9, cb.getPickup());
			/*ps.setString(1, "dell");
			ps.setString(2, "dell");
			ps.setString(3, "dell");
			ps.setString(4, "dell");
			ps.setString(5, "dell");
			ps.setString(6, "dell");
			ps.setString(7, "dell");
			ps.setString(8, "dell");
			ps.setString(9, "dell");*/
			status=ps.executeUpdate();
			
		}catch(Exception e)
		{
			System.out.println(e);
		}
		return status;
	}

}
