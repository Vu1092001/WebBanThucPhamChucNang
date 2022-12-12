<%@page import="iuh.fit.entity.NhaCungCap"%>
<%@page import="java.text.DecimalFormat"%>
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
    <title>Ogani | Sửa Sản Phẩm</title>

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
                                <div class="hero__search__categories">
                                    Thêm sản phẩm
                                    <span class="arrow_carrot-down"></span>
                                </div>
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
    <% 
    	
    %>
    <section class="breadcrumb-section set-bg" data-setbg="img/breadcrumb.jpg">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <div class="breadcrumb__text">
                        <h2>Checkout</h2>
                        <div class="breadcrumb__option">
                            <a href="./index.html">Home</a>
                            <span>Checkout</span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Breadcrumb Section End -->
<% 
	SanPham sp = (SanPham)request.getAttribute("lsSanPham");
	List<NhaCungCap> lsNhaCungCaps = (List)request.getAttribute("lsNhaCungCap");
%>
    <!-- Checkout Section Begin -->
    <section class="checkout spad">
        <div class="container">           
            <div class="checkout__form">
                <h4>Thông tin sản phẩm</h4>
                <form action="TrangChu_Servlet" method="get">
                	<input type="hidden" name="command" value="SUASANPHAM"> 
                	<input type="hidden" name="maSp" value="<%=sp.getMaSp()%>">             	
                    <div class="row">
                        <div class="col-lg-12 col-md-6">
                            <div class="row">
                                <div class="col-lg-12">
                                    <div class="checkout__input">
                                        <p>Tên Sản Phẩm<span>*</span></p>
                                        <input type="text" name="tenSp" value="<%= sp.getTenSp() %>">
                                    </div>
                                </div>
                            </div>                                                 
                            <div class="row">
                                <div class="col-lg-6">
                                    <div class="checkout__input">
                                        <p>Giá sản phẩm<span>*</span></p>
                                        <input name="giaSanPham" type="number" value="<%=sp.getGiaSp()%>">
                                    </div>
                                </div>
                                <div class="col-lg-6">
                                    <div class="checkout__input">
                                        <p>Lợi ích<span>*</span></p>
                                        <input name="loiIch" type="text" value="<%=sp.getLoiIch()%>">
                                    </div>
                                </div>
                            </div>
                             <div class="row">
                                <div class="col-lg-6">
                                   <div class="checkout__input">
	                                 	<p>Nhà cung cấp<span>*</span></p>
	                                    <select  id="NhaCungCapDuoi" name="slNhaCungCap">
	                                    <%if(lsNhaCungCaps.size() != 0){	
	                                    	for(NhaCungCap ls : lsNhaCungCaps){ %>
	                                    		<% if(ls.getMaNhaCungCap() == sp.getNhaCungCap().getMaNhaCungCap()) {%>
	                                    			<option selected="selected"><%=ls.getTenNhaCungCap()%></option>
	                                    		<%}%>
										    	<option><%=ls.getTenNhaCungCap()%></option>
										 <%} 
										 }%>   
										</select>									
										<br>
										<br>
	                                 </div>
                                </div>
                                <div class="col-lg-6">
                                    <div class="checkout__input">
	                                 	<p>Loại Sản Phẩm<span>*</span></p>
	                                    <select  id="loaiSanPhamDuoi" name="slLoaiSanPham">
	                                    <% 
	                                    String[] dsLoai ={"Tảo biển","Hỗ Trợ Sức Khỏe","Viên uống trắng da",
                                    			"Collagen","Sữa ong chúa","Tăng chiều cao","Nhau Thai Cừu","Vitamin Và Khoáng Chất","Tinh dầu hoa anh thảo","Đông trùng hạ thảo",};
		                                    for(int i=0;i<dsLoai.length;i++){
		                                    	if(dsLoai[i].equals(sp.getLoaiSanPham())){
		                                    %>		
		                                    	<option><%=dsLoai[i]%></option>		
		                                    	<%}%>                                   
											    <option><%=dsLoai[i]%></option>										    											
											<% } %>
										</select>
	                                 </div>
	                                 <br>
	                                 <br>
                                </div> 
                            </div> 
                            <div class="row">
	                            <div class="col-lg-6">
	                                <div class="checkout__input">
	                                    <p>Đối tượng sử dụng<span>*</span></p>
	                                    <input name="doiTuongSuDung" type="text" value="<%= sp.getDoiTuongSuDung() %>">
	                                </div>
	                            </div>
	                            <div class="col-lg-6">
	                                <div class="checkout__input">
	                                    <p>image sản phẩm<span>*</span></p>
	                                    <input name="imgSanPham" type="text" value="<%= sp.getImageSp() %>">
	                                </div>
	                            </div> 
                            </div> 
                            <div class="row">
                                <div class="col-lg-12">
                                    <div class="checkout__input">
                                        <p>Mô tả sản phẩm<span>*</span></p>
                                        <input type="text" name="moTaSanPham" value="<%= sp.getMoTa() %>">
                                    </div>
                                </div>
                            </div>                              
                             <div class="col-lg-12" align="center">     
                             		<br>
                             		<br>                                                     		                                   	                               
                            	 	 <button onclick="ThongBao()" type="submit" class="site-btn">Xác nhận</button>                                     
					                 <script>
					                   function ThongBao(){		
					                 	  alert("Sửa sản phẩm thành công"); 
					                   }
					             	</script>
                            	 	 
                             </div>
                                        
                            
                        </div>                
                    </div>
                </form>
                 
            </div>
        </div>
    </section>
    <!-- Checkout Section End -->

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