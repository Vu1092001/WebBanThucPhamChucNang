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
    <title>Ogani | Giỏ Hàng</title>
	
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
	<%  List<SanPham> lsSanPhams = (List)request.getAttribute("LsSanPham");
		List<Integer> lsSoLuong = (List)request.getAttribute("LsSoLuong");
		List<DanhSachSanPham> lsDanhSachSanPhams = (List)request.getAttribute("LsDanhSachSanPham");
	%>
    <!-- Shoping Cart Section Begin -->
    <section class="shoping-cart spad">
    <form action="TrangChu_Servlet" method="get">
        <div class="container">           
            	<input type="hidden" name="command" value="CAPNHATSOLUONGSANPHAM">
            	<div class="row">
	                <div class="col-lg-12">
	                    <div class="shoping__cart__table">
	                        <table>
	                            <thead>
	                                <tr>
	                                    <th class="shoping__product">Sản Phẩm</th>
	                                    <th>Giá</th>
	                                    <th>Số Lượng</th>
	                                    <th>Tổng Tiền</th>
	                                    <th></th>
	                                </tr>
	                            </thead>
	                            <% if(lsSanPhams != null){ int i=0;%>
	                            	<tbody>
	                            	<% for(SanPham ls : lsSanPhams){%>  
	                            	<input type="hidden" name = "maSp<%=i%>" value="<%= ls.getMaSp() %>"> 
									<input type="hidden" name = "maDs<%=i%>" value="<%= lsDanhSachSanPhams.get(i).getMaGioHang() %>"> 
									<input type="hidden" name = "sl" value="<%= lsSanPhams.size() %>">                           		
	                            		<tr>
	                                    <td class="shoping__cart__item">
	                                        <img src="images/<%=ls.getImageSp()%>" alt="">
	                                        <h5><%= ls.getTenSp() %></h5>
	                                    </td>
	                                    <td class="shoping__cart__price">
	                                      	<%DecimalFormat formatter = new DecimalFormat("###,###,### VND");%>                                     	
	                                        <%= formatter.format(ls.getGiaSp()) %>
	                                    </td>
	                                    <td class="shoping__cart__quantity">
	                                        <div class="quantity">
	                                            <div class="pro-qty">	                                            	
	                                                <input type="text" name="SoLuong<%=i%>" value="<%= lsSoLuong.get(i)%>"> 	                                                													                                            
	                                            </div>
	                                        </div>
	                                    </td>
	                                    <td class="shoping__cart__total">
	                                    <% DecimalFormat format = new DecimalFormat("###,###,### VND"); %>
	                                        <%= format.format(ls.getGiaSp() * lsSoLuong.get(i)) %>
	                                    </td>
	                                    	<c:url var="XoaGioHang" value="TrangChu_Servlet">
												<c:param name="command" value="XOAGIOHANG"></c:param>
												<c:param name="maSp" value="<%=String.valueOf(ls.getMaSp())%>"></c:param>
											</c:url>
	                                    <td class="shoping__cart__item__close">                                        
	                                        <a href="${XoaGioHang}"><svg xmlns="http://www.w3.org/2000/svg" width="30" height="30" fill="currentColor" class="bi bi-trash3-fill" viewBox="0 0 16 16">
	  <path d="M11 1.5v1h3.5a.5.5 0 0 1 0 1h-.538l-.853 10.66A2 2 0 0 1 11.115 16h-6.23a2 2 0 0 1-1.994-1.84L2.038 3.5H1.5a.5.5 0 0 1 0-1H5v-1A1.5 1.5 0 0 1 6.5 0h3A1.5 1.5 0 0 1 11 1.5Zm-5 0v1h4v-1a.5.5 0 0 0-.5-.5h-3a.5.5 0 0 0-.5.5ZM4.5 5.029l.5 8.5a.5.5 0 1 0 .998-.06l-.5-8.5a.5.5 0 1 0-.998.06Zm6.53-.528a.5.5 0 0 0-.528.47l-.5 8.5a.5.5 0 0 0 .998.058l.5-8.5a.5.5 0 0 0-.47-.528ZM8 4.5a.5.5 0 0 0-.5.5v8.5a.5.5 0 0 0 1 0V5a.5.5 0 0 0-.5-.5Z"/>
	</svg></a>
	                                    </td>
	                                </tr>
                                	
	                            	<% i++;}%> 
	                                                                            
	                            </tbody>
	                            <%}%>
	                        </table>
	                    </div>
	                </div>
	            </div>	            
            
                <div class="col-lg-12">
                	
                    <div class="shoping__cart__btns">
                        <a href="TrangChu_Servlet" class="primary-btn cart-btn">TIẾP TỤC MUA</a>
                        <!-- <a href="#" class="primary-btn cart-btn cart-btn-right"><span class="icon_loading"></span>
                            Upadate Cart</a> -->
                        <button type="submit" class="primary-btn cart-btn cart-btn-right">Xác nhận thay đổi</button>
                    </div>
                </div>              
                <div class="col-lg-12">
                    <div class="shoping__checkout">
                        <h5>Thông Tin đơn Hàng</h5>
                        <ul>
                        <% 
                        	Double tongTien = 0.0;
                        	int soLuong = 0;
                        	int i = 0;
                        	for(SanPham ds : lsSanPhams){
                        		
                        		tongTien += ds.getGiaSp() * lsSoLuong.get(i);
                        		soLuong += lsSoLuong.get(i);
                        		i++;
                        	}                       		
                        %>
                            <li>Số Lượng <span><%=soLuong%></span></li>
                            <% DecimalFormat format = new DecimalFormat("###,###,### VND"); %>
                            <li>Tổng Tiền <span><%= format.format(tongTien) %></span></li>
                        </ul>
                        <c:url var="DatHang" value="TrangChu_Servlet">
							<c:param name="command" value="DATHANG"></c:param>
							<c:param name="SoLuongHang" value="<%=String.valueOf(soLuong)%>"></c:param>
							<c:param name="TongTien" value="<%=String.valueOf(tongTien)%>"></c:param>							
						</c:url>	
                        <a href="${DatHang}" class="primary-btn">ĐẶT HÀNG</a>
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