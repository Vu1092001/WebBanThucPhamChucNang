package iuh.fit.Dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import javax.sql.DataSource;

import iuh.fit.entity.DanhSachSanPham;
import iuh.fit.entity.NguoiDung;
import iuh.fit.entity.NhaCungCap;
import iuh.fit.entity.SanPham;
import iuh.fit.entity.ThongTinChiTietNguoiDung;

public class DanhSachSanPhamDao {
	DataSource dataSource;

	public DanhSachSanPhamDao(DataSource dataSource) {
		super();
		this.dataSource = dataSource;
	}
	
	//Lấy toàn bộ sản phẩm trong gio hang của người dùng
		public List<DanhSachSanPham> getAllDanhSachSanPhams(int maNd) {
			List<DanhSachSanPham> lsDanhSachSanPhams = new ArrayList<DanhSachSanPham>();
			try {
				Connection con = dataSource.getConnection();
				Statement stmt = con.createStatement();
				ResultSet rs = stmt.executeQuery("Select * from DanhSachSanPham where Ma_ND = "+ maNd);
				
				while (rs.next()) {
					lsDanhSachSanPhams.add(new DanhSachSanPham(rs.getInt(1), 
							new SanPham(rs.getInt(2)), 
							new NguoiDung(rs.getInt(3)),
							rs.getInt(4))); 						
				}				
				close(con,stmt,rs);
				return lsDanhSachSanPhams;
			} catch (Exception e) {
				e.printStackTrace();
			}	
			return null;
		}
	//Thêm sản phẩm vào danh sách sản phẩm
		public boolean ThemDanhSachSanPham(DanhSachSanPham ds) {
			try {
				Connection con = dataSource.getConnection();
				PreparedStatement stmt = con.prepareStatement("Insert into DanhSachSanPham"
						+ " values(?,?,?)");
				stmt.setInt(1, ds.getMaSP().getMaSp());
				stmt.setInt(2, ds.getMaKH().getMaNd());
				stmt.setInt(3, ds.getSoLuong());					
				stmt.execute();
				close(con, stmt, null);
				return true;
			} catch (Exception e) {
				e.printStackTrace();
			}
			return false;
		}
		//Gét danh sách sản phảm theo mã sp
		public DanhSachSanPham getAllDanhSachSanPhamsTheoMaSP(int maNd, int maSp) {
			DanhSachSanPham danhSachSanPham = null;
			try {
				Connection con = dataSource.getConnection();
				Statement stmt = con.createStatement();
				ResultSet rs = stmt.executeQuery("Select * from DanhSachSanPham where Ma_SP = "+ maSp + "and Ma_ND = "+ maNd);				
				while (rs.next()) {
				  danhSachSanPham = new DanhSachSanPham(rs.getInt(1), 
							new SanPham(rs.getInt(2)), 
							new NguoiDung(rs.getInt(3)),
							rs.getInt(4)); 						
				}				
				close(con,stmt,rs);
				return danhSachSanPham;
			} catch (Exception e) {
				e.printStackTrace();
			}	
			return null;
		}
		//Sửa thông tin danh sách sản phẩm
		public Boolean suaThongTinDanhSachSanPham(DanhSachSanPham tt) {
			try {
				Connection con = dataSource.getConnection();// Update DanhSachSanPham set So_Luong = 3 Where Ma_Danh_Sach_Sp = 7
				PreparedStatement stmt = con.prepareStatement("Update DanhSachSanPham set So_Luong = ? Where Ma_Danh_Sach_Sp = ?");
				stmt.setInt(1, tt.getSoLuong());
				stmt.setInt(2, tt.getMaGioHang());					
				stmt.execute();
				close(con, stmt, null);
				return true;
			} catch (Exception e) {
				e.printStackTrace();
			}
			return false;
		}
		//Xóa sản phẩm trong danh sách sản phảm
		public Boolean xoaDanhMucSanPham(int idSP,int idKH) {
			try {
				Connection con = dataSource.getConnection();
				PreparedStatement stmt = con.prepareStatement("Delete DanhSachSanPham where Ma_SP= ? and Ma_ND = ?");
				stmt.setInt(1, idSP);
				stmt.setInt(2, idKH);
				stmt.execute();
				close(con, stmt, null);		
				return true;
			} catch (Exception e) {
				e.printStackTrace();
			}
			return false;
		}
		//Xóa sản phẩm trong danh sách sản phảm
			public Boolean xoaDanhMucSanPhamVoiMaKhachHang(int idKH) {
				try {
					Connection con = dataSource.getConnection();
					PreparedStatement stmt = con.prepareStatement("Delete DanhSachSanPham where Ma_ND = ?");
					stmt.setInt(1, idKH);
					stmt.execute();
					close(con, stmt, null);		
					return true;
				} catch (Exception e) {
					e.printStackTrace();
				}
				return false;
			}
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		private void close(Connection con, Statement stmt, ResultSet rs) {
			try {
				if(con!=null)
					con.close();
				if(stmt!=null)
					stmt.close();
				if(rs!=null) {
					rs.close();
				}
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
}
