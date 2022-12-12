<%@page import="java.text.DecimalFormat"%>
<%@page import="iuh.fit.Dao.SanPhamDao"%>
<%@page import="java.util.List"%>
<%@page import="iuh.fit.entity.SanPham"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
 <meta name="description" content="Ogani Template">
    <meta name="keywords" content="Ogani, unica, creative, html">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Ogani | Thông Tin Chi tiết</title>

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
                                <button type="submit" class="site-btn">Tìm</button>
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
    <section class="breadcrumb-section set-bg" data-setbg="img/banner/cong-bo-thuc-pham-chuc-nang.jpg">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <div class="breadcrumb__text">
                        <h2>Thực phẩm chức năng</h2>
                        <div class="breadcrumb__option">
                            <span>Thông tin thuốc</span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Breadcrumb Section End -->
<!-- ------------------------------------------------------------ -->
    <!-- Product Details Section Begin -->
    <section class="product-details spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-6 col-md-6">
                    <div class="product__details__pic">
                        <div class="product__details__pic__item">
                        	<% SanPham sanPham = (SanPham)request.getAttribute("SanPham");%>
                            <img class="product__details__pic__item--large"
                                src="images/<%= sanPham.getImageSp() %>" alt="Eroo">
                        </div>
                    </div>
                </div>
                <div class="col-lg-6 col-md-6">
                    <div class="product__details__text">
                        <h3><%= sanPham.getTenSp() %></h3>
                        <div class="product__details__rating">
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star-half-o"></i>
                            <span>(<%=String.valueOf(sanPham.getLuotMua()) %>) Lượt Mua</span>
                        </div>
                           <% DecimalFormat formatter = new DecimalFormat("###,###,### VND");%>                                                                     
                        <div class="product__details__price"><%= formatter.format(sanPham.getGiaSp()) %></div>
                        <p><%= sanPham.getMoTa() %></p> 
                                                   
                        <c:url var="ThemVaoGioHang" value="TrangChu_Servlet">
							<c:param name="command" value="THEMVAOGIOHANG"></c:param>
							<c:param name="maSp" value="<%=String.valueOf(sanPham.getMaSp())%>"></c:param>							
						</c:url>
                        <a href="${ThemVaoGioHang}" class="primary-btn" onclick="themGioHang()">Thêm vào giỏ hàng</a>
                     		<script>
						        function themGioHang(){
						            alert("Thêm thành công");
						        }
						    </script>
                        <a href="#" class="heart-icon"><span class="icon_heart_alt"></span></a>
                        <ul>
                            <li><b>Chia sẻ</b>
                                <div class="share">
                                    <a href="#"><i class="fa fa-facebook"></i></a>
                                    <a href="#"><i class="fa fa-twitter"></i></a>
                                    <a href="#"><i class="fa fa-instagram"></i></a>
                                    <a href="#"><i class="fa fa-pinterest"></i></a>
                                </div>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Product Details Section End -->

    <!-- Related Product Section Begin -->
    <section class="related-product">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="section-title related__product__title">
                        <h2>Sản Phẩm cùng loại</h2>
                    </div>
                </div>
            </div>
            <div class="row">
            	<%	          
	                List<SanPham> lsSanPhams = (List)request.getAttribute("LsSanPham");	
            		int sl = lsSanPhams.size();
            		if(sl > 4){
            			sl = 4; 
            		}
				%>			
				<%for(int i=0; i<sl;i++){ %>						   
				    <div class="col-lg-3 col-md-4 col-sm-6">
	                    <div class="product__item">
	                        <div class="product__item__pic set-bg" data-setbg="images/<%= lsSanPhams.get(i).getImageSp() %>">
	                            <ul class="product__item__pic__hover">
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
	                            </ul>
	                        </div>	
	                        <div class="product__item__text">
	                            <h6><a href="#"><%= lsSanPhams.get(i).getTenSp() %></a></h6>
	                            <h5><%= lsSanPhams.get(i).getGiaSp() %></h5>
	                        </div>
	                    </div>
                	</div>	    				                                	                    
				<%}%>	             
            </div>
        </div>
    </section>
    <!-- Related Product Section End -->

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