<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Pepe Shop</title>

<!-- Google Font -->
<link
	href="https://fonts.googleapis.com/css2?family=Cairo:wght@200;300;400;600;900&display=swap"
	rel="stylesheet">

<!-- Css Styles -->
<link rel="stylesheet"
	href="<c:url value='/template/web/css/bootstrap.min.css ' />"
	type="text/css">
<link rel="stylesheet"
	href="<c:url value='/template/web/css/font-awesome.min.css ' />"
	type="text/css">
<link rel="stylesheet"
	href="<c:url value='/template/web/css/elegant-icons.css' />"
	type="text/css">
<link rel="stylesheet"
	href="<c:url value='/template/web/css/nice-select.css' />"
	type="text/css">
<link rel="stylesheet"
	href="<c:url value='/template/web/css/jquery-ui.min.css' />"
	type="text/css">
<link rel="stylesheet"
	href="<c:url value='/template/web/css/owl.carousel.min.css' />"
	type="text/css">
<link rel="stylesheet"
	href="<c:url value='/template/web/css/slicknav.min.css' />"
	type="text/css">
<link rel="stylesheet"
	href="<c:url value='/template/web/css/style.css' />" type="text/css">
</head>

<body>
	<!-- Page Preloder -->
	<div id="preloder">
		<div class="loader"></div>
	</div>

	<!-- Humberger Begin -->
	
	<!-- Humberger End -->

	<!-- Header Section Begin -->
	<header class="header">
	<div class="header__top">
		<div class="container">
			<div class="row">
				<div class="col-lg-6 col-md-6">
					<div class="hero__search__phone">
						<div class="hero__search__phone__icon">
							<i class="fa fa-phone"></i>
						</div>
						<div class="hero__search__phone__text">
							<h5>+84 888 888 888</h5>
							<span>Hỗ trợ 24/7 qua đường dây nóng</span>
						</div>
					</div>
				</div>
				<div class="col-lg-6 col-md-6">
					<div class="header__top__right">

						<div class="header__top__right__auth">
							<a href="register.html"><i class="fa fa-user-plus"></i> Đăng
								ký</a>
						</div>
						<div class="header__top__right__auth">
							<a href="login.html"><i class="fa fa-user"></i> Đăng nhập</a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="container">
		<div class="row">
			<div class="col-lg-3">
				<div class="header__logo">
					<a href="./index.html"><img src="img/logo.png" alt=""></a>
				</div>
			</div>
			<div class="col-lg-6">
				<nav class="header__menu">
				<ul>
					<li><a href="./index.html">Trang Chủ</a></li>
					<li class="active"><a href="./shop-grid.html">Sản Phẩm</a></li>
					<li><a href="#">Phân Loại</a>
						<ul class="header__menu__dropdown">
							<li><a href="./cay-an-qua.html">Cây ăn quả</a></li>
							<li><a href="./cay-cong-nghiep.html">Cây công nghiệp</a></li>
							<li><a href="./cay-lay-go.html">Cây lấy gỗ</a></li>
						</ul></li>
					<li><a href="./contact.html">Liên hệ</a></li>
					<!--                            <li><a href="./contact.html">Contact</a></li>-->
				</ul>
				</nav>
			</div>
			<div class="col-lg-3">
				<div class="header__cart">
					<ul>
						<li><a href="./favourite.html"><i class="fa fa-heart"></i>
								<span>1</span></a></li>
						<li><a href="./cart.html"><i class="fa fa-shopping-bag"></i>
								<span>3</span></a></li>
					</ul>
					<div class="header__cart__price">
						item: <span>0.00</span>
					</div>
				</div>
			</div>
		</div>
		<div class="humberger__open">
			<i class="fa fa-bars"></i>
		</div>
	</div>
	</header>
	<!-- Hero Section End -->

	<!-- Breadcrumb Section Begin -->
	<section class="breadcrumb-section set-bg"
		data-setbg="img/breadcrumb.jpg">
	<div class="container">
		<div class="row">
			<div class="col-lg-12 text-center">
				<div class="breadcrumb__text">
					<h2>Sản phẩm</h2>
					<div class="breadcrumb__option">
						<a href="./index.html">Trang chủ</a> <span>Sản phẩm</span>
					</div>
				</div>
			</div>
		</div>
	</div>
	</section>
	<!-- Breadcrumb Section End -->

	<!-- Product Section Begin -->
	<section class="product spad">
	<div class="container">
		<div class="row">

			<div class="col-lg-12 col-md-7">
				<div class="product__discount">
					<div class="section-title product__discount__title">
						<h2>Đang giảm giá</h2>
					</div>
					<div class="row">
						<div class="product__discount__slider owl-carousel">
							<c:forEach items="${listSale }" var="o">
								<div class="col-lg-4">
									<div class="product__discount__item">
										<div class="product__discount__item__pic set-bg"
											data-setbg="./img/product/dobau.png">
											<div class="product__discount__percent">-${o.discount_per() }%</div>
											<ul class="product__item__pic__hover">
												<li><a href="#"><i class="fa fa-heart"></i></a></li>
												<li><a href="#"><i class="fa fa-shopping-cart"></i></a></li>
											</ul>
										</div>

										<a href="./infor-product.html">
											<div class="product__discount__item__text">
												<h5>${o.name }</h5>
												<p>
													3,4 <i class="fa fa-star" style="color: #ffA200"></i>
												</p>
												<div class="product__item__price">
	
													${o.discount_price()}


													<span>${o.price }</span>
												</div>
											</div>
										</a>
									</div>

								</div>
							</c:forEach>

							<div class="col-lg-4">
								<div class="product__discount__item">
									<div class="product__discount__item__pic set-bg"
										data-setbg="img/product/doihat.png">
										<div class="product__discount__percent">-19%</div>
										<ul class="product__item__pic__hover">
											<li><a href="#"><i class="fa fa-heart"></i></a></li>
											<li><a href="#"><i class="fa fa-shopping-cart"></i></a></li>
										</ul>
									</div>
									<a href="./infor-product.html">
										<div class="product__discount__item__text">
											<h5>Cây Dổi Hạt</h5>
											<p>
												3,8 <i class="fa fa-star" style="color: #ffA200"></i>
											</p>
											<div class="product__item__price">
												13.000đ <span>16.000đ</span>
											</div>
										</div>
									</a>
								</div>
							</div>
							<div class="col-lg-4">
								<div class="product__discount__item">
									<div class="product__discount__item__pic set-bg"
										data-setbg="img/product/banglangtim.png">
										<div class="product__discount__percent">-26%</div>
										<ul class="product__item__pic__hover">
											<li><a href="#"><i class="fa fa-heart"></i></a></li>
											<li><a href="#"><i class="fa fa-shopping-cart"></i></a></li>
										</ul>
									</div>
									<a href="./infor-product.html">
										<div class="product__discount__item__text">
											<h5>Bằng Lăng Tím</h5>
											<p>
												3,1 <i class="fa fa-star" style="color: #ffA200"></i>
											</p>
											<div class="product__item__price">
												60.000đ <span>82.000đ</span>
											</div>
										</div>
									</a>
								</div>
							</div>
							<div class="col-lg-4">
								<div class="product__discount__item">
									<div class="product__discount__item__pic set-bg"
										data-setbg="img/product/coc-thai.png">
										<div class="product__discount__percent">-20%</div>
										<ul class="product__item__pic__hover">
											<li><a href="#"><i class="fa fa-heart"></i></a></li>
											<li><a href="#"><i class="fa fa-shopping-cart"></i></a></li>
										</ul>
									</div>
									<a href="./infor-product.html">
										<div class="product__discount__item__text">

											<h5>Cóc Thái</h5>
											<p>
												3,4 <i class="fa fa-star" style="color: #ffA200"></i>
											</p>

											<div class="product__item__price">
												45.000đ <span>50.000đ</span>
											</div>
										</div>
									</a>
								</div>
							</div>
							<div class="col-lg-4">
								<div class="product__discount__item">
									<div class="product__discount__item__pic set-bg"
										data-setbg="img/product/che-day.png">
										<div class="product__discount__percent">-10%</div>
										<ul class="product__item__pic__hover">
											<li><a href="#"><i class="fa fa-heart"></i></a></li>
											<li><a href="#"><i class="fa fa-shopping-cart"></i></a></li>
										</ul>
									</div>
									<a href="./infor-product.html">
										<div class="product__discount__item__text">
											<h5>Cây Chè Dây</h5>
											<p>
												3,8 <i class="fa fa-star" style="color: #ffA200"></i>
											</p>

											<div class="product__item__price">
												34.000đ <span>40.000đ</span>
											</div>
										</div>
									</a>
								</div>
							</div>
							<div class="col-lg-4">
								<div class="product__discount__item">
									<div class="product__discount__item__pic set-bg"
										data-setbg="img/product/bang-dai-loan.png">
										<div class="product__discount__percent">-28%</div>
										<ul class="product__item__pic__hover">
											<li><a href="#"><i class="fa fa-heart"></i></a></li>
											<li><a href="#"><i class="fa fa-shopping-cart"></i></a></li>
										</ul>
									</div>
									<a href="./infor-product.html">
										<div class="product__discount__item__text">

											<h5>Bàng Đài Loan</h5>
											<p>
												3,8 <i class="fa fa-star" style="color: #ffA200"></i>
											</p>

											<div class="product__item__price">
												23.000đ <span>35.000đ</span>
											</div>
										</div>
									</a>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="filter__item">
					<div class="row">
						<div class="col-lg-4 col-md-5">
							<div class="filter__sort">
								<span>Sắp xếp</span> <select>
									<option value="0">Mặc định</option>
									<option value="0">Thấp đến cao</option>
									<option value="0">Cao đến thấp</option>
								</select>
							</div>
						</div>
						<div class="col-lg-4 col-md-4">
							<div class="filter__found">
								<h6>Sản phẩm</h6>
							</div>
						</div>
						<div class="col-lg-4 col-md-3">
							<!--                                sử dụng biến đổi grid-->
							<!--                                <div class="filter__option">-->
							<!--                                    <span class="icon_grid-2x2"></span>-->
							<!--                                    <span class="icon_ul"></span>-->
							<!--                                </div>-->
						</div>
					</div>
				</div>
				<div class="row">
					<c:forEach items="${listPro}" var="i">
						<div class="col-lg-4 col-md-6 col-sm-6">

							<div class="product__item">
								<div class="product__item__pic set-bg"
									data-setbg="img/product/product-1.jpg">
									<a href="infor-product.html"><img
										src="img/product/sau-rieng-thai.png"> </a>

									<ul class="product__item__pic__hover">
										<li><a href="#"><i class="fa fa-heart"></i></a></li>
										<li><a href="#"><i class="fa fa-shopping-cart"></i></a></li>
									</ul>

								</div>
								<a href="./infor-product.html">
									<div class="product__item__text">
										<h6>${i.name}</h6>
										<p>
											3,4 <i class="fa fa-star" style="color: #ffA200"></i>
										</p>
										<h5>${i.price}</h5>
									</div>
								</a>
							</div>
						</div>
					</c:forEach>



					<div class="product__pagination">
						<a href="./shop-grid.html">1</a> <a href="./shop-grid-2.html">2</a>
						<a href="./shop-grid-3.html">3</a> <a href="./shop-grid-4.html">4</a>
						<a href="./shop-grid-5.html">5</a> <a href="./shop-grid-6.html">6</a>
						<a href=""><i class="fa fa-long-arrow-right"></i></a>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- Product Section End -->

	<!-- Footer Section Begin -->
	<footer class="footer spad">
	<div class="container">
		<div class="row">
			<div class="col-lg-3 col-md-6 col-sm-6">
				<div class="footer__about">
					<div class="footer__about__logo">
						<a href="./index.html"><img src="img/logo2.png" alt=""></a>
					</div>
					<ul>
						<li>Địa chỉ: Trường ĐH Nông Lâm TP.HCM</li>
						<li>Điện thoại: +84 888.888.888</li>
						<li>Email: @st.hcmuaf.edu.vn</li>
					</ul>
				</div>
			</div>
			<div class="col-lg-4 col-md-6 col-sm-6 offset-lg-1">
				<div class="footer__widget">
					<h5>Hướng dẫn và chính sách</h5>
					<ul>
						<li><a href="huongdan/muahang.html">Hướng dẫn mua hàng</a></li>
						<li><a href="huongdan/taotk.html">Hướng dẫn tạo tài khoản</a></li>
						<li><a href="huongdan/thanhtoan.html">Hướng dẫn thanh
								toán</a></li>

					</ul>
				</div>
				<div class="footer__widget">
					<ul>
						<li><a href="chinhsach/baomat.html">Chính sách bảo mật</a></li>
						<li><a href="chinhsach/dichvu.html">Điều khoản dịch vụ</a></li>
						<li><a href="chinhsach/vanchuyen.html">Vận chuyển và giao
								hàng</a></li>
						<li><a href="chinhsach/daily.html">Chính sách Đại lý</a></li>

					</ul>
				</div>
			</div>
			<div class="col-lg-4 col-md-12">
				<div class="footer__widget">
					<div class="map">
						<h5>Bản đồ</h5>
						<iframe
							src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3918.214525476915!2d106.78957301402471!3d10.871281660410226!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3175276398969f7b%3A0x9672b7efd0893fc4!2zVHLGsOG7nW5nIMSQ4bqhaSBo4buNYyBOw7RuZyBMw6JtIFRwLiBI4buTIENow60gTWluaA!5e0!3m2!1svi!2s!4v1668134354172!5m2!1svi!2s"
							width="600" height="300" style="border: 0;" allowfullscreen=""
							loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>

					</div>
				</div>
			</div>
		</div>

	</div>
	</footer>
	<!-- Footer Section End -->

	<!-- Js Plugins -->
	<script src="<c:url value='/template/web/js/jquery-3.3.1.min.js' />"></script>
	<script src="<c:url value='/template/web/js/bootstrap.min.js' />"></script>
	<script
		src="<c:url value='/template/web/js/jquery.nice-select.min.js' />"></script>
	<script src="<c:url value='/template/web/js/jquery-ui.min.js' />"></script>
	<script src="<c:url value='/template/web/js/jquery.slicknav.js' />"></script>
	<script src="<c:url value='/template/web/js/mixitup.min.js' />"></script>
	<script src="<c:url value='/template/web/js/owl.carousel.min.js' />"></script>
	<script src="<c:url value='/template/web/js/main.js' /> "></script>



</body>

</html>