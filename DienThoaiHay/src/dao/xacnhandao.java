package dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;

import bean.xacnhanbean;

public class xacnhandao {
	
	public ArrayList<xacnhanbean> getxacnhan() {
		try {
			ArrayList<xacnhanbean> ds = new ArrayList<xacnhanbean>();
			// b1 Ket noi vao CSDL
			KetNoidao kn = new KetNoidao();
			kn.KetNoi();
			
			// b2: Lay du lieu ve
			// b2.1: Thiet lap cau lenh sql
			String sql = "select * from Vxacnhan";
			// b2.2: Thuc hien cau lenh
			PreparedStatement cmd = kn.Cn.prepareStatement(sql);
			ResultSet rs = cmd.executeQuery();
			
			// b3: Duyet qua tap du lieu rs va luu vao mang ds
			while(rs.next()) {
				int MaChiTietHD = rs.getInt("MaChiTietHD");
				int MaHoaDon = rs.getInt("MaHoaDon");
				String hoten = rs.getString("hoten");
				String tensach = rs.getString("tensach");
				int SoLuongMua = rs.getInt("SoLuongMua");
				long gia = rs.getLong("gia");
				long thanhtien = rs.getLong("thanhtien");
				boolean damua = rs.getBoolean("damua");
				
				ds.add(new xacnhanbean(MaChiTietHD, MaHoaDon, hoten, tensach, SoLuongMua, gia, thanhtien, damua));
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
	
	public void XNChuyenTien(int macthd, int mahd) {
		try {
			KetNoidao kn = new KetNoidao();
			kn.KetNoi();
			
			// Update bảng hoadon
			String sql = "update ChiTietHoaDon set damua=1 where MaChiTietHD=? \r\n";
//						+ "update hoadon set damua=1 where MaHoaDon=?";
			PreparedStatement cmd = kn.Cn.prepareStatement(sql);
			cmd.setInt(1, macthd);
//			cmd.setInt(1, mahd);
//			cmd.setInt(2, mahd);
			cmd.executeUpdate();
			
			
			kn.Cn.close();
			
		} catch(Exception e) {
			e.printStackTrace();
		}
	}
	
}