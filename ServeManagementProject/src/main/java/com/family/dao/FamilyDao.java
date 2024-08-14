package com.family.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.family.bean.FamilyInput;

public class FamilyDao {

	private static String dburl="jdbc:mysql://localhost:3306/familyserve";
	private static String dbusername="root";
	private static String dbpassword="arjun";
	private static String dbdriver="com.mysql.jdbc.Driver";
	
	//connection function
	public static Connection getConnection()
	{
		Connection conn=null;
		try
		{
			//load driver
			Class.forName(dbdriver);
			// create connection
			conn=DriverManager.getConnection(dburl,dbusername,dbpassword);
			
		}catch (Exception e) {
			e.printStackTrace();
			// TODO: handle exception
		}
		return conn;
	}
	//insert
	public static int insert(FamilyInput u) 
	{
		int status=0;
		try
		{
			Connection conn=getConnection();
			PreparedStatement ps=conn.prepareStatement("insert into familyservedata(yourname,yourage,gender,fathername,mothername,sibling_number,brother_number,sister_number,father_prof,mother_prof,whatyoudo)values(?,?,?,?,?,?,?,?,?,?,?)");
			{
				ps.setString(1,u.getYourname());
				ps.setInt(2,u.getYourage());
			    ps.setString(3,u.getGender());
			    ps.setString(4,u.getFathername());
			    ps.setString(5,u.getMothername());
			    ps.setInt(6,u.getSibling_number());
			    ps.setInt(7,u.getBrother_number());
			    ps.setInt(8,u.getSister_number());
			    ps.setString(9,u.getFather_prof());
			    ps.setString(10,u.getMother_prof());
			    ps.setString(11,u.getWhatyoudo());
			    status=ps.executeUpdate();
			}
		}catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return status;
	}
	//delete
	public static int delete(FamilyInput u)
	{
		int status=0;
		try(Connection conn=getConnection();
		PreparedStatement ps=conn.prepareStatement("delete from familyservedata where id=?");		
		){
			ps.setInt(1,u.getId());
			status=ps.executeUpdate();
		}catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return status;	
	}
	//update
	public static int update(FamilyInput u)
	{
		int status=0;
		try(Connection conn=getConnection();
				PreparedStatement ps=conn.prepareStatement(" update familyservedata set yourname =?,yourage=?,gender=?,fathername=?,mothername=?,sibling_number=?,brother_number=?,sister_number=?,father_prof=?,mother_prof=?,whatyoudo=? where id=?");
			)
		    {
			ps.setString(1,u.getYourname());
			ps.setInt(2,u.getYourage());
		    ps.setString(3,u.getGender());
		    ps.setString(4,u.getFathername());
		    ps.setString(5,u.getMothername());
		    ps.setInt(6,u.getSibling_number());
		    ps.setInt(7,u.getBrother_number());
		    ps.setInt(8,u.getSister_number());
		    ps.setString(9,u.getFather_prof());
		    ps.setString(10,u.getMother_prof());
		    ps.setString(11,u.getWhatyoudo());
		    ps.setInt(12, u.getId());
		    status=ps.executeUpdate();
			}
		     catch (Exception e) {
				// TODO: handle exception
				e.printStackTrace();
			}
		return status;
	}
	//select all
	public static List<FamilyInput> selectAll()
	{
	   List<FamilyInput>list=new ArrayList<>();
	   FamilyInput u=null;
	   try(Connection conn=getConnection();
		PreparedStatement ps=conn.prepareStatement("select * from familyservedata");	   
			   )
	   {
		   ResultSet rs=ps.executeQuery();
			while(rs.next())
			{
				u=new FamilyInput();
				u=new FamilyInput();
				u.setId(rs.getInt("id"));
				u.setYourname(rs.getString("yourname"));
				u.setYourage(rs.getInt("yourage"));
				u.setGender(rs.getString("gender"));
				u.setFathername(rs.getString("fathername"));
				u.setMothername(rs.getString("mothername"));
				u.setSibling_number(rs.getInt("sibling_number"));
				u.setBrother_number(rs.getInt("brother_number"));
				u.setSister_number(rs.getInt("sister_number"));
				u.setFather_prof(rs.getString("father_prof"));
				u.setMother_prof(rs.getString("mother_prof"));
				u.setWhatyoudo(rs.getString("whatyoudo"));
				list.add(u);
			}
		   
	   }catch (Exception e) {
		// TODO: handle exception
	}
	   return list;
	}
	//select one by id
	public static FamilyInput selectById(int id)
	{
		FamilyInput u=null;
		try(Connection conn=getConnection();
				PreparedStatement ps=conn.prepareStatement("select *from familyservedata where id=?");
				)
		{
			ps.setInt(1,id);
			ResultSet rs=ps.executeQuery();
			while(rs.next())
			{
				u=new FamilyInput();
				u.setId(rs.getInt("id"));
				u.setYourname(rs.getString("yourname"));
				u.setYourage(rs.getInt("yourage"));
				u.setGender(rs.getString("gender"));
				u.setFathername(rs.getString("fathername"));
				u.setMothername(rs.getString("mothername"));
				u.setSibling_number(rs.getInt("sibling_number"));
				u.setBrother_number(rs.getInt("brother_number"));
				u.setSister_number(rs.getInt("sister_number"));
				u.setFather_prof(rs.getString("father_prof"));
				u.setMother_prof(rs.getString("mother_prof"));
				u.setWhatyoudo(rs.getString("whatyoudo"));
			}
			
		}catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return u;
		
	}
}
