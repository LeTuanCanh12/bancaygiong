<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp"%>

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
					<li ><a
						href="<c:url value='/trang-chu'/>">Trang Chủ</a></li>
					<li><a href="<c:url value='/list-product'/>">Sản Phẩm</a></li>
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
						<li><a href="<c:url value='/views/web/contact.jsp'/>"><i class="fa fa-heart"></i> <span>1</span></a></li>
						<li><a href="<c:url value='/views/web/contact.jsp'/>"><i class="fa fa-shopping-bag"></i>
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