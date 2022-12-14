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
				int makh = rs.getInt("makh");
				String hoten = rs.getString("hoten");
				String diachi = rs.getString("diachi");
				String sodt = rs.getString("sodt");
				String email = rs.getString("email");
				String tendn = rs.getString("tendn");
				String pass = rs.getString("pass");
				ds.add(new khachhangbean(makh, hoten, diachi, sodt, email, tendn, pass));
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