package iuh.fit.entity;

import java.sql.Date;

public class DonHang {
	private int maDonHang;
	private NguoiDung maKH;
	private Date ngayDat;
	private int soLuongTong;
	private double tongTien;
	private String ghiChu;
	public DonHang() {
		super();
	}
	public DonHang(int maDonHang) {
		super();
		this.maDonHang = maDonHang;
	}
	public DonHang(NguoiDung maKH, Date ngayDat, int soLuongTong, double tongTien, String ghiChu) {
		super();
		this.maKH = maKH;
		this.ngayDat = ngayDat;
		this.soLuongTong = soLuongTong;
		this.tongTien = tongTien;
		this.ghiChu = ghiChu;
	}
	public DonHang(int maDonHang, NguoiDung maKH, Date ngayDat, int soLuongTong, double tongTien, String ghiChu) {
		super();
		this.maDonHang = maDonHang;
		this.maKH = maKH;
		this.ngayDat = ngayDat;
		this.soLuongTong = soLuongTong;
		this.tongTien = tongTien;
		this.ghiChu = ghiChu;
	}
	public int getMaDonHang() {
		return maDonHang;
	}
	public void setMaDonHang(int maDonHang) {
		this.maDonHang = maDonHang;
	}
	public NguoiDung getMaKH() {
		return maKH;
	}
	public void setMaKH(NguoiDung maKH) {
		this.maKH = maKH;
	}
	public Date getNgayDat() {
		return ngayDat;
	}
	public void setNgayDat(Date ngayDat) {
		this.ngayDat = ngayDat;
	}
	public int getSoLuongTong() {
		return soLuongTong;
	}
	public void setSoLuongTong(int soLuongTong) {
		this.soLuongTong = soLuongTong;
	}
	public double getTongTien() {
		return tongTien;
	}
	public void setTongTien(double tongTien) {
		this.tongTien = tongTien;
	}
	public String getGhiChu() {
		return ghiChu;
	}
	public void setGhiChu(String ghiChu) {
		this.ghiChu = ghiChu;
	}
	@Override
	public String toString() {
		return "DonHang [maDonHang=" + maDonHang + ", maKH=" + maKH + ", ngayDat=" + ngayDat + ", soLuongTong="
				+ soLuongTong + ", tongTien=" + tongTien + ", ghiChu=" + ghiChu + "]";
	}
	
	
	
}
