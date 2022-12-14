package dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.Date;

import bean.loaibean;
import bean.didongbean;

public class didongdao {
	public ArrayList<didongbean> getSach() {
		try {
			ArrayList<didongbean> ds = new ArrayList<>();
			// b1 Ket noi vao CSDL
			KetNoidao kn = new KetNoidao();
			kn.KetNoi();
			
			// b2: Lay du lieu ve
			// b2.1: Thiet lap cau lenh sql
			String sql = "select * from DiDong";
			// b2.2: Thuc hien cau lenh
			PreparedStatement cmd = kn.Cn.prepareStatement(sql);
			ResultSet rs = cmd.executeQuery();
			
			// b3: Duyet qua tap du lieu rs va luu vao mang ds
			while(rs.next()) {
				// Lay ve ma loai va ten loai
				String MaDiDong = rs.getString("MaDiDong");
			    String TenDiDong = rs.getString("TenDiDong");
			    long Gia = rs.getLong("Gia");
			    long SoLuong = rs.getLong("SoLuong");
			    String Anh = rs.getString("Anh");
			    String MaLoai = rs.getString("MaLoai");
			    ds.add(new didongbean(MaDiDong, TenDiDong, SoLuong, Gia, MaLoai, Anh));
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
	
	
	public ArrayList<didongbean> TimMa(String ma){
	   	ArrayList<didongbean> tam= new ArrayList<didongbean>();
	   	ArrayList<didongbean> ds= getSach();
	   	for(didongbean s: ds)
	   		if(s.getMaLoai().equals(ma))
	   			tam.add(s);
	   	return tam;
    }
	
	
	public ArrayList<didongbean> Tim(String key){
   	 	ArrayList<didongbean> tam= new ArrayList<didongbean>();
   	 	ArrayList<didongbean> ds= getSach();
   	 	for(didongbean s: ds)
   	 		if(s.getTenDiDong().toLowerCase().trim().contains(key.toLowerCase().trim()) || s.getMaDiDong().toLowerCase().trim().contains(key.toLowerCase().trim())||s.getMaLoai().toLowerCase().trim().contains(key.toLowerCase().trim()))
   	 			tam.add(s);
   	 	return tam;
    }
	
	public void Xoa(String ms) {
		try {
			KetNoidao kn = new KetNoidao();
			kn.KetNoi();
			
			String sql = "delete from sach where MaDiDong=?";
			PreparedStatement cmd = kn.Cn.prepareStatement(sql);
			cmd.setString(1, ms);
			
			cmd.executeUpdate();
			
			kn.Cn.close();
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public void Sua(didongbean s) {
		try {
			KetNoidao kn = new KetNoidao();
			kn.KetNoi();
			
			PreparedStatement cmd;
			String sql;
			
			if(s.getAnh().equals("")) {
				sql = "update sach set tensach=?, soluong=?, gia=?, maloai=?, tacgia=? where masach=?";
				cmd = kn.Cn.prepareStatement(sql);
				cmd.setString(1, s.getTenDiDong());
				cmd.setLong(2, s.getSoluong());
				cmd.setLong(3, s.getGia());
				cmd.setString(4, s.getMaloai());
				cmd.setString(5, s.getTacgia());
				cmd.setString(6, s.getMasach());
				cmd.executeUpdate();
			}
			else {
				sql = "update sach set tensach=?, soluong=?, gia=?, maloai=?, anh=?, tacgia=? where masach=?";
				cmd = kn.Cn.prepareStatement(sql);
				cmd.setString(1, s.getTenDiDong());
				cmd.setLong(2, s.getSoluong());
				cmd.setLong(3, s.getGia());
				cmd.setString(4, s.getMaloai());
				cmd.setString(5, s.getAnh());
				cmd.setString(6, s.getTacgia());
				cmd.setString(7, s.getMasach());
				cmd.executeUpdate();
			}
			
			
			kn.Cn.close();
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public void Them(didongbean s, String sotap) {
		try {
			KetNoidao kn = new KetNoidao();
			kn.KetNoi();
			
			PreparedStatement cmd;
			String sql;
			
			sql = "insert into sach values (?,?,?,?,?,?,?,?,?)";
			cmd = kn.Cn.prepareStatement(sql);
			cmd.setString(1, s.getMaDiDong());
			cmd.setString(2, s.getTenDiDong());
			cmd.setLong(3, s.getSoLuong());
			cmd.setLong(4, s.getGia());
			cmd.setString(5, s.getMaloai());
			cmd.setString(6, sotap);
			cmd.setString(7, s.getAnh());
			java.sql.Date ngaysql = new java.sql.Date(new Date().getTime());
			cmd.setDate(8, ngaysql);
			cmd.setString(9, s.getTacgia());
			cmd.executeUpdate();
			
			
			kn.Cn.close();
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}



}