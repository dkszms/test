package com.test.db;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

public class RecipeDB {


	public ArrayList<Map<String, Object>> recipe() {
		
		DBUtil dbu = new DBUtil();
		
		Connection conn = dbu.getDBConnection();
		
		String sql = "select * from recipe";
		
		
		ArrayList<Map<String, Object>> al = new ArrayList<Map<String, Object>>();
		
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		
		try {
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				Map<String, Object> map = new HashMap<String, Object>();
				
				String id = rs.getString("id");
				String name = rs.getString("name");
				String description = rs.getString("description");
				
				map.put("id", id);
				map.put("name", name);
				map.put("description", description);
				
				al.add(map);
				
			}
			
			rs.close();
			pstmt.close();
			conn.close();
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		
		return al;
	}
	
	
	public ArrayList<Map<String, Object>> recipeDetail(String recipeId) {
		
		DBUtil dbu = new DBUtil();
		
		Connection conn = dbu.getDBConnection();
		
		String sql = "select s.id, s.step, s.description, i.num, i.name, i.amount, i.unit  from step s"  
				+ "		left outer join ingredient i"  
				+ "		on s.id = i.ownerid" 
				+ "		where s.ownerid = ?"  
				+ "		order by s.step, i.num";
		
		
		ArrayList<Map<String, Object>> al = new ArrayList<Map<String, Object>>();
		
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, recipeId);
			System.out.println("SQL = "+sql);
			System.out.println("recipeId = "+ recipeId);
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				System.out.println("test");
				Map<String, Object> map = new HashMap<String, Object>();
				
				String id = rs.getString("id");
				int step = rs.getInt("step");
				String description = rs.getString("description");
				String num = rs.getString("num");
				String name = rs.getString("name");
				String amount = rs.getString("amount");
				String unit = rs.getString("unit");
				
				map.put("id", id);
				map.put("step", step);
				map.put("description", description);
				map.put("num", num);
				map.put("name", name);
				map.put("amount", amount);
				map.put("unit", unit);
				
				al.add(map);
				
			}
			
			rs.close();
			pstmt.close();
			conn.close();
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return al;
	}
	
	
	
	
}
