package bean;

public class xacnhanbean {
	private int MaChiTietHD;
	private int MaHoaDon;
	private String hoten;
	private String tensach;
	private int SoLuongMua;
	private long gia;
	private long thanhtien;
	private boolean damua;
	
	public xacnhanbean() {
		super();
		// TODO Auto-generated constructor stub
	}

	public xacnhanbean(int maChiTietHD, int maHoaDon, String hoten, String tensach, int soLuongMua, long gia,
			long thanhtien, boolean damua) {
		super();
		MaChiTietHD = maChiTietHD;
		MaHoaDon = maHoaDon;
		this.hoten = hoten;
		this.tensach = tensach;
		SoLuongMua = soLuongMua;
		this.gia = gia;
		this.thanhtien = thanhtien;
		this.damua = damua;
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

	public String getHoten() {
		return hoten;
	}

	public void setHoten(String hoten) {
		this.hoten = hoten;
	}

	public String getTensach() {
		return tensach;
	}

	public void setTensach(String tensach) {
		this.tensach = tensach;
	}

	public int getSoLuongMua() {
		return SoLuongMua;
	}

	public void setSoLuongMua(int soLuongMua) {
		SoLuongMua = soLuongMua;
	}

	public long getGia() {
		return gia;
	}

	public void setGia(long gia) {
		this.gia = gia;
	}

	public long getThanhtien() {
		return thanhtien;
	}

	public void setThanhtien(long thanhtien) {
		this.thanhtien = thanhtien;
	}

	public boolean isDamua() {
		return damua;
	}

	public void setDamua(boolean damua) {
		this.damua = damua;
	}
	
	
	
	
	
}