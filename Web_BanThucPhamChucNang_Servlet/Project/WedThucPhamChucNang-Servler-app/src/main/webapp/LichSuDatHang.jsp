<%@page import="iuh.fit.entity.DonHang"%>
<%@page import="java.text.DecimalFormat"%>
<%@page import="iuh.fit.entity.DanhSachSanPham"%>
<%@page import="iuh.fit.entity.SanPham"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>

<html lang="zxx">

<head>
    <meta charset="UTF-8">
    <meta name="description" content="Ogani Template">
    <meta name="keywords" content="Ogani, unica, creative, html">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Ogani | Lịch sử đặt hàng</title>

    <!-- Google Font -->
    <link href="https://fonts.googleapis.com/css2?family=Cairo:wght@200;300;400;600;900&display=swap" rel="stylesheet">

    <!-- Css Styles -->
    <link rel="stylesheet" href="css/bootstrap.min.css" type="text/css">
    <link rel="stylesheet" href="css/font-awesome.min.css" type="text/css">
    <link rel="stylesheet" href="css/elegant-icons.css" type="text/css">
    <link rel="stylesheet" href="css/nice-select.css" type="text/css">
    <link rel="stylesheet" href="css/jquery-ui.min.css" type="text/css">
    <link rel="stylesheet" href="css/owl.carousel.min.css" type="text/css">
    <link rel="stylesheet" href="css/slicknav.min.css" type="text/css">
    <link rel="stylesheet" href="css/style.css" type="text/css">
</head>

<body>
	<jsp:include page="Header.jsp"></jsp:include>
    <!-- Hero Section Begin -->
    <section class="hero hero-normal">
        <div class="container">
            <div class="row">
                <div class="col-lg-3">
                    <div class="hero__categories">
                        <div class="hero__categories__all">
                            <i class="fa fa-bars"></i>
                            <span>Danh mục sản phẩm</span>
                        </div>
                        <c:url var="VienUongtrangDa" value="TrangChu_Servlet">
							<c:param name="command" value="DANHMUCSP"></c:param>
							<c:param name="LoaiSp" value="Viên uống trắng da"></c:param>
						</c:url>
						<c:url var="HoTroSucKhoe" value="TrangChu_Servlet">
							<c:param name="command" value="DANHMUCSP"></c:param>
							<c:param name="LoaiSp" value="Hỗ Trợ Sức Khỏe"></c:param>
						</c:url>	
						<c:url var="Collagen" value="TrangChu_Servlet">
							<c:param name="command" value="DANHMUCSP"></c:param>
							<c:param name="LoaiSp" value="Collagen"></c:param>
						</c:url>	
						<c:url var="SuaOngChua" value="TrangChu_Servlet">
							<c:param name="command" value="DANHMUCSP"></c:param>
							<c:param name="LoaiSp" value="Sữa ong chúa"></c:param>
						</c:url>	
						<c:url var="DongTrungHathao" value="TrangChu_Servlet">
							<c:param name="command" value="DANHMUCSP"></c:param>
							<c:param name="LoaiSp" value="Đông trùng hạ thảo"></c:param>
						</c:url>	
						<c:url var="TaoBien" value="TrangChu_Servlet">
                            <c:param name="command" value="DANHMUCSP"></c:param>
                            <c:param name="LoaiSp" value="Tảo biển"></c:param>
                        </c:url>
                        <c:url var="TangChieuCao" value="TrangChu_Servlet">
                            <c:param name="command" value="DANHMUCSP"></c:param>
                            <c:param name="LoaiSp" value="Tăng chiều cao"></c:param>
                        </c:url>
                        <c:url var="NhauThaiCuu" value="TrangChu_Servlet">
                            <c:param name="command" value="DANHMUCSP"></c:param>
                            <c:param name="LoaiSp" value="Nhau Thai Cừu"></c:param>
                        </c:url>
                        <c:url var="VitaminVaKhoangChat" value="TrangChu_Servlet">
                            <c:param name="command" value="DANHMUCSP"></c:param>
                            <c:param name="LoaiSp" value="Vitamin Và Khoáng Chất"></c:param>
                        </c:url>
                        <c:url var="TinhDauHoaAnhThoa" value="TrangChu_Servlet">
                            <c:param name="command" value="DANHMUCSP"></c:param>
                            <c:param name="LoaiSp" value="Tinh dầu hoa anh thảo"></c:param>
                        </c:url>
                            <ul>
                                <li><a href="${VienUongtrangDa}">Viên uống trắng da</a></li>
                                <li><a href="${HoTroSucKhoe}">Hỗ Trợ Sức Khỏe</a></li>
                                <li><a href="${Collagen}">Collagen</a></li>
                                <li><a href="${SuaOngChua}">Sữa ong chúa</a></li>
                                <li><a href="${DongTrungHathao}">Đông trùng hạ thảo</a></li>
                                <li><a href="${TaoBien}">Tảo biển</a></li>
                                <li><a href="${TangChieuCao}">Tăng chiều cao</a></li>
                                <li><a href="${NhauThaiCuu}">Nhau Thai Cừu</a></li>
                                <li><a href="${VitaminVaKhoangChat}">Vitamin Và Khoáng Chất</a></li>
                                <li><a href="${TinhDauHoaAnhThoa}">Tinh dầu hoa anh thảo</a></li>

                            </ul>
                    </div>
                </div>
                <div class="col-lg-9">
                    <div class="hero__search">
                        <div class="hero__search__form">
                            <form action="#">                              
                                <input type="text" placeholder="Bạn cần gì?">
                                <button type="submit" class="site-btn">Tìm kiếm</button>
                            </form>
                        </div>
                        <div class="hero__search__phone">
                            <div class="hero__search__phone__icon">
                                <i class="fa fa-phone"></i>
                            </div>
                            <div class="hero__search__phone__text">
                                <h5>01213899728</h5>
                                <span>Hỗ trợ 24/7</span>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Hero Section End -->

    <!-- Breadcrumb Section Begin -->
    <!-- Breadcrumb Section End -->
	<%  List<DonHang> lsDonHang = (List)request.getAttribute("LsDonHang");
	%>
    <!-- Shoping Cart Section Begin -->
    <section class="shoping-cart spad">
    <form action="TrangChu_Servlet" method="get">
        <div class="container">           
            	<div class="row">
	                <div class="col-lg-12">
	                    <div class="shoping__cart__table">
	                        <table>
	                            <thead>
	                                <tr>
	                                    <th>Mã đơn hàng</th>	                                    
	                                    <th>Mã Người dùng</th>
	                                    <th>Ngày đặt</th>
	                                    <th>Số lượng tổng</th>
	                                    <th>Tổng tiền </th>
	                                    <th>Ghi chú </th>         
	                                </tr>
	                            </thead>
	                            <% if(lsDonHang != null){ int i=0;%>
	                            	<tbody>
	                            	<% for(DonHang ls : lsDonHang){%>                            		
	                            		<tr>
	                                    <td>	                                       
	                                        <h5><%= ls.getMaDonHang() %></h5>
	                                    </td>	                                   	                                    	
	                                   <%--  <td class="shoping__cart__price">
	                                      	<%DecimalFormat formatter = new DecimalFormat("###,###,### VND");%>                                     	
	                                        <%= formatter.format(ls.getGiaSp()) %>
	                                    </td> --%>
	                                    
	                             		<td>
	                                    	<h5><%= ls.getMaKH().getMaNd() %></h5>
	                                    </td>	                                    
	                                    <td>	                                                                       
	                                       <h5> <%= ls.getNgayDat() %> </h5>
	                                    </td>
	                                    <td>	                                    
	                                       <h5> <%= ls.getSoLuongTong() %> </h5>
	                                    </td>
	                                    <td>	                                    
	                                      <%DecimalFormat formatter = new DecimalFormat("###,###,### VND");%>                                     	
	                                        <%= formatter.format(ls.getTongTien()) %>
	                                    </td>
	                                    <td>	                                    
	                                       <h5> <%= ls.getGhiChu() %> </h5>
	                                    </td>	                                    		                                    
	                                </tr>
                                	<%-- <input type="hidden" name = "maSp<%=i%>" value="<%= ls.getMaSp() %>"> 
									<input type="hidden" name = "maDs<%=i %>" value="<%= lsDanhSachSanPhams.get(i).getMaGioHang() %>"> 
									<input type="hidden" name = "sl" value="<%= lsDanhSachSanPhams.size() %>">  --%>
	                            	<% i++;}%> 	                            	                                                  
	                            </tbody>
	                            <%}%>
	                        </table>
	                    </div>
	                </div>
	            </div>	                                           
            </div>         
       	 </div>
        </form>
    </section>
    <!-- Shoping Cart Section End -->

    <!-- Footer Section Begin -->
    <footer class="footer spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-3 col-md-6 col-sm-6">
                    <div class="footer__about">
                        <div class="footer__about__logo">
                            <a href="./index.html"><img src="img/logo.png" alt=""></a>
                        </div>
                        <ul>
                            <li>Địa chỉ: 12 Nguyễn Văn Bảo Phường 14 Quận Gò Vấp</li>
                            <li>Điện thoại: 01213899728</li>
                            <li>Email: vhong10092001@gmail.com</li>
                        </ul>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6 col-sm-6 offset-lg-1">
                    <div class="footer__widget">
                        <h6>Liên kết hữu ích</h6>
                        <ul>
                            <li><a href="#">Liên hệ với chúng tôi</a></li>
                            <li><a href="#">Chính sách bảo mật</a></li>
                            <li><a href="#">Cam kết chính hãng</a></li>
                            <li><a href="#">Tư vấn nhiệt tình</a></li>
                            <li><a href="#">Giá rẻ nhất thị trường</a></li>
                            <li><a href="#">Bán hàng trên toàn nước</a></li>
                        </ul>
                    </div>
                </div>
                <div class="col-lg-4 col-md-12">
                    <div class="footer__widget">
                        <p>Nhập Email để nhận thông báo sớm nhất từ chúng tôi.</p>
                        <form action="#">
                            <input type="text" placeholder="Nhập email của bạn vào đây">
                            <button type="submit" class="site-btn">Đăng ký</button>
                        </form>
                        <div class="footer__widget__social">
                            <a href="#"><i class="fa fa-facebook"></i></a>
                            <a href="#"><i class="fa fa-instagram"></i></a>
                            <a href="#"><i class="fa fa-twitter"></i></a>
                            <a href="#"><i class="fa fa-pinterest"></i></a>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-12">
                    <div class="footer__copyright">
                        <div class="footer__copyright__text"><p><!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
  Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with <i class="fa fa-heart" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank">Colorlib</a>
  <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. --></p></div>
                        <div class="footer__copyright__payment"><img src="img/payment-item.png" alt=""></div>
                    </div>
                </div>
            </div>
        </div>
    </footer>
    <!-- Footer Section End -->

    <!-- Js Plugins -->
    <script src="js/jquery-3.3.1.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/jquery.nice-select.min.js"></script>
    <script src="js/jquery-ui.min.js"></script>
    <script src="js/jquery.slicknav.js"></script>
    <script src="js/mixitup.min.js"></script>
    <script src="js/owl.carousel.min.js"></script>
    <script src="js/main.js"></script>


</body>

</html>