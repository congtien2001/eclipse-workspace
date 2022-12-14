package dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import bean.didongbean;

public class didongdao {
	public ArrayList<didongbean> getdidong(){
		try {
			ArrayList<didongbean> ds= new ArrayList<didongbean>();
			
			//B1: kết nối vào csdl
			KetNoidao kn=new KetNoidao();
			kn.KetNoi();
			//B2: Lấy dữ liệu về
				//b2.1: thiết lập câu lệnh sql
				String sql="select * from DiDong1";
				//b2.2: Thực hiện câu lệnh
				PreparedStatement cmd=kn.cn.prepareStatement(sql);
				ResultSet rs=cmd.executeQuery();
			//B3: Duyệt qua tập dữ liệu trong rs và lưu vào mảng ds
				while(rs.next()) {
					//Lấy về maloai và tenloai
					String maDiDong=rs.getString("MaDiDong");
					String tenDiDONG=rs.getString("TenDiDong");
					long soLuong=rs.getLong("SoLuong");
					long gia=rs.getLong("Gia");
					String maLoai=rs.getString("MaLoai");
					String anh=rs.getString("Anh");
					ds.add(new didongbean(maDiDong, tenDiDONG, soLuong, gia, maLoai, anh));
				}
			//B4: đóng kết nối
				rs.close();
				kn.cn.close();
			return ds;
		} catch (Exception e) {
			// TODO: handle exception
			e.getStackTrace();return null;
		}
	}
	
	public static void main(String[] args) {
		didongdao d=new didongdao();
		ArrayList<didongbean> a=d.getdidong();
		for(didongbean da: a) {
			System.out.println(da.getTenDiDong());
		}
	}
}