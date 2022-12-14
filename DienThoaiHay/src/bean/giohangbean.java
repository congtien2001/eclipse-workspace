package bean;

public class giohangbean {

	private String Anh;
	private String MaDiDong;
	private String TenDiDong;
	private long SoLuong;
	private long Gia;
	private long ThanhTien;
	public giohangbean() {
		super();
	}
	public giohangbean(String anh, String maDiDong, String tenDiDong, long soLuong, long gia, long thanhTien) {
		super();
		Anh = anh;
		MaDiDong = maDiDong;
		TenDiDong = tenDiDong;
		SoLuong = soLuong;
		Gia = gia;
		ThanhTien = thanhTien;
	}
	public String getAnh() {
		return Anh;
	}
	public void setAnh(String anh) {
		Anh = anh;
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
	public long getSoLuong() {
		return SoLuong;
	}
	public void setSoLuong(long soLuong) {
		SoLuong = soLuong;
	}
	public long getGia() {
		return Gia;
	}
	public void setGia(long gia) {
		Gia = gia;
	}
	public long getThanhTien() {
		return ThanhTien;
	}
	public void setThanhTien(long thanhTien) {
		ThanhTien = thanhTien;
	}
	
	
	
	
	
}