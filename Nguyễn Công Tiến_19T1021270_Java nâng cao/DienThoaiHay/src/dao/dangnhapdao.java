package dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import bean.khachhangbean;

public class dangnhapdao {
	
	
	public ArrayList<khachhangbean> getTaiKhoan() {
		try {
			ArrayList<khachhangbean> ds = new ArrayList<khachhangbean>();
			// b1 Ket noi vao CSDL
			KetNoidao kn = new KetNoidao();
			kn.KetNoi();
			
			// b2: Lay du lieu ve
			// b2.1: Thiet lap cau lenh sql
			String sql = "select * from KhachHang";
			// b2.2: Thuc hien cau lenh
			PreparedStatement cmd = kn.Cn.prepareStatement(sql);
			ResultSet rs = cmd.executeQuery();
			
			// b3: Duyet qua tap du lieu rs va luu vao mang ds
			while(rs.next()) {
				// Lay ve ma loai va ten loai
				int MaKH = rs.getInt("MaKH");
				String HoTen = rs.getString("HoTen");
				String DiaChi = rs.getString("DiaChi");
				String SoDT = rs.getString("SoDT");
				String Email = rs.getString("Email");
				String TenDN = rs.getString("TenDN");
				String Pass = rs.getString("Pass");
				ds.add(new khachhangbean(MaKH, HoTen, DiaChi, SoDT, Email, TenDN, Pass));
			}
			
			// b4: dong ket noi
			kn.Cn.close();
			rs.close();
			
			return ds;
			
		} catch(Exception e) {
			e.printStackTrace();
			return null;
		}
	}
	
}