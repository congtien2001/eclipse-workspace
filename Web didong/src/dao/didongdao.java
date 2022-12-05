package dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import bean.didongbean;

public class didongdao {

	
	public ArrayList<didongbean> getDiDong() 
	{
		try {
			ArrayList<didongbean> ds = new ArrayList<>();
			
			KetNoidao kn = new KetNoidao();
			kn.KetNoi();
			
			String sql = "select * from DiDong";
			PreparedStatement cmd = kn.Cn.prepareStatement(sql);
			ResultSet rs = cmd.executeQuery();
			
			while(rs.next()) 
			{
				int Madidong = rs.getInt("Madidong");
				String tendidong = rs.getString("tendidong");
				long gia = rs.getLong("gia");
				int soluong = rs.getInt("soluong");
				String anh = rs.getString("anh");
			    ds.add(new didongbean(Madidong, tendidong, gia, soluong, anh));
			}
			
			kn.Cn.close();
			rs.close();
			
			return ds;
			
		} catch(Exception e) {
			e.printStackTrace();
			return null;
		}
	}
	
	
	
}
