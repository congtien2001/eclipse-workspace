package dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import bean.Khachhangbean;

public class Khachhangdao {
	
	
	
	public Khachhangbean ktdn(String TenDN, String Pass) {
		try {
			KetNoidao kn= new KetNoidao();
			kn.KetNoi();
			String sql="select * from KhachHang where TenDN=? and Pass=?";
			PreparedStatement cmd= kn.cn.prepareStatement(sql);
			cmd.setString(1, TenDN);
			cmd.setString(2, Pass);
			ResultSet rs=cmd.executeQuery();
			Khachhangbean kh=null;
			if(rs.next()){//Dang nhap dung
				int MaKH=rs.getInt("MaKH");
				String HoTen=rs.getString("HoTen");
				String DiaChi=rs.getString("DiaChi");
				String SoDT=rs.getString("SoDT");
				String Email=rs.getString("Email");
				String TenDN1=rs.getString("TenDN1");
				String Pass1=rs.getString("Pass1");
					kh=new Khachhangbean(MaKH, HoTen, DiaChi, SoDT, Email, TenDN1, Pass1);
			}
			rs.close();kn.cn.close();
			return kh;
			
		} catch (Exception e) {
			e.printStackTrace();return null;
		}
	}
	
	public static void main(String[] args) {
		Khachhangdao khdao= new Khachhangdao();
		System.out.println(khdao.ktdn("tien", "123").getHoTen());

	}

	
	public void addkhachhang(String hoten, String diachi, String sodt, String email, String tendn, String mk){
		try {
			KetNoidao kn=new KetNoidao();
			kn.KetNoi();
			
			String query="INSERT INTO KhachHang (hoten, diachi, sodt, email, tendn, pass) VALUES (?,?,?,?,?,?)";
			
			PreparedStatement cmd=kn.cn.prepareStatement(query);
			
			cmd.setString(1, hoten);
			cmd.setString(2, diachi);
			cmd.setString(3, sodt);
			cmd.setString(4, email);
			cmd.setString(5, tendn);
			cmd.setString(6, mk);
			
			cmd.executeUpdate();
			
			kn.cn.close();
			
		} catch (Exception e) {
			e.printStackTrace();
			// TODO: handle exception
		}
	}
}