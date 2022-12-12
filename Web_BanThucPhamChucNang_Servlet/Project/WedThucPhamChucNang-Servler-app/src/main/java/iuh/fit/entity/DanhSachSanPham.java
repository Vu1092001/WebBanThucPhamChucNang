package iuh.fit.entity;

public class DanhSachSanPham {
	private int maGioHang;
	private SanPham maSP;
	private NguoiDung maKH;
	private int soLuong;
	public DanhSachSanPham() {
		super();
	}
	public DanhSachSanPham(int maGioHang) {
		super();
		this.maGioHang = maGioHang;
	}
	public DanhSachSanPham(SanPham maSP, NguoiDung maKH, int soLuong) {
		super();
		this.maSP = maSP;
		this.maKH = maKH;
		this.soLuong = soLuong;
	}
	public DanhSachSanPham(int maGioHang, SanPham maSP, NguoiDung maKH, int soLuong) {
		super();
		this.maGioHang = maGioHang;
		this.maSP = maSP;
		this.maKH = maKH;
		this.soLuong = soLuong;
	}
	public int getMaGioHang() {
		return maGioHang;
	}
	public void setMaGioHang(int maGioHang) {
		this.maGioHang = maGioHang;
	}
	public SanPham getMaSP() {
		return maSP;
	}
	public void setMaSP(SanPham maSP) {
		this.maSP = maSP;
	}
	public NguoiDung getMaKH() {
		return maKH;
	}
	public void setMaKH(NguoiDung maKH) {
		this.maKH = maKH;
	}
	public int getSoLuong() {
		return soLuong;
	}
	public void setSoLuong(int soLuong) {
		this.soLuong = soLuong;
	}
	@Override
	public String toString() {
		return "DanhSachSanPham [maGioHang=" + maGioHang + ", maSP=" + maSP + ", maKH=" + maKH + ", soLuong=" + soLuong
				+ "]";
	}
	
	
}
