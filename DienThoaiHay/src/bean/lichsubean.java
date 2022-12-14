package bean;

import java.sql.Date;

public class lichsubean {
	private int MaKH;
	private String HoTen;
	private int MaHoaDon;
	private Date NgayMua;
	private boolean DaMua;
	private String MaDiDong;
	private String TenDiDong;
	private String Anh;
	private int SoLuongMua;
	private int Gia;
	public lichsubean() {
		super();
	}
	public lichsubean(int maKH, String hoTen, int maHoaDon, Date ngayMua, boolean daMua, String maDiDong,
			String tenDiDong, String anh, int soLuongMua, int gia) {
		super();
		MaKH = maKH;
		HoTen = hoTen;
		MaHoaDon = maHoaDon;
		NgayMua = ngayMua;
		DaMua = daMua;
		MaDiDong = maDiDong;
		TenDiDong = tenDiDong;
		Anh = anh;
		SoLuongMua = soLuongMua;
		Gia = gia;
	}
	public int getMaKH() {
		return MaKH;
	}
	public void setMaKH(int maKH) {
		MaKH = maKH;
	}
	public String getHoTen() {
		return HoTen;
	}
	public void setHoTen(String hoTen) {
		HoTen = hoTen;
	}
	public int getMaHoaDon() {
		return MaHoaDon;
	}
	public void setMaHoaDon(int maHoaDon) {
		MaHoaDon = maHoaDon;
	}
	public Date getNgayMua() {
		return NgayMua;
	}
	public void setNgayMua(Date ngayMua) {
		NgayMua = ngayMua;
	}
	public boolean isDaMua() {
		return DaMua;
	}
	public void setDaMua(boolean daMua) {
		DaMua = daMua;
	}
	public String getMaDiDong() {
		return MaDiDong;
	}
	public void setMaDiDong(String maDiDong) {
		MaDiDong = maDiDong;
	}
	public String getTenDiDong() {
		return TenDiDong;
	}
	public void setTenDiDong(String tenDiDong) {
		TenDiDong = tenDiDong;
	}
	public String getAnh() {
		return Anh;
	}
	public void setAnh(String anh) {
		Anh = anh;
	}
	public int getSoLuongMua() {
		return SoLuongMua;
	}
	public void setSoLuongMua(int soLuongMua) {
		SoLuongMua = soLuongMua;
	}
	public int getGia() {
		return Gia;
	}
	public void setGia(int gia) {
		Gia = gia;
	}
	
	
	
	
	
	
	
}