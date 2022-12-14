package bean;

public class didongbean {
	private String MaDiDong;
	private String TenDiDong;
	private long SoLuong;
	private long Gia;
	private String MaLoai;
	private String Anh;
	public didongbean() {
		super();
	}
	public didongbean(String maDiDong, String tenDiDong, long soLuong, long gia, String maLoai, String anh) {
		super();
		MaDiDong = maDiDong;
		TenDiDong = tenDiDong;
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
