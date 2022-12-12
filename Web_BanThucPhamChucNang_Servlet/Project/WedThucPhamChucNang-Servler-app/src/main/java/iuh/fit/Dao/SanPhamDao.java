package iuh.fit.Dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import javax.sql.DataSource;

import iuh.fit.entity.NhaCungCap;
import iuh.fit.entity.SanPham;


public class SanPhamDao {
	private DataSource dataSource;

	public SanPhamDao(DataSource dataSource) {
		super();
		this.dataSource = dataSource;
	}
	//Lấy toàn bộ sản phẩm
	public List<SanPham> getAllSanPham() {
		List<SanPham> lsSanPhams = new ArrayList<SanPham>();
		try {
			Connection con = dataSource.getConnection();
			Statement stmt = con.createStatement();
			ResultSet rs = stmt.executeQuery("Select * from SanPham");
			
			while (rs.next()) {
				lsSanPhams.add(new SanPham(rs.getInt(1), 
						rs.getString(2), 
						rs.getDouble(3),
						rs.getString(4), 
						rs.getInt(5),
						new NhaCungCap(rs.getInt(6)),
						rs.getString(7),
						rs.getString(8),
						rs.getString(9),
						rs.getString(10)));
			}
			close(con,stmt,rs);
		} catch (Exception e) {
			e.printStackTrace();
		}	
		return lsSanPhams;
	}
	// tìm sản phẩm theo mã
	public SanPham getOneSanPham(int id) {
		SanPham sp = new SanPham();
		try {
			Connection con = dataSource.getConnection();
			Statement stmt = con.createStatement();
			ResultSet rs = stmt.executeQuery("Select * from SanPham where Ma_Sp = " + id);		
			while(rs.next()) {
				sp = new SanPham(rs.getInt(1), 
						rs.getString(2), 
						rs.getDouble(3),
						rs.getString(4), 
						rs.getInt(5),
						new NhaCungCap(rs.getInt(6)),
						rs.getString(7),
						rs.getString(8),
						rs.getString(9),
						rs.getString(10));	
			}
			close(con,stmt,rs);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return sp;
	}
	// Tìm sản phẩm theo Loại Sản phẩm
	public List<SanPham> getAllSanPhamTheoLaoi(String loai) {
		List<SanPham> lsSanPhams = new ArrayList<SanPham>();
		try {
			Connection con = dataSource.getConnection();
			Statement stmt = con.createStatement();
			ResultSet rs = stmt.executeQuery("Select * from SanPham where Loai_San_Pham = N'" + loai + "'");			
			while (rs.next()) {
				lsSanPhams.add(new SanPham(rs.getInt(1), 
						rs.getString(2), 
						rs.getDouble(3),
						rs.getString(4), 
						rs.getInt(5),
						new NhaCungCap(rs.getInt(6)),
						rs.getString(7),
						rs.getString(8),
						rs.getString(9),
						rs.getString(10)));
			}
			close(con,stmt,rs);
		} catch (Exception e) {
			e.printStackTrace();
		}	
		return lsSanPhams;
	}
	//Them san pham
	public void themSanPham(SanPham sp) {
        try {
            Connection con = dataSource.getConnection();
            PreparedStatement stmt = con.prepareStatement("Insert into SanPham "
                    + " values(?,?,?,?,?,?,?,?,?)");		            
		            stmt.setString(1, sp.getTenSp());
		            stmt.setDouble(2, sp.getGiaSp());
		            stmt.setString(3, sp.getImageSp());
		            stmt.setInt(4, sp.getLuotMua());
		            stmt.setInt(5, sp.getNhaCungCap().getMaNhaCungCap());
		            stmt.setString(6, sp.getLoaiSanPham());
		            stmt.setString(7, sp.getDoiTuongSuDung());
		            stmt.setString(8, sp.getLoiIch());
		            stmt.setString(9, sp.getMoTa());
		            stmt.execute();
		            close(con, stmt, null);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
	//Them san pham
		public boolean xoaSanPham(int maSp) {
	        try {
	            Connection con = dataSource.getConnection();
	            PreparedStatement stmt = con.prepareStatement("Delete SanPham where Ma_Sp = ?");
			            stmt.setInt(1, maSp);
			            stmt.execute();
			            close(con, stmt, null);
			            return true;
	        } catch (Exception e) {
	            e.printStackTrace();
	        }
	        return false;
	    }		
		//Xua san pham
		public boolean SuaSanPham(SanPham sp) {
	        try {
	            Connection con = dataSource.getConnection();
	            PreparedStatement stmt = con.prepareStatement("update SanPham set Ten_Sp = ? ,Gia_Sp = ? ,Image_Sp = ? ,Luot_Mua = ? ,Ma_Nha_Cung_Cap = ? ,Loai_San_Pham = ? ,Doi_Tuong_SD = ? ,Loi_Ich = ? ,Mo_Ta = ?  where Ma_Sp = ?");		            
			            stmt.setString(1, sp.getTenSp());
			            stmt.setDouble(2, sp.getGiaSp());
			            stmt.setString(3, sp.getImageSp());
			            stmt.setInt(4, sp.getLuotMua());
			            stmt.setInt(5, sp.getNhaCungCap().getMaNhaCungCap());
			            stmt.setString(6, sp.getLoaiSanPham());
			            stmt.setString(7, sp.getDoiTuongSuDung());
			            stmt.setString(8, sp.getLoiIch());
			            stmt.setString(9, sp.getMoTa());
			            stmt.setInt(10, sp.getMaSp());
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
