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
				String sql="select * from Didong";
				//b2.2: Thực hiện câu lệnh
				PreparedStatement cmd=kn.cn.prepareStatement(sql);
				ResultSet rs=cmd.executeQuery();
			//B3: Duyệt qua tập dữ liệu trong rs và lưu vào mảng ds
				while(rs.next()) {
					//Lấy về maloai và tenloai
					String Madidong=rs.getString("Madidong");
					String tendidong=rs.getString("tendidong");
					int gia=rs.getInt("gia");
					int soluong=rs.getInt("soluong");
					String anh=rs.getString("anh");
					ds.add(new didongbean(Madidong, tendidong, gia, soluong, anh));			
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
