package bean;

public class didongbean {
	public int Madidong;
	public String tendidong;
	public long gia;
	public int soluong;
	public String anh;
	
	public didongbean() {
		super();
		// TODO Auto-generated constructor stub
	}
	public didongbean(int madidong, String tendidong, long gia, int soluong, String anh) {
		super();
		Madidong = madidong;
		this.tendidong = tendidong;
		this.gia = gia;
		this.soluong = soluong;
		this.anh = anh;
	}
	public int getMadidong() {
		return Madidong;
	}
	public void setMadidong(int madidong) {
		Madidong = madidong;
	}
	public String getTendidong() {
		return tendidong;
	}
	public void setTendidong(String tendidong) {
		this.tendidong = tendidong;
	}
	public long getGia() {
		return gia;
	}
	public void setGia(long gia) {
		this.gia = gia;
	}
	public int getSoluong() {
		return soluong;
	}
	public void setSoluong(int soluong) {
		this.soluong = soluong;
	}
	public String getAnh() {
		return anh;
	}
	public void setAnh(String anh) {
		this.anh = anh;
	}
	
	
}
