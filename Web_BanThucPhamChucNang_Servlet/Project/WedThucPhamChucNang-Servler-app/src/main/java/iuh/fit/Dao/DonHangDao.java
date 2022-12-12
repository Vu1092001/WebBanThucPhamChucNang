package iuh.fit.Dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import javax.sql.DataSource;


import iuh.fit.entity.DonHang;
import iuh.fit.entity.NguoiDung;

public class DonHangDao {
	DataSource dataSource;

	public DonHangDao(DataSource dataSource) {
		super();
		this.dataSource = dataSource;
	}
	
	public List<DonHang> getAllDonHang() {
        List<DonHang> lsDonHang = new ArrayList<DonHang>();
        try {
            Connection con = dataSource.getConnection();
            Statement stmt = con.createStatement();
            ResultSet rs = stmt.executeQuery("Select * from DonHang");

            while (rs.next()) {
                lsDonHang.add(new DonHang(
                        rs.getInt(1),
                        new NguoiDung(rs.getInt(2)),
                        rs.getDate(3),
                        rs.getInt(4),
                        rs.getDouble(5),
                        rs.getString(6)));
            }
            close(con, null, rs);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return lsDonHang;
    }
	public List<DonHang> getAllDonHangTheoMaKh(int maKh) {
        List<DonHang> lsDonHang = new ArrayList<DonHang>();
        try {
            Connection con = dataSource.getConnection();
            Statement stmt = con.createStatement();
            ResultSet rs = stmt.executeQuery("Select * from DonHang where Ma_ND = "+maKh);
            while (rs.next()) {
                lsDonHang.add(new DonHang(
                        rs.getInt(1),
                        new NguoiDung(rs.getInt(2)),
                        rs.getDate(3),
                        rs.getInt(4),
                        rs.getDouble(5),
                        rs.getString(6)));
            }
            close(con, null, rs);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return lsDonHang;
    }
	////////////////////////////////////////////////////////
	public boolean themDonHang (DonHang donHang) {
	        try {
	            Connection con = dataSource.getConnection();
	            PreparedStatement stmt = con.prepareStatement("Insert into DonHang(Ma_ND,Ngay_Dat,So_Luong_Tong,Tong_Tien,Ghi_Chu)"
	                    + " values(?,?,?,?,?)");
	            stmt.setInt(1, donHang.getMaKH().getMaNd());
	            stmt.setDate(2, donHang.getNgayDat());
	            stmt.setInt(3, donHang.getSoLuongTong());
	            stmt.setDouble(4, donHang.getTongTien());
	            stmt.setString(5, donHang.getGhiChu());
	            stmt.execute();
	            close(con, stmt, null);
	            return true;
	        } catch (Exception e) {
	            e.printStackTrace();
	        }
	        return false;
	    }
	///////////////////////////////////////////////////////
	public boolean suaDonHang(DonHang donHang) {
	        try {
	            Connection con = dataSource.getConnection();
	            PreparedStatement stmt = con.prepareStatement("Update DonHang set Ma_ND = ?, Ngay_Dat = ?, So_Luong_Tong = ?,Tong_Tien = ?,Ghi_Chu =? ,where Ma_Don_Hang = ?");
	            stmt.setInt(1, donHang.getMaKH().getMaNd());
	            stmt.setDate(2, donHang.getNgayDat());
	            stmt.setInt(3, donHang.getSoLuongTong());
	            stmt.setDouble(4, donHang.getTongTien());
	            stmt.setString(5, donHang.getGhiChu());
	            stmt.setInt(6, donHang.getMaDonHang());
	            stmt.execute();
	            close(con, stmt, null);
	            return true;
	        } catch (Exception e) {
	            e.printStackTrace();
	        }
	        return false;
	    }
	////////////////////////////////////////////////////
	public boolean xoaDonHang(int id) {
	        try {
	            Connection con = dataSource.getConnection();
	            PreparedStatement stmt = con.prepareStatement("Delete * from DonHang where Ma_Don_Hang= ?");
	            stmt.setInt(1,id);
	            stmt.execute();
	            close(con, stmt, null);
	            return true;
	        } catch (Exception e) {
	            e.printStackTrace();
	        }
	        return false;
	    }
	private void close(Connection con, PreparedStatement stmt, ResultSet rs) {
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
