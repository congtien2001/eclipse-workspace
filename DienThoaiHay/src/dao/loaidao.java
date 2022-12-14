package dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import bean.loaibean;

public class loaidao {
	public ArrayList<loaibean> getLoai() {
		try {
			ArrayList<loaibean> ds = new ArrayList<loaibean>();
			// b1 Ket noi vao CSDL
			KetNoidao kn = new KetNoidao();
			kn.KetNoi();
			
			// b2: Lay du lieu ve
			// b2.1: Thiet lap cau lenh sql
			String sql = "select * from Loai1";
			// b2.2: Thuc hien cau lenh
			PreparedStatement cmd = kn.Cn.prepareStatement(sql);
			ResultSet rs = cmd.executeQuery();
			
			// b3: Duyet qua tap du lieu rs va luu vao mang ds
			while(rs.next()) {
				// Lay ve ma loai va ten loai
				String MaLoai = rs.getString("MaLoai");
				String TenLoai = rs.getString("TenLoai");
				ds.add(new loaibean(MaLoai, TenLoai));
			}
			
			// b4: dong ket noi
			kn.Cn.close();
			rs.close();

			
//			ds.add(new loaibean("Tin", "Cong nghe thong tin"));
//			ds.add(new loaibean("Toan", "Giai tich"));
//			ds.add(new loaibean("Ly", "Cong nghe Nano"));
//			ds.add(new loaibean("Hoa", "Cong nghe hoa dau"));
			return ds;
			
		} catch(Exception e) {
			e.printStackTrace();
			return null;
		}
	}
}