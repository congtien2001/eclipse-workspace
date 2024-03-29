package dao;

import dao.Registerdao;
import java.sql.PreparedStatement;

public class Registerdao {
	public void Dangky(String HoTen, String DiaChi, String SoDT, String Email, String TenDN, String Pass) {
		try {
			//ket noi 
			KetNoidao kn = new KetNoidao();
			kn.KetNoi();
			//truyen tham so
			String sql = "insert into KhachHang values(?,?,?,?,?,?)";
			
			PreparedStatement cmd = kn.cn.prepareStatement(sql);
			// co dau ? phai truyen tham so vao
			cmd.setString(1, HoTen);
			cmd.setString(2, DiaChi);
			cmd.setString(3, SoDT);
			cmd.setString(4, Email);
			cmd.setString(5, TenDN);
			cmd.setString(6, Pass);
			//cap nhat
			cmd.executeUpdate();					
			kn.cn.close();			
		} catch(Exception e) {
			e.printStackTrace();
		}
	}
}
