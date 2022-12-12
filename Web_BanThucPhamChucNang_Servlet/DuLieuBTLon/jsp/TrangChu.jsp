<%@page import="java.text.DecimalFormat"%>
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
    <title>Ogani | Trang Chủ</title>

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
    <section class="hero">
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
                            <form action="TrangChu_Servlet" method="get">
                            	<input type="hidden" name="command" value="TIMKIEM">
                                <input type="text" name="timKiem" placeholder="Bạn muốn tìm gì ?">
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
                    <div class="hero__item set-bg" data-setbg="img/hero/thuc-pham-bo-sung-sat.jpg">
                        <div class="hero__text">
                            <span>Thực phẩm chức năng</span>                           
                            <p>Hãy chọn lấy thực phẩm tốt nhất dành cho bạn</p>
                            <a href="#" class="primary-btn">Mua ngay</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Hero Section End -->
   <!-- Header Section End -->
 <!-- Banner Begin -->
    <div class="banner">
        <div class="container">
            <div class="row">
                <div class="col-lg-6 col-md-6 col-sm-6">
                    <div class="banner__pic">
                        <img src="img/banner/cong-bo-thuc-pham-chuc-nang.jpg" alt="">
                    </div>
                </div>
                <div class="col-lg-6 col-md-6 col-sm-6">
                    <div class="banner__pic">
                        <img src="img/banner/thuc-pham-chuc-nang-la-gi.jpg" alt="">
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Banner End -->
    <!-- Featured Section Begin -->
    <section class="featured spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="section-title">
                        <h2>Danh sách sản phẩm</h2>
                    </div>
                </div>
            </div>
            <div class="row featured__filter">           				 
					<div class="row">
					<%
	                List<SanPham> lsSanPhams = (List)request.getAttribute("DS_SanPham");								
					%>	
				    <%for(SanPham sanPham: lsSanPhams){ %>						   
					    <div class="col-lg-3 col-md-4 col-sm-6 mix oranges fresh-meat">
		                    <div class="featured__item">
		                        <div class="featured__item__pic set-bg" data-setbg="images/<%=sanPham.getImageSp()%>">
		                            <ul class="featured__item__pic__hover">
		                            	<c:url var="ThemVaoYeuthich" value="TrangChu_Servlet">
											<c:param name="command" value="THEMVAOYEUTHICH"></c:param>
											<c:param name="Link" value="/TrangChu.jsp"></c:param>
										</c:url>
										<c:url var="ThemVaoGioHang" value="TrangChu_Servlet">
											<c:param name="command" value="THEMVAOGIOHANG"></c:param>
											<c:param name="maSp" value="<%=String.valueOf(sanPham.getMaSp())%>"></c:param>
											<c:param name="Link" value="/TrangChu.jsp"></c:param>
										</c:url>
		                                <li><a href="${ThemVaoYeuthich}" onclick="yeuThich()"><i class="fa fa-heart"></i></a></li>
		                                <li><a href="${ThemVaoGioHang}" onclick="themGioHang()"><i class="fa fa-shopping-cart"></i></a></li>	
<!-- 		                                <script>
									        function themGioHang(){
									            alert("Thêm thành công");
									        }
									        function yeuThich(){
									            alert("Yeu ");
									        }  
									    </script>   -->                                          	                                
		                            </ul>
		                        </div>
		                        <c:url var="ChiTietSanPham" value="TrangChu_Servlet">
									<c:param name="command" value="CHITIEPSANPHAM"></c:param>
									<c:param name="maSp" value="<%=String.valueOf(sanPham.getMaSp())%>"></c:param>
								</c:url>
		                        <div class="featured__item__text">
		                           <%DecimalFormat formatter = new DecimalFormat("###,###,### VND");%>
                                     <h6><a href="${ChiTietSanPham}"><%= sanPham.getTenSp() %></a></h6>
                                    <h5><%=formatter.format(sanPham.getGiaSp())%></h5>
		                        </div>
		                    </div>
                		</div>            			    			                                	                    
					<%}%>	                                           
            </div>
        </div>
    </section>
    <!-- Featured Section End -->
    <!-- Latest Product Section Begin -->
    <section class="latest-product spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-4 col-md-6">
                    <div class="latest-product__text">
                        <h4>Sản phẩm mới nhất</h4>
                        <div class="latest-product__slider owl-carousel">
                            <div class="latest-prdouct__slider__item">
                                <a href="#" class="latest-product__item">
                                    <div class="latest-product__item__pic">
                                        <img src="img/latest-product/thuoc.jpg" alt="">
                                    </div>
                                    <div class="latest-product__item__text">
                                        <h6>GH Creation EX</h6>
                                        <span>619.000 VND</span>
                                    </div>
                                </a>
                                <a href="#" class="latest-product__item">
                                    <div class="latest-product__item__pic">
                                        <img src="img/latest-product/thuoc1.jpg" alt="">
                                    </div>
                                    <div class="latest-product__item__text">
                                        <h6>Shiseido Pure White</h6>
                                        <span>494.000 VND</span>
                                    </div>
                                </a>
                                <a href="#" class="latest-product__item">
                                    <div class="latest-product__item__pic">
                                        <img src="img/latest-product/thuoc2.jpg" alt="">
                                    </div>
                                    <div class="latest-product__item__text">
                                        <h6>Natrol Biotin</h6>
                                        <span>269.000 VND</span>
                                    </div>
                                </a>
                            </div>
                                    <div class="latest-prdouct__slider__item">
                                <a href="#" class="latest-product__item">
                                    <div class="latest-product__item__pic">
                                        <img src="img/latest-product/thuoc.jpg" alt="">
                                    </div>
                                    <div class="latest-product__item__text">
                                        <h6>GH Creation EX</h6>
                                        <span>619.000 VND</span>
                                    </div>
                                </a>
                                <a href="#" class="latest-product__item">
                                    <div class="latest-product__item__pic">
                                        <img src="img/latest-product/thuoc1.jpg" alt="">
                                    </div>
                                    <div class="latest-product__item__text">
                                        <h6>Shiseido Pure White</h6>
                                        <span>494.000 VND</span>
                                    </div>
                                </a>
                                <a href="#" class="latest-product__item">
                                    <div class="latest-product__item__pic">
                                        <img src="img/latest-product/thuoc2.jpg" alt="">
                                    </div>
                                    <div class="latest-product__item__text">
                                        <h6>Natrol Biotin</h6>
                                        <span>269.000 VND</span>
                                    </div>
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6">
                    <div class="latest-product__text">
                        <h4>Sản phẩm bán chạy</h4>
                        <div class="latest-product__slider owl-carousel">
                            <div class="latest-prdouct__slider__item">
                                <a href="#" class="latest-product__item">
                                    <div class="latest-product__item__pic">
                                        <img src="img/latest-product/thuoc.jpg" alt="">
                                    </div>
                                    <div class="latest-product__item__text">
                                        <h6>GH Creation EX</h6>
                                        <span>619.000 VND</span>
                                    </div>
                                </a>
                                <a href="#" class="latest-product__item">
                                    <div class="latest-product__item__pic">
                                        <img src="img/latest-product/thuoc1.jpg" alt="">
                                    </div>
                                    <div class="latest-product__item__text">
                                        <h6>Shiseido Pure White</h6>
                                        <span>494.000 VND</span>
                                    </div>
                                </a>
                                <a href="#" class="latest-product__item">
                                    <div class="latest-product__item__pic">
                                        <img src="img/latest-product/thuoc2.jpg" alt="">
                                    </div>
                                    <div class="latest-product__item__text">
                                        <h6>Natrol Biotin</h6>
                                        <span>269.000 VND</span>
                                    </div>
                                </a>
                            </div>
                           <div class="latest-prdouct__slider__item">
                                <a href="#" class="latest-product__item">
                                    <div class="latest-product__item__pic">
                                        <img src="img/latest-product/thuoc.jpg" alt="">
                                    </div>
                                    <div class="latest-product__item__text">
                                        <h6>GH Creation EX</h6>
                                        <span>619.000 VND</span>
                                    </div>
                                </a>
                                <a href="#" class="latest-product__item">
                                    <div class="latest-product__item__pic">
                                        <img src="img/latest-product/thuoc1.jpg" alt="">
                                    </div>
                                    <div class="latest-product__item__text">
                                        <h6>Shiseido Pure White</h6>
                                        <span>494.000 VND</span>
                                    </div>
                                </a>
                                <a href="#" class="latest-product__item">
                                    <div class="latest-product__item__pic">
                                        <img src="img/latest-product/thuoc2.jpg" alt="">
                                    </div>
                                    <div class="latest-product__item__text">
                                        <h6>Natrol Biotin</h6>
                                        <span>269.000 VND</span>
                                    </div>
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6">
                    <div class="latest-product__text">
                        <h4>Sản phẩm nhiều đánh giá</h4>
                        <div class="latest-product__slider owl-carousel">
                           <div class="latest-prdouct__slider__item">
                                <a href="#" class="latest-product__item">
                                    <div class="latest-product__item__pic">
                                        <img src="img/latest-product/thuoc.jpg" alt="">
                                    </div>
                                    <div class="latest-product__item__text">
                                        <h6>GH Creation EX</h6>
                                        <span>619.000 VND</span>
                                    </div>
                                </a>
                                <a href="#" class="latest-product__item">
                                    <div class="latest-product__item__pic">
                                        <img src="img/latest-product/thuoc1.jpg" alt="">
                                    </div>
                                    <div class="latest-product__item__text">
                                        <h6>Shiseido Pure White</h6>
                                        <span>494.000 VND</span>
                                    </div>
                                </a>
                                <a href="#" class="latest-product__item">
                                    <div class="latest-product__item__pic">
                                        <img src="img/latest-product/thuoc2.jpg" alt="">
                                    </div>
                                    <div class="latest-product__item__text">
                                        <h6>Natrol Biotin</h6>
                                        <span>269.000 VND</span>
                                    </div>
                                </a>
                            </div>
                            <div class="latest-prdouct__slider__item">
                                <a href="#" class="latest-product__item">
                                    <div class="latest-product__item__pic">
                                        <img src="img/latest-product/thuoc.jpg" alt="">
                                    </div>
                                    <div class="latest-product__item__text">
                                        <h6>GH Creation EX</h6>
                                        <span>619.000 VND</span>
                                    </div>
                                </a>
                                <a href="#" class="latest-product__item">
                                    <div class="latest-product__item__pic">
                                        <img src="img/latest-product/thuoc1.jpg" alt="">
                                    </div>
                                    <div class="latest-product__item__text">
                                        <h6>Shiseido Pure White</h6>
                                        <span>494.000 VND</span>
                                    </div>
                                </a>
                                <a href="#" class="latest-product__item">
                                    <div class="latest-product__item__pic">
                                        <img src="img/latest-product/thuoc2.jpg" alt="">
                                    </div>
                                    <div class="latest-product__item__text">
                                        <h6>Natrol Biotin</h6>
                                        <span>269.000 VND</span>
                                    </div>
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Latest Product Section End -->
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