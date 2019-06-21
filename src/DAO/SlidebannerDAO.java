package DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import BEAN.Slidebanner;

public class SlidebannerDAO {
	public static List<Slidebanner> getAllSlidebanners(Connection conn){
		List<Slidebanner> list = new ArrayList<Slidebanner>();
		String sql = "select * from slidebanners";
		try {
			PreparedStatement ptmt = conn.prepareStatement(sql);
			ResultSet rs = ptmt.executeQuery();
			while (rs.next()) {
				String title = rs.getString("title");
				String content = rs.getString("content");
				String image_path = rs.getString("image_path");
				int id = rs.getInt("slidebanner_id");
				Slidebanner slidebanner = new Slidebanner(title, content, image_path);
				slidebanner.setId(id);
				list.add(slidebanner);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return list;
	}
}
