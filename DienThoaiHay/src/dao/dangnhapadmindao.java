package dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;

import bean.dangnhapadminbean;

public class dangnhapadmindao {
	
	public dangnhapadminbean ktdn(String tendn, String mk) {
		try {
			KetNoidao kn = new KetNoidao();
			kn.KetNoi();
			dangnhapadminbean dn = null;
			
			String sql = "select * from DangNhap where TenDangNhap=? and MatKhau=?";
			PreparedStatement cmd = kn.Cn.prepareStatement(sql);
			cmd.setString(1, tendn);
			cmd.setString(2, mk);
			ResultSet rs = cmd.executeQuery();
			
			if(rs.next()) {
				String TenDangNhap = rs.getString("TenDangNhap");
				String MatKhau = rs.getString("MatKhau");
				boolean Quyen = rs.getBoolean("Quyen");
				dn = new dangnhapadminbean(TenDangNhap, MatKhau, Quyen);
			}
			
			kn.Cn.close();
			rs.close();
			
			return dn;
			
			
		}
		catch(Exception e) {
			e.printStackTrace();
			return null;
		}
	}
	
}