package bean;

public class xacnhanbean {
	private int MaChiTietHD;
	private int MaHoaDon;
	private String HoTen;
	private String TenDiDong;
	private int SoLuongMua;
	private long Gia;
	private long ThanhTien;
	private boolean DaMua;
	public xacnhanbean() {
		super();
	}
	public xacnhanbean(int maChiTietHD, int maHoaDon, String hoTen, String tenDiDong, int soLuongMua, long gia,
			long thanhTien, boolean daMua) {
		super();
		MaChiTietHD = maChiTietHD;
		MaHoaDon = maHoaDon;
		HoTen = hoTen;
		TenDiDong = tenDiDong;
		SoLuongMua = soLuongMua;
		Gia = gia;
		ThanhTien = thanhTien;
		DaMua = daMua;
	}
	public int getMaChiTietHD() {
		return MaChiTietHD;
	}
	public void setMaChiTietHD(int maChiTietHD) {
		MaChiTietHD = maChiTietHD;
	}
	public int getMaHoaDon() {
		return MaHoaDon;
	}
	public void setMaHoaDon(int maHoaDon) {
		MaHoaDon = maHoaDon;
	}
	public String getHoTen() {
		return HoTen;
	}
	public void setHoTen(String hoTen) {
		HoTen = hoTen;
	}
	public String getTenDiDong() {
		return TenDiDong;
	}
	public void setTenDiDong(String tenDiDong) {
		TenDiDong = tenDiDong;
	}
	public int getSoLuongMua() {
		return SoLuongMua;
	}
	public void setSoLuongMua(int soLuongMua) {
		SoLuongMua = soLuongMua;
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
	public boolean isDaMua() {
		return DaMua;
	}
	public void setDaMua(boolean daMua) {
		DaMua = daMua;
	}
	
	
	
	
	
	
	
}