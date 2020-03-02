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
		
		PreparedStatement psmt = null;
		ResultSet rs = null;
		
		
		try {
			psmt = conn.prepareStatement(sql);
			rs = psmt.executeQuery();
			
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
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return al;
	}
}
