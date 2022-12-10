package bean;

public class didongbean {
	private String MaDiDong;
	private String TenDiDONG;
	private String SoLuong;
	private String Gia;
	private String MaLoai;
	private String Anh;
	public didongbean() {
		super();
	}
	public didongbean(String maDiDong, String tenDiDONG, String soLuong, String gia, String maLoai, String anh) {
		super();
		MaDiDong = maDiDong;
		TenDiDONG = tenDiDONG;
		SoLuong = soLuong;
		Gia = gia;
		MaLoai = maLoai;
		Anh = anh;
	}
	public String getMaDiDong() {
		return MaDiDong;
	}
	public void setMaDiDong(String maDiDong) {
		MaDiDong = maDiDong;
	}
	public String getTenDiDONG() {
		return TenDiDONG;
	}
	public void setTenDiDONG(String tenDiDONG) {
		TenDiDONG = tenDiDONG;
	}
	public String getSoLuong() {
		return SoLuong;
	}
	public void setSoLuong(String soLuong) {
		SoLuong = soLuong;
	}
	public String getGia() {
		return Gia;
	}
	public void setGia(String gia) {
		Gia = gia;
	}
	public String getMaLoai() {
		return MaLoai;
	}
	public void setMaLoai(String maLoai) {
		MaLoai = maLoai;
	}
	public String getAnh() {
		return Anh;
	}
	public void setAnh(String anh) {
		Anh = anh;
	}
	

}
