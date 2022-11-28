package dao;

import java.sql.Connection;
import java.sql.DriverManager;

public class KetNoidao {

	public Connection Cn;
	
	public void KetNoi() {
		try {
			Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
			System.out.println("Xong b1");
			Cn = DriverManager.getConnection("jdbc:sqlserver://STORM\\\\\\\\SQLEXPRESS:1433;databaseName=NguyenCongTien;user=sa; password=123");
			System.out.println("Connected");
		} catch(Exception e) {
			e.printStackTrace();
		}
	}
	
	public static void main(String[] args) {
		KetNoidao kn = new KetNoidao();
		kn.KetNoi();

	}

}
