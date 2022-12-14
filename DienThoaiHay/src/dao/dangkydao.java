package dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import bean.khachhangbean;

public class dangkydao {
	
	public void Dangky(String HoTen, String DiaChi, String SoDT, String Email, String tendn, String pass) {
		try {
			KetNoidao kn = new KetNoidao();
			kn.KetNoi();
			
			String sql = "insert into KhachHang values(?,?,?,?,?,?)";
			
			PreparedStatement cmd = kn.Cn.prepareStatement(sql);
			cmd.setString(1, HoTen);
			cmd.setString(2, DiaChi);
			cmd.setString(3, SoDT);
			cmd.setString(4, Email);
			cmd.setString(5, tendn);
			cmd.setString(6, pass);
			
			cmd.executeUpdate();
			
			
			kn.Cn.close();
			
		} catch(Exception e) {
			e.printStackTrace();
		}
	}
}