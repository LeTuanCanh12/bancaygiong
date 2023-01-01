<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Trang chủ</title>

<meta charset="UTF-8">
<meta name="description" content="Ogani Template">
<meta name="keywords" content="Ogani, unica, creative, html">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
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
<header>

<div class="header__top">
		<div class="container">
			<div class="row">
				<div class="col-lg-6 col-md-6">
					<div class="hero__search__phone">
						<div class="hero__search__phone__icon">
							<i class="fa fa-phone" style="margin-top: 15px"></i>
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
							<a href="<c:url value='/views/web/signup.jsp'/>"><i class="fa fa-user-plus"></i> Đăng
								ký</a>
						</div>
						<div class="header__top__right__auth">
							<a href="<c:url value='/views/web/login.jsp'/>"><i class="fa fa-user"></i> Đăng nhập</a>
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
					<a href="home.jsp"><img
						src="<c:url value='/template/web/img/logo.png' />"></a>
				</div>
			</div>
			<div class="col-lg-6">
				<nav class="header__menu">
				<ul>
					<li class="active"><a
						href="<c:url value='/views/web/home.jsp'/>">Trang Chủ</a></li>
					<li><a href="<c:url value='/views/web/listProduct.jsp'/>">Sản Phẩm</a></li>
					<li><a href="#">Phân Loại</a>
						<ul class="header__menu__dropdown">
							<li><a href="<c:url value='/views/web/cayAnQua.jsp'/>">Cây ăn quả</a></li>
							<li><a href="<c:url value='/views/web/cayCongNghiep.jsp'/>">Cây công
									nghiệp</a></li>
							<li><a href="<c:url value='/views/web/cayLayGo.jsp'/>">Cây lấy gỗ</a></li>
						</ul></li>
					<li><a href="<c:url value='/views/web/contact.jsp'/>">Liên hệ</a></li>
				</ul>
				</nav>
			</div>
			<div class="col-lg-3">
				<div class="header__cart">
					<ul>
						<li><a href="favourite.jsp"><i class="fa fa-heart"></i> <span>1</span></a></li>
						<li><a href="cart.jsp"><i class="fa fa-shopping-bag"></i>
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
	<!-- Header Section End -->

	<!-- Hero Section Begin -->
	<section class="hero">
	<div class="container">
		<div class="row">
			<div class="col-lg-3">
				<div class="hero__categories">
					<div class="hero__categories__all">
						<i class="fa fa-bars"></i> <span>Phân loại</span>
					</div>
					<ul>
						<li><a href="./views/web/productForCate.jsp">Cây ăn quả</a></li>

						<li><a href="./views/web/productForCate.jsp">Cây công
								nghiệp</a></li>
						<li><a href="./views/web/productForCate.jsp">Cây lấy gỗ</a></li>

					</ul>
				</div>
			</div>
			<div class="col-lg-9">
				<div class="hero__search">
					<div class="hero__search__form">
						<form action="#">
							<!--                                <div class="hero__search__categories">-->
							<!--                                    All Categories-->
							<!--                                    <span class="arrow_carrot-down"></span>-->
							<!--                                </div>-->
							<input type="text" placeholder="Bạn muốn tìm gì?...">

							<button type="submit" class="site-btn">
								<i class="fa fa-search"></i> Tìm kiếm
							</button>
						</form>
					</div>
					<!--                        <div class="hero__search__phone">-->
					<!--                            <div class="hero__search__phone__icon">-->
					<!--                                <i class="fa fa-phone"></i>-->
					<!--                            </div>-->
					<!--                            <div class="hero__search__phone__text">-->
					<!--                                <h5>+65 11.188.888</h5>-->
					<!--                                <span>support 24/7 time</span>-->
					<!--                            </div>-->
					<!--                        </div>-->
					<div id="sales">
						<a href="#"> <img
							src=" <c:url value='/template/web/img/sales.png'/>"></a>
                        </div>
                    </div>
                    <div class="hero__item set-bg" data-setbg="<c:url value=' template/web/img/hero/banner2.png'/> ">
                        <div class="hero__text">
                            <span>CÁC LOẠI CÂY TRỒNG</span>
                            <h2>Cây giống <br />ươm,cấy,ghép</h2>
                            <p>Miễn phí giao hàng, không lo về giá</p>
                            <a href="./views/web/listProduct.jsp" class="primary-btn">MUA NGAY</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Hero Section End -->

    <!-- Categories Section Begin -->
    <section class="categories">

    </section>
    <!-- Categories Section End -->

    <!-- Featured Section Begin -->

    <!-- Featured Section End -->

    <!-- Banner Begin -->
    <div class="banner">
        <div class="container">
            <div class="row">
                <div class="col-lg-6 col-md-6 col-sm-6">
                    <a href="./infor-product.html" style="color: white"> <div class="banner__pic">
                        <img src ="img/banner/cachua.jpg" alt="">
                         <div class="button_vd" >
                             Mua ngay
                        </div>
                    </div>
                    </a>
                </div>
                <div class="col-lg-6 col-md-6 col-sm-6">
                    <a href="./infor-product.html" style="color: white"> <div class="banner__pic">
                    <img src=" <c:url value='/template/web/img/banner/cay_tao.jpg'/>">
                         <div class="button_vd"> Mua ngay</div>
                    </div> </a>
                </div>
            </div>
        </div>
    </div>
    <!-- Banner End -->

    <!-- Latest Product Section Begin -->
    <section class="latest-product spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-4 col-md-6">
                    <div class="latest-product__text">
                        <h4>Phổ biến nhất</h4>
                        <div class="latest-product__slider owl-carousel">
                            <div class="latest-prdouct__slider__item">
                                <a href="./infor-product.html" class="latest-product__item">
                                    <div class="latest-product__item__pic">
                                        <img style="width: 100px" src="img/latest-product/sau-rieng-thai.webp" alt="">
                                    </div>
                                    <div class="latest-product__item__text">
                                        <h6>Sầu riêng thái</h6>
                                        <span>80.000đ</span>
                                        <p>4,9 <i class="fa fa-star" style="color: #ffA200"></i></p>
                                    </div>
                                </a>
                                <a href="./infor-product.html" class="latest-product__item">
                                    <div class="latest-product__item__pic">
                                        <img src="img/latest-product/vu-sua-nu-hoang.png" alt="">
                                    </div>
                                    <div class="latest-product__item__text">
                                        <h6>Vú sữa Nữ Hoàng</h6>
                                        <span>60.000đ</span>
                                        <p>4,3 <i class="fa fa-star" style="color: #ffA200"></i></p>

                                    </div>
                                </a>
                                <a href="./infor-product.html" class="latest-product__item">
                                    <div class="latest-product__item__pic">
                                        <img src="img/latest-product/Mit-khong-hat.jpg" alt="">
                                    </div>
                                    <div class="latest-product__item__text">
                                        <h6>Mít không hạt </h6>
                                        <span>65.000đ</span>
                                        <p>4,1<i class="fa fa-star" style="color: #ffA200"></i></p>

                                    </div>
                                </a>
                            </div>
                            <div class="latest-prdouct__slider__item">
                                <a href="./infor-product.html" class="latest-product__item">
                                    <div class="latest-product__item__pic">
                                        <img src="img/latest-product/oi-gion-it-hat.png" alt="">
                                    </div>
                                    <div class="latest-product__item__text">
                                        <h6>Ổi giòn ít hạt</h6>
                                        <span>35.000đ</span>
                                        <p>3,9 <i class="fa fa-star" style="color: #ffA200"></i></p>

                                    </div>
                                </a>
                                <a href="./infor-product.html" class="latest-product__item">
                                    <div class="latest-product__item__pic">
                                        <img src="img/latest-product/hong-gion.png" alt="">
                                    </div>
                                    <div class="latest-product__item__text">
                                        <h6>Hồng giòn ghép</h6>
                                        <span>50.000đ</span>
                                        <p>4,7 <i class="fa fa-star" style="color: #ffA200"></i></p>

                                    </div>
                                </a>
                                <a href="./infor-product.html" class="latest-product__item">
                                    <div class="latest-product__item__pic">
                                        <img src="img/latest-product/xa-cu.png" alt="">
                                    </div>
                                    <div class="latest-product__item__text">
                                        <h6>Cây xà cừ</h6>
                                        <span>25.000đ</span>
                                        <p>4,0 <i class="fa fa-star" style="color: #ffA200"></i></p>

                                    </div>
                                </a>
                            </div>
                            <div class="latest-prdouct__slider__item">
                                <a href="./infor-product.html" class="latest-product__item">
                                    <div class="latest-product__item__pic">
                                        <img src="img/latest-product/cam-c36.png" alt="">
                                    </div>
                                    <div class="latest-product__item__text">
                                        <h6>Cây Cam C36</h6>
                                        <span>18.000đ</span>
                                        <p>4,4 <i class="fa fa-star" style="color: #ffA200"></i></p>

                                    </div>
                                </a>
                                <a href="./infor-product.html" class="latest-product__item">
                                    <div class="latest-product__item__pic">
                                        <img src="img/latest-product/na-nu-hoang.png" alt="">
                                    </div>
                                    <div class="latest-product__item__text">
                                        <h6>Cây Na Nữ Hoàng</h6>
                                        <span>80.000đ</span>
                                        <p>3,7 <i class="fa fa-star" style="color: #ffA200"></i></p>

                                    </div>
                                </a>
                                <a href="./infor-product.html" class="latest-product__item">
                                    <div class="latest-product__item__pic">
                                        <img src="img/latest-product/bo-sap.png" alt="">
                                    </div>
                                    <div class="latest-product__item__text">
                                        <h6>Bơ sáp</h6>
                                        <span>40.000đ</span>
                                        <p>4,1 <i class="fa fa-star" style="color: #ffA200"></i></p>

                                    </div>
                                </a>
                            </div>
                            <div class="latest-prdouct__slider__item">
                                <a href="./infor-product.html" class="latest-product__item">
                                    <div class="latest-product__item__pic">
                                        <img src="img/latest-product/buoi-da-xanh.png" alt="">
                                    </div>
                                    <div class="latest-product__item__text">
                                        <h6>Bưởi Da Xanh</h6>
                                        <span>33.000đ</span>
                                        <p>3,8 <i class="fa fa-star" style="color: #ffA200"></i></p>

                                    </div>
                                </a>
                                <a href="./infor-product.html" class="latest-product__item">
                                    <div class="latest-product__item__pic">
                                        <img src="img/latest-product/chuoi-tay.png" alt="">
                                    </div>
                                    <div class="latest-product__item__text">
                                        <h6>Chuối Tây </h6>
                                        <span>12.000đ</span>
                                        <p>3,9 <i class="fa fa-star" style="color: #ffA200"></i></p>

                                    </div>
                                </a>
                                <a href="./infor-product.html" class="latest-product__item">
                                    <div class="latest-product__item__pic">
                                        <img src="img/latest-product/sa-ke.png" alt="">
                                    </div>
                                    <div class="latest-product__item__text">
                                        <h6>Cây Sa Kê</h6>
                                        <span>55.000đ</span>
                                        <p>4,0 <i class="fa fa-star" style="color: #ffA200"></i></p>
                                    </div>
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6">
                    <div class="latest-product__text">
                        <h4>Đánh giá cao</h4>
                        <div class="latest-product__slider owl-carousel">
                            <div class="latest-prdouct__slider__item">
                                <a href="./infor-product.html" class="latest-product__item">
                                    <div class="latest-product__item__pic">
                                        <img style="width: 100px" src="img/latest-product/sau-rieng-thai.webp" alt="">
                                    </div>
                                    <div class="latest-product__item__text">
                                        <h6>Sầu riêng thái</h6>
                                        <span>80.000đ</span>
                                        <p>4,9 <i class="fa fa-star" style="color: #ffA200"></i></p>
                                    </div>
                                </a>
                                <a href="./infor-product.html" class="latest-product__item">
                                    <div class="latest-product__item__pic">
                                        <img src="img/latest-product/hong-gion.png" alt="">
                                    </div>
                                    <div class="latest-product__item__text">
                                        <h6>Hồng giòn ghép</h6>
                                        <span>50.000đ</span>
                                        <p>4,7 <i class="fa fa-star" style="color: #ffA200"></i></p>

                                    </div>
                                </a>
                                <a href="./infor-product.html" class="latest-product__item">
                                    <div class="latest-product__item__pic">
                                        <img src="img/latest-product/cam-c36.png" alt="">
                                    </div>
                                    <div class="latest-product__item__text">
                                        <h6>Cây Cam C36</h6>
                                        <span>18.000đ</span>
                                        <p>4,4 <i class="fa fa-star" style="color: #ffA200"></i></p>

                                    </div>
                                </a>
                            </div>
                            <div class="latest-prdouct__slider__item">
                                <a href="./infor-product.html" class="latest-product__item">
                                    <div class="latest-product__item__pic">
                                        <img src="img/latest-product/vu-sua-nu-hoang.png" alt="">
                                    </div>
                                    <div class="latest-product__item__text">
                                        <h6>Vú sữa Nữ Hoàng</h6>
                                        <span>60.000đ</span>
                                        <p>4,3 <i class="fa fa-star" style="color: #ffA200"></i></p>

                                    </div>
                                </a>
                                <a href="./infor-product.html" class="latest-product__item">
                                    <div class="latest-product__item__pic">
                                        <img src="img/latest-product/Mit-khong-hat.jpg" alt="">
                                    </div>
                                    <div class="latest-product__item__text">
                                        <h6>Mít không hạt </h6>
                                        <span>65.000đ</span>
                                        <p>4,1<i class="fa fa-star" style="color: #ffA200"></i></p>

                                    </div>
                                </a>
                                <a href="./infor-product.html" class="latest-product__item">
                                    <div class="latest-product__item__pic">
                                        <img src="img/latest-product/bo-sap.png" alt="">
                                    </div>
                                    <div class="latest-product__item__text">
                                        <h6>Bơ sáp</h6>
                                        <span>40.000đ</span>
                                        <p>4,1 <i class="fa fa-star" style="color: #ffA200"></i></p>

                                    </div>
                                </a>
                            </div>
                            <div class="latest-prdouct__slider__item">
                                <a href="./infor-product.html" class="latest-product__item">
                                    <div class="latest-product__item__pic">
                                        <img src="img/latest-product/xa-cu.png" alt="">
                                    </div>
                                    <div class="latest-product__item__text">
                                        <h6>Cây xà cừ</h6>
                                        <span>25.000đ</span>
                                        <p>4,0 <i class="fa fa-star" style="color: #ffA200"></i></p>

                                    </div>
                                </a>
                                <a href="./infor-product.html" class="latest-product__item">
                                    <div class="latest-product__item__pic">
                                        <img src="img/latest-product/oi-gion-it-hat.png" alt="">
                                    </div>
                                    <div class="latest-product__item__text">
                                        <h6>Ổi giòn ít hạt</h6>
                                        <span>35.000đ</span>
                                        <p>3,9 <i class="fa fa-star" style="color: #ffA200"></i></p>

                                    </div>
                                </a>

                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6">
                    <div class="latest-product__text">
                        <h4>Đang giảm giá</h4>
                        <div class="latest-product__slider owl-carousel">
                            <div class="latest-prdouct__slider__item">
                                <a href="./infor-product.html" class="latest-product__item">
                                    <div class="latest-product__item__pic">
                                        <img style="width: 100px" src="img/latest-product/dobau.png" alt="">
                                    </div>
                                    <div class="latest-product__item__text">
                                        <h6>Cây Dó Bầu</h6>
                                        <span style="color: red">8.000đ
                                            <p style="display: inline-block;text-decoration-line: line-through"> 12.000đ</p>
                                        </span>
                                        <p>3,4 <i class="fa fa-star" style="color: #ffA200"></i></p>
                                    </div>
                                </a>
                                <a href="./infor-product.html" class="latest-product__item">
                                    <div class="latest-product__item__pic">
                                        <img style="width: 100px" src="img/latest-product/doihat.png" alt="">
                                    </div>
                                    <div class="latest-product__item__text">
                                        <h6>Cây Dổi Hạt</h6>
                                        <span style="color: red">13.000đ
                                            <p style="display: inline-block;text-decoration-line: line-through"> 16.000đ</p>
                                        </span>
                                        <p>3,8 <i class="fa fa-star" style="color: #ffA200"></i></p>
                                    </div>
                                </a>
                                <a href="./infor-product.html" class="latest-product__item">
                                    <div class="latest-product__item__pic">
                                        <img style="width: 100px" src="img/latest-product/banglangtim.png" alt="">
                                    </div>
                                    <div class="latest-product__item__text">
                                        <h6>Cây Bằng Lăng Tím</h6>
                                        <span style="color: red">60.000đ
                                            <p style="display: inline-block;text-decoration-line: line-through"> 82.000đ</p>
                                        </span>
                                        <p>3,1 <i class="fa fa-star" style="color: #ffA200"></i></p>
                                    </div>
                                </a>
                            </div>
                            <div class="latest-prdouct__slider__item">
                                <a href="./infor-product.html" class="latest-product__item">
                                    <div class="latest-product__item__pic">
                                        <img style="width: 100px" src="img/latest-product/coc-thai.png" alt="">
                                    </div>
                                    <div class="latest-product__item__text">
                                        <h6>Cây Cóc Thái</h6>
                                        <span style="color: red">45.000đ
                                            <p style="display: inline-block;text-decoration-line: line-through"> 55.000đ</p>
                                        </span>
                                        <p>3,4 <i class="fa fa-star" style="color: #ffA200"></i></p>
                                    </div>
                                </a>
                                <a href="./infor-product.html" class="latest-product__item">
                                    <div class="latest-product__item__pic">
                                        <img style="width: 100px" src="img/latest-product/che-day.png" alt="">
                                    </div>
                                    <div class="latest-product__item__text">
                                        <h6>Cây Chè Dây</h6>
                                        <span style="color: red">34.000đ
                                            <p style="display: inline-block;text-decoration-line: line-through"> 40.000đ</p>
                                        </span>
                                        <p>3,2 <i class="fa fa-star" style="color: #ffA200"></i></p>
                                    </div>
                                </a>
                                <a href="./infor-product.html" class="latest-product__item">
                                    <div class="latest-product__item__pic">
                                        <img style="width: 100px" src="img/latest-product/bang-dai-loan.png" alt="">
                                    </div>
                                    <div class="latest-product__item__text">
                                        <h6>Cây Bàng Đài Loan</h6>
                                        <span style="color: red">23.000đ
                                            <p style="display: inline-block;text-decoration-line: line-through"> 35.000đ</p>
                                        </span>
                                        <p>3,7 <i class="fa fa-star" style="color: #ffA200"></i></p>
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

    <!-- Blog Section Begin -->
    <section class="from-blog spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="section-title from-blog__title">
                        <h2>Tin tức</h2>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-4 col-md-4 col-sm-6">
                    <div class="blog__item">
                        <div class="blog__item__pic">
                            <img src="img/blog/kythuattrongcay.jfif" style="height: 240px" alt="">
                        </div>
                        <div class="blog__item__text">
                            <ul>
                                <li><i class="fa fa-calendar-o"></i> 20 tháng 10 năm 2022</li>
                                <li><i class="fa fa-comment-o"></i> 5</li>
                            </ul>
                            <h5><a target="_blank" href="https://vuacaygiong.com/huong-dan-ky-thuat-trong-cay-an-qua-don-gian-hieu-qua-nhat/">Hướng dẫn kỹ thuật trồng cây ăn quả đơn giản hiệu quả nhất</a></h5>
                            <p>Bài viết hôm nay Tiến Đạt Farm sẽ cùng bà con tìm hiểu các bước cơ bản trong kỹ thuật trồng cây ăn quả, có thể áp dụng chung cho các giống cây trồng khác... </p>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-md-4 col-sm-6">
                    <div class="blog__item">
                        <div class="blog__item__pic">
                            <img src="img/blog/phattrien.jfif" alt="">
                        </div>
                        <div class="blog__item__text">
                            <ul>
                                <li><i class="fa fa-calendar-o"></i> 5 tháng 9 năm 2022</li>
                                <li><i class="fa fa-comment-o"></i> 2</li>
                            </ul>
                            <h5><a target="_blank" href="https://baohungyen.vn/kinh-te/202101/phat-trien-nhanh-nhung-giong-cay-trong-moi-phuc-vu-chuyen-doi-bai-1nhieu-giong-cay-trong-moi-duoc-dua-vao-co-cau-c4f1fcb/">
                                Phát triển nhanh những giống cây trồng mới phục vụ chuyển đổi</a></h5>
                            <p>Theo báo Hưng Yên: Giống cây trồng có vai trò quan trọng, quyết định năng suất, chất lượng, hiệu quả sản xuất nông nghiệp. Do đó, những năm qua, tỉnh đã có nhiều cơ chế hỗ trợ đối với công tác chọn, tạo giống cây trồng... </p>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-md-4 col-sm-6">
                    <div class="blog__item">
                        <div class="blog__item__pic">
                            <img src="img/blog/sauri.jpg" alt="">
                        </div>
                        <div class="blog__item__text">
                            <ul>
                                <li><i class="fa fa-calendar-o"></i> 5 tháng 7 2020</li>
                                <li><i class="fa fa-comment-o"></i> 8</li>
                            </ul>
                            <h5><a  target="_blank" href="https://vnexpress.net/sau-rieng-ruot-do-ve-viet-nam-doi-gia-17-lan-3772797.html">
                                Sầu riêng ruột đỏ về Việt Nam đội giá 17 lần</a></h5>
                            <p>Nếu tại Malaysia sầu riêng ruột đỏ có giá 57.000 - 60.000 đồng một kg thì về Việt Nam được nhiều nơi bán tới một triệu đồng. </p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
      <script src="<c:url value='/template/web/js/jquery-3.3.1.min.js' />"></script>
    <script src="<c:url value='/template/web/js/bootstrap.min.js' />"></script>
    <script src="<c:url value='/template/web/js/jquery.nice-select.min.js' />"></script>
    <script src="<c:url value='/template/web/js/jquery-ui.min.js' />"></script>
    <script src="<c:url value='/template/web/js/jquery.slicknav.js' />"></script>
    <script src="<c:url value='/template/web/js/mixitup.min.js' />"></script>
    <script src="<c:url value='/template/web/js/owl.carousel.min.js' />"></script>
</body>
</html>