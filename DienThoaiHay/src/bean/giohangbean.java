package bean;

public class giohangbean {

	private String anh;
	private String masach;
	private String tensach;
	private long soluong;
	private long gia;
	private long thanhtien;
	
	public giohangbean() {
		super();
		// TODO Auto-generated constructor stub
	}
	public giohangbean(String anh, String masach, String tensach, long soluong, long gia) {
		super();
		this.anh = anh;
		this.masach = masach;
		this.tensach = tensach;
		this.soluong = soluong;
		this.gia = gia;
		this.thanhtien = soluong*gia;
	}
	public String getAnh() {
		return anh;
	}
	public void setAnh(String anh) {
		this.anh = anh;
	}
	public String getMasach() {
		return masach;
	}
	public void setMasach(String masach) {
		this.masach = masach;
	}
	public String getTensach() {
		return tensach;
	}
	public void setTensach(String tensach) {
		this.tensach = tensach;
	}
	public long getSoluong() {
		return soluong;
	}
	public void setSoluong(long soluong) {
		this.soluong = soluong;
	}
	public long getGia() {
		return gia;
	}
	public void setGia(long gia) {
		this.gia = gia;
	}
	public long getThanhtien() {
		return soluong*gia;
	}
	public void setThanhtien(long thanhtien) {
		this.thanhtien = thanhtien;
	}
	
	
	
}