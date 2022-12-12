package dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import bean.loaibean;

public class loaidao {
	public ArrayList<loaibean> getloai(){
		try {
			ArrayList<loaibean> ds= new ArrayList<loaibean>();
			
			//B1: kết nối vào csdl
			KetNoidao kn=new KetNoidao();
			kn.KetNoi();
			//B2: Lấy dữ liệu về
				//b2.1: thiết lập câu lệnh sql
				String sql="select * from Loai";
				//b2.2: Thực hiện câu lệnh
				PreparedStatement cmd=kn.cn.prepareStatement(sql);
				ResultSet rs=cmd.executeQuery();
			//B3: Duyệt qua tập dữ liệu trong rs và lưu vào mảng ds
				while(rs.next()) {
					//Lấy về maloai và tenloai
					String MaLoai=rs.getString("MaLoai");
					String TenLoai=rs.getString("TenLoai");
					ds.add(new loaibean(MaLoai, TenLoai));
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
}