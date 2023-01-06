package dao;

import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.text.SimpleDateFormat;
import java.util.ArrayList;

import bean.khachhangbean;
import bean.lichsubean;

public class lsmuadao {
	
	
	public ArrayList<lichsubean> getLichSu(int makh) {
		try {
			ArrayList<lichsubean> ds = new ArrayList<lichsubean>();
			// b1 Ket noi vao CSDL
			KetNoidao kn = new KetNoidao();
			kn.KetNoi();
			
			// b2: Lay du lieu ve
			// b2.1: Thiet lap cau lenh sql
			String sql = "select hd.MaKH, HoTen, hd.MaHoaDon, NgayMua, hd.DaMua, s.TenDiDong, s.Anh, SoLuongMua, Gia, s.MaDiDong\r\n"
					+ "from KhachHang as kh join HoaDon as hd on kh.MaKH=hd.MaKH\r\n"
					+ "join ChiTietHoaDon as cthd on hd.MaHoaDon = cthd.MaHoaDon\r\n"
					+ "join DiDong as s on s.MaDiDong = cthd.MaDiDong\r\n"
					+ "where hd.MaKH=? and hd.DaMua=1";
			// b2.2: Thuc hien cau lenh
			PreparedStatement cmd = kn.Cn.prepareStatement(sql);
			cmd.setInt(1, makh);
			ResultSet rs = cmd.executeQuery();
			
			// b3: Duyet qua tap du lieu rs va luu vao mang ds
			while(rs.next()) {
				// Lay ve ma loai va ten loai
				int MaKH = rs.getInt("MaKH");
				String HoTen = rs.getString("HoTen");
				int MaHoaDon = rs.getInt("MaHoaDon");
				Date NgayMua = rs.getDate("NgayMua");
				boolean DaMua = rs.getBoolean("DaMua");
				String MaDiDong = rs.getString("MaDiDong");
				String TenDiDong = rs.getString("TenDiDong");
				String Anh = rs.getString("Anh");
				int SoLuongMua = rs.getInt("SoLuongMua");
				int Gia = rs.getInt("Gia");
				
				ds.add(new lichsubean(MaKH, HoTen, MaHoaDon, NgayMua, DaMua, MaDiDong, TenDiDong, Anh, SoLuongMua, Gia));
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