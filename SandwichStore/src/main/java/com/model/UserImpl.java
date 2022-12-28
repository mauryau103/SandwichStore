package com.model;


import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.db.MyConnection;
import com.food.util.constant.FoodConstant;
import com.pojo.SandUser;

public class UserImpl {
	public boolean register(SandUser sanduser){
		boolean state=false;
		try(Connection conn=MyConnection.connect()){
			String sql="insert into sanduser values(?,?,?,?,?,?,?,?,?)";
			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.setString(1,sanduser.getName());
			pstmt.setString(2, sanduser.getUsername());
			pstmt.setLong(3, sanduser.getMobileNo());
			pstmt.setString(4, sanduser.getEmailId());
			pstmt.setString(5, sanduser.getPassword());
			pstmt.setString(6, sanduser.getAddress());
			pstmt.setString(7, sanduser.getCity());
			pstmt.setString(8, sanduser.getState());
			pstmt.setString(9, sanduser.getCountry());
			
			int no =pstmt.executeUpdate();
			if(no>0)
				state=true;
			
			
		}catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();	
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return state;
		
	}
	
	public String login (String uname, String pass) {
	
		String name=null;
		
		try(Connection conn=MyConnection.connect()){
			
		String sql="select *  from sanduser where username=? and password=?";
		PreparedStatement pstmt=conn.prepareStatement(sql);
		pstmt.setString(1,uname);
		pstmt.setString(2,pass);	
		ResultSet rs= pstmt.executeQuery();
		if(rs.next()) {
			name=rs.getString("full_name");
		}
		
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return name;
	}
	
	public boolean forgetpasswordtest(SandUser user) {
    	boolean check = false;
    	try(Connection conn=MyConnection.connect()){ 
    		String sql="update sanduser set password=? where username=? and emailid=?";
			PreparedStatement pstmt=conn.prepareStatement(sql);  
			
			pstmt.setString(2, user.getUsername());
			pstmt.setString(3, user.getEmailId());
			pstmt.setString(1, user.getPassword());
			int rs=pstmt.executeUpdate();  
			System.out.println(rs);
			if (rs>0) {
				check=true;
				System.out.println("Password updated");
				
			}else {
				System.out.println("Password Not updated");
			}
			  
			}catch(Exception e){ System.out.println(e);} 
    	
    	return check;
    }
}
