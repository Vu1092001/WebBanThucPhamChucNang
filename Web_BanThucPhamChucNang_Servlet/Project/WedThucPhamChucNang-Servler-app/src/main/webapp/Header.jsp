<%@page import="iuh.fit.entity.NguoiDung"%>
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
  <!-- Page Preloder -->
    <div id="preloder">
        <div class="loader"></div>
    </div>
    <!-- Humberger Begin -->
    <div class="humberger__menu__overlay"></div>
    <div class="humberger__menu__wrapper">
        <div class="humberger__menu__logo">
             <a href="#"><img src="img/logo.png" alt=""></a>
        </div>
        <div class="humberger__menu__cart">
            <ul>
                <li><a href="#"><i class="fa fa-heart"></i> <span>1</span></a></li>
                <li><a href="#"><i class="fa fa-shopping-bag"></i> <span>3</span></a></li>
            </ul>
        </div>
        <div class="humberger__menu__widget">
            <div class="header__top__right__language">
                <img src="img/language.png" alt="">
                <div>English</div>
                <span class="arrow_carrot-down"></span>
                <ul>
                    <li><a href="#">Spanis</a></li>
                    <li><a href="#">English</a></li>
                </ul>
            </div>
            <div class="header__top__right__auth">
                <a href="#"><i class="fa fa-user"></i> Login</a>
            </div>
        </div>
        <div id="mobile-menu-wrap"></div>
        <div class="header__top__right__social">
            <a href="#"><i class="fa fa-facebook"></i></a>
            <a href="#"><i class="fa fa-twitter"></i></a>
            <a href="#"><i class="fa fa-linkedin"></i></a>
            <a href="#"><i class="fa fa-pinterest-p"></i></a>
        </div>
        <div class="humberger__menu__contact">
            <ul>
                <li><i class="fa fa-envelope"></i>vhong10092001</li>
                <li>Miễn phí giao hàng !!!</li>
            </ul>
        </div>
    </div>
    <!-- Humberger End -->

    <!-- Header Section Begin -->
    <header class="header">
        <div class="header__top">
            <div class="container">
                <div class="row">
                    <div class="col-lg-6 col-md-6">
                        <div class="header__top__left">
                            <ul>
                                 <li><i class="fa fa-envelope"></i>vhong10092001</li>
                				<li>Miễn phí giao hàng !!!</li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-lg-6 col-md-6">
                        <div class="header__top__right">
                            <div class="header__top__right__social">
                                <a href="#"><i class="fa fa-facebook"></i></a>
                                <a href="#"><i class="fa fa-twitter"></i></a>
                                <a href="#"><i class="fa fa-linkedin"></i></a>
                                <a href="#"><i class="fa fa-pinterest-p"></i></a>
                            </div>
                            <div class="header__top__right__language">
                                <!-- <span class="arrow_carrot-down"></span>
                                <ul>
                                    <li><a href="#">Spanis</a></li>
                                    <li><a href="#">English</a></li>
                                </ul> -->
                            </div>
                            <% NguoiDung nguoiDungHienTai = (NguoiDung)request.getAttribute("NguoiDungHienTai");
                            	if(nguoiDungHienTai == null){
                            %>
		                           <div class="header__top__right__auth">
		                               <a href="./Login.jsp"><i class="fa fa-user"></i>Đăng nhập</a>
		                           </div>          
		                                         
                            	<%}else{%>
                            		<c:url var="HoanTatThongTin" value="TrangChu_Servlet">
										<c:param name="command" value="HOANTATTHONGTIN"></c:param>							
									</c:url>   
                            		<div class="header__top__right__auth">
                                		<a href="${HoanTatThongTin}"><i class="fa fa-user"></i><%= nguoiDungHienTai.getTenTaiKhoan() %></a>
                            		</div>
                            	<%}%>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="container">
            <div class="row">
                <div class="col-lg-3">
                    <div class="header__logo">
                        <c:url var="TrangChu" value="TrangChu_Servlet">
							<c:param name="command" value="TRANGCHU"></c:param>							
						</c:url>	                
                        <a href="${TrangChu}"><img src="img/logo.png" alt=""></a>
                    </div>
                </div>
                <% if(nguoiDungHienTai == null){ %>
	                <div class="col-lg-6">
	                    <nav class="header__menu">
	                        <ul>
	                            <li class="active"><a href="TrangChu_Servlet"></a></li>	                            
	                            	<c:url var="GioHang" value="TrangChu_Servlet">
										<c:param name="command" value="GIOHANG"></c:param>
									</c:url>
	                             <c:url var="LichSu" value="TrangChu_Servlet">
										<c:param name="command" value="LICHSUDONHANG"></c:param>
									</c:url>
	                            <li><a href="#">Liên Hệ</a></li>	                           
	                        </ul>
	                    </nav>
	                </div>
                <%}else if(nguoiDungHienTai.getLoaiTaiKhoan().equals("U")){%>
	          		  <div class="col-lg-6">
	                    <nav class="header__menu">
	                        <ul>
	                            <li class="active"><a href="TrangChu_Servlet"></a></li>	                            
	                            	<c:url var="GioHang" value="TrangChu_Servlet">
										<c:param name="command" value="GIOHANG"></c:param>
									</c:url>
	                            <li><a href="${GioHang}">Giỏ Hàng</a></li>
	                             <c:url var="LichSu" value="TrangChu_Servlet">
										<c:param name="command" value="LICHSUDONHANG"></c:param>
									</c:url>
	                            <li><a href="${LichSu}">Lịch Sử</a></li>
	                            <li><a href="#">Liên Hệ</a></li>	
	                            <c:url var="dangXuat" value="TrangChu_Servlet">
										<c:param name="command" value="DANGXUAT"></c:param>
								</c:url>                         
	                            <li><a href="${dangXuat}">Đăng Xuất</a></li>                             	                                                        
	                        </ul>
	                    </nav>
	                </div>
                <% }else if(nguoiDungHienTai.getLoaiTaiKhoan().equals("AD")){ %>
                	<div class="col-lg-6">
	                    <nav class="header__menu">
	                        <ul>
	                            <li class="active"><a href="TrangChu_Servlet">Nhà</a></li>
	                            	<c:url var="GioHang" value="TrangChu_Servlet">
										<c:param name="command" value="GIOHANG"></c:param>
										<c:param name="" value="Thuốc ngủ"></c:param>
									</c:url>
	                            <li><a href="${GioHang}">Giỏ Hàng</a></li>
	                            <li><a href="#">Quản lý</a>
	                                <ul class="header__menu__dropdown">
		                                <c:url var="QLSanPham" value="TrangChu_Servlet">
											<c:param name="command" value="QLSANPHAM"></c:param>
										</c:url>
										<c:url var="QLTaiKhoan" value="TrangChu_Servlet">
											<c:param name="command" value="QLTAIKHOAN"></c:param>
										</c:url>
	                                    <li><a href="${QLSanPham}">Quản lý Sản Phẩm</a></li>
	                                    <li><a href="${QLTaiKhoan}">Quản lý Tài Khoản</a></li>	                                    
	                                </ul>
	                            </li>	                           
	                             <c:url var="LichSu" value="TrangChu_Servlet">
										<c:param name="command" value="LICHSUDONHANG"></c:param>
									</c:url>
	                            <li><a href="${LichSu}">Lịch Sử</a></li>	
	                            <c:url var="dangXuat" value="TrangChu_Servlet">
										<c:param name="command" value="DANGXUAT"></c:param>
								</c:url>                         
	                            <li><a href="${dangXuat}">Đăng Xuất</a></li>
	                        </ul>
	                    </nav>
	                </div>
                <% } %>
            </div>
            <div class="humberger__open">
                <i class="fa fa-bars"></i>
            </div>
        </div>
    </header>
  </body>
</html>
   