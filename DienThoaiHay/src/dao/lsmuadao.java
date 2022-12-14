package dao;

import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.text.SimpleDateFormat;
import java.util.ArrayList;

import bean.khachhangbean;
import bean.lichsubean;

public class lsmuadao {
	
	
	public ArrayList<lichsubean> getLichSu(int MaKH) {
		try {
			ArrayList<lichsubean> ds = new ArrayList<lichsubean>();
			// b1 Ket noi vao CSDL
			KetNoidao kn = new KetNoidao();
			kn.KetNoi();
			
			// b2: Lay du lieu ve
			// b2.1: Thiet lap cau lenh sql
			String sql = "select hd.makh, hoten, hd.MaHoaDon, NgayMua, hd.damua, s.MaSach, s.tensach, s.anh, SoLuongMua, gia "
					+ "from KhachHang as kh join hoadon as hd on kh.makh=hd.makh "
					+ "join ChiTietHoaDon as cthd on hd.MaHoaDon = cthd.MaHoaDon "
					+ "join sach as s on s.masach = cthd.MaSach "
					+ "where hd.makh=? and hd.damua=1";
			// b2.2: Thuc hien cau lenh
			PreparedStatement cmd = kn.Cn.prepareStatement(sql);
			cmd.setInt(1, MaKH);
			ResultSet rs = cmd.executeQuery();
			
			// b3: Duyet qua tap du lieu rs va luu vao mang ds
			while(rs.next()) {
				// Lay ve ma loai va ten loai
				int makh = rs.getInt("makh");
				String hoten = rs.getString("hoten");
				int MaHoaDon = rs.getInt("MaHoaDon");
//				SimpleDateFormat f = new SimpleDateFormat("yyyy/MM/dd");
				Date NgayMua = rs.getDate("NgayMua");
				boolean damua = rs.getBoolean("damua");
				String MaSach = rs.getString("MaSach");
				String tensach = rs.getString("tensach");
				String anh = rs.getString("anh");
				int SoLuongMua = rs.getInt("SoLuongMua");
				int gia = rs.getInt("gia");
				
				ds.add(new lichsubean(makh, hoten, MaHoaDon, NgayMua, damua, MaSach, tensach, anh, SoLuongMua, gia));
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