package iuh.fit.entity;

public class ThongTinChiTietNguoiDung {
	private int maTTCTND;
	private String tenNd; 
	private String diaChi;
	private String soDienThoai;
	private NguoiDung nguoiDung;
	public ThongTinChiTietNguoiDung() {
		super();
	}
	public ThongTinChiTietNguoiDung(int maTTCTND) {
		super();
		this.maTTCTND = maTTCTND;
	}
	
	public ThongTinChiTietNguoiDung(String tenNd, String diaChi, String soDienThoai, NguoiDung nguoiDung) {
		super();
		this.tenNd = tenNd;
		this.diaChi = diaChi;
		this.soDienThoai = soDienThoai;
		this.nguoiDung = nguoiDung;
	}
	public ThongTinChiTietNguoiDung(int maTTCTND, NguoiDung nguoiDung, String tenNd, String diaChi, String soDienThoai
			) {
		super();
		this.maTTCTND = maTTCTND;
		this.tenNd = tenNd;
		this.diaChi = diaChi;
		this.soDienThoai = soDienThoai;
		this.nguoiDung = nguoiDung;
	}
	public int getMaTTCTND() {
		return maTTCTND;
	}
	public void setMaTTCTND(int maTTCTND) {
		this.maTTCTND = maTTCTND;
	}
	public String getTenNd() {
		return tenNd;
	}
	public void setTenNd(String tenNd) {
		this.tenNd = tenNd;
	}
	public String getDiaChi() {
		return diaChi;
	}
	public void setDiaChi(String diaChi) {
		this.diaChi = diaChi;
	}
	public String getSoDienThoai() {
		return soDienThoai;
	}
	public void setSoDienThoai(String soDienThoai) {
		this.soDienThoai = soDienThoai;
	}
	public NguoiDung getNguoiDung() {
		return nguoiDung;
	}
	public void setNguoiDung(NguoiDung nguoiDung) {
		this.nguoiDung = nguoiDung;
	}
	@Override
	public String toString() {
		return "ThongTinChiTietNguoiDung [maTTCTND=" + maTTCTND + ", tenNd=" + tenNd + ", diaChi=" + diaChi
				+ ", soDienThoai=" + soDienThoai + ", nguoiDung=" + nguoiDung + "]";
	}
}
