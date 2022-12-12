package iuh.fit.Dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import javax.sql.DataSource;

import iuh.fit.entity.DanhSachSanPham;
import iuh.fit.entity.NguoiDung;
import iuh.fit.entity.NhaCungCap;
import iuh.fit.entity.SanPham;

public class NhaCungCapDao {
	private DataSource dataSource;

	public NhaCungCapDao(DataSource dataSource) {
		super();
		this.dataSource = dataSource;
	}
	public NhaCungCap getAllNhaCungCapTheoTenNhaCungCap(String tenNCC) {
		NhaCungCap lsNhaCungCaps = null;
		try {
			Connection con = dataSource.getConnection();
			Statement stmt = con.createStatement();
			ResultSet rs = stmt.executeQuery("Select * from NhaCungCap where Ten_Nha_Cung_Cap = N'" + tenNCC +"'");			
			while (rs.next()) {				
			 lsNhaCungCaps = new NhaCungCap(rs.getInt(1), rs.getString(2), rs.getString(3)); 						
			}				
			close(con,stmt,rs);
			return lsNhaCungCaps;
		} catch (Exception e) {
			e.printStackTrace();
		}	
		return null;
	}	
	public NhaCungCap getAllNhaCungCapTheoMaNhaCungCap(int ma) {
		NhaCungCap lsNhaCungCaps = null;
		try {
			Connection con = dataSource.getConnection();
			Statement stmt = con.createStatement();
			ResultSet rs = stmt.executeQuery("Select * from NhaCungCap where Ma_Nha_Cung_Cap = N'" + ma +"'");			
			while (rs.next()) {				
			 lsNhaCungCaps = new NhaCungCap(rs.getInt(1), rs.getString(2), rs.getString(3)); 						
			}				
			close(con,stmt,rs);
			return lsNhaCungCaps;
		} catch (Exception e) {
			e.printStackTrace();
		}	
		return null;
	}
	
	public List<NhaCungCap> getAllNhaCungCap() {
		List<NhaCungCap> lsNhaCungCaps = new ArrayList<NhaCungCap>();
		try {
			Connection con = dataSource.getConnection();
			Statement stmt = con.createStatement();
			ResultSet rs = stmt.executeQuery("Select * from NhaCungCap");			
			while (rs.next()) {
			 lsNhaCungCaps.add(new NhaCungCap(rs.getInt(1), rs.getString(2), rs.getString(3))) ; 						
			}				
			close(con,stmt,rs);
			return lsNhaCungCaps;
		} catch (Exception e) {
			e.printStackTrace();
		}	
		return null;
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
