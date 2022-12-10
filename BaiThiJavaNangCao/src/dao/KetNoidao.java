package dao;

import java.sql.Connection;
import java.sql.Driver;
import java.sql.DriverManager;

public class KetNoidao {
	public Connection cn;
	public void KetNoi() {
		try {
			Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
			System.out.println("Xong b1");
			cn=DriverManager.getConnection("jdbc:sqlserver://STORM\\SQLEXPRESS:1433;databaseName=QLDD;user=sa; password=123");
			System.out.println("Connected");
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
	}
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		KetNoidao kn=new KetNoidao();
		kn.KetNoi();
	}

}