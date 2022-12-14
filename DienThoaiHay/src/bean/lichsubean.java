package bean;

import java.sql.Date;

public class lichsubean {
	private int makh;
	private String hoten;
	private int MaHoaDon;
	private Date NgayMua;
	private boolean damua;
	private String MaSach;
	private String tensach;
	private String anh;
	private int SoLuongMua;
	private int gia;
	
	public lichsubean() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	public lichsubean(int makh, String hoten, int maHoaDon, Date ngayMua, boolean damua, String maSach, String tensach,
			String anh, int soLuongMua, int gia) {
		super();
		this.makh = makh;
		this.hoten = hoten;
		this.MaHoaDon = maHoaDon;
		this.NgayMua = ngayMua;
		this.damua = damua;
		this.MaSach = maSach;
		this.tensach = tensach;
		this.anh = anh;
		this.SoLuongMua = soLuongMua;
		this.gia = gia;
	}

	public int getMakh() {
		return makh;
	}
	public void setMakh(int makh) {
		this.makh = makh;
	}
	public String getHoten() {
		return hoten;
	}
	public void setHoten(String hoten) {
		this.hoten = hoten;
	}
	public int getMaHoaDon() {
		return MaHoaDon;
	}
	public void setMaHoaDon(int maHoaDon) {
		this.MaHoaDon = maHoaDon;
	}
	public Date getNgayMua() {
		return NgayMua;
	}
	public void setNgayMua(Date ngayMua) {
		this.NgayMua = ngayMua;
	}
	public boolean isDamua() {
		return damua;
	}
	public void setDamua(boolean damua) {
		this.damua = damua;
	}
	public String getMaSach() {
		return MaSach;
	}
	public void setMaSach(String maSach) {
		this.MaSach = maSach;
	}
	public String getTensach() {
		return tensach;
	}
	public void setTensach(String tensach) {
		this.tensach = tensach;
	}
	public String getAnh() {
		return anh;
	}
	public void setAnh(String anh) {
		this.anh = anh;
	}
	public int getSoLuongMua() {
		return SoLuongMua;
	}
	public void setSoLuongMua(int soLuongMua) {
		this.SoLuongMua = soLuongMua;
	}
	public int getGia() {
		return gia;
	}
	public void setGia(int gia) {
		this.gia = gia;
	}
	
	
	
	
	
}