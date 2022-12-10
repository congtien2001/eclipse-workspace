package dao;

import dao.Logindao;
import java.sql.PreparedStatement;

public class Logindao {
	public void DangNhap(String TenDN, String Pass) {
		try {
			//ket noi 
			KetNoidao kn = new KetNoidao();
			kn.KetNoi();
			//truyen tham so
			String sql = "insert into KhachHang values(?,?,?,?,?,?)";
			
			PreparedStatement cmd = kn.cn.prepareStatement(sql);
			// co dau ? phai truyen tham so vao
			
			cmd.setString(1, TenDN);
			cmd.setString(2, Pass);
			//cap nhat
			cmd.executeUpdate();					
			kn.cn.close();			
		} catch(Exception e) {
			e.printStackTrace();
		}
	}
}
