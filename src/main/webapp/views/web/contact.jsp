<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Liên Hệ</title>
<!-- Css -->


<link rel="stylesheet" href="<c:url value='/template/web/css/bootstrap.min.css ' />" type="text/css">
    <link rel="stylesheet" href="<c:url value='/template/web/css/font-awesome.min.css ' />" type="text/css">
    <link rel="stylesheet" href="<c:url value='/template/web/css/elegant-icons.css' />" type="text/css">
    <link rel="stylesheet" href="<c:url value='/template/web/css/nice-select.css' />" type="text/css">
    <link rel="stylesheet" href="<c:url value='/template/web/css/jquery-ui.min.css' />" type="text/css">
    <link rel="stylesheet" href="<c:url value='/template/web/css/owl.carousel.min.css' />" type="text/css">
    <link rel="stylesheet" href="<c:url value='/template/web/css/slicknav.min.css' />" type="text/css">
    <link rel="stylesheet" href="<c:url value='/template/web/css/style.css' />" type="text/css">
	
	<link rel="stylesheet" href=" <c:url value='/template/web/css/contact.css ' />">
    <link rel="stylesheet" href=" <c:url value='/template/web/css/footer.css' />">
</head>
<body>
	<div class="container">
		<div class="row">
			<div class="col-lg-3">
				<div class="header__logo">
					<a href="home.jsp"><img src="./../../template/web/img/logo.png"></a>
				</div>
			</div>
			<div class="col-lg-6">
				<nav class="header__menu">
				<ul>
					<li class="active"><a href="home.jsp">Trang Chủ</a></li>
					<li><a href="listProduct.jsp">Sản Phẩm</a></li>
					<li><a href="#">Phân Loại</a>
						<ul class="header__menu__dropdown">
							<li><a href="productForCate.jsp">Cây ăn quả</a></li>
							<li><a href="productForCate.jsp">Cây công nghiệp</a></li>
							<li><a href="productForCate.jsp">Cây lấy gỗ</a></li>
						</ul></li>
					<li><a href="contact.jsp">Liên hệ</a></li>
				</ul>
				</nav>
			</div>
			<div class="col-lg-3">
				<div class="header__cart">
					<ul>
						<li><a href="favourite.jsp"><i class="fa fa-heart"></i>
								<span>1</span></a></li>
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

	<!-- Content -->
	<div class="container">
		<section class="breadcrumb-section set-bg"
			data-setbg="./../../template/web/img/breadcrumb.jpg"
			style="background-image:  url(./../../template/web/img/breadcrumb.jpg)">
		<div class="container">
			<div class="row">
				<div class="col-lg-12 text-center">
					<div class="breadcrumb__text">
						<h2>Liên Hệ</h2>
						<div class="breadcrumb__option">
							<a href="home.jsp">Trang chủ</a> <span>Liên hệ</span>
						</div>
					</div>
				</div>
			</div>
		</div>
		</section>
		<div class="content">
			<div class="content_left">
				<h1 class="left_title">Liên hệ</h1>
				<p class="des">Bạn hãy điền nội dung tin nhắn vào form dưới đây
					và gửi cho chúng tôi. Chúng tôi sẽ trả lời bạn sau khi nhận được.</p>
				<form id="submit_form">
					<div class="form-group input">
						<input type="text" class="form-control" id="name"
							placeholder="Tên của bạn...">
					</div>
					<div class="form-group input">
						<input type="text" class="form-control" id="phone"
							placeholder="Số điện thoại của bạn...">
					</div>
					<div class="form-group input">
						<input type="text" class="form-control" id="email"
							placeholder="Email của bạn...">
					</div>
					<div class="form-group input">
						<textarea class="form-control" name="note" rows="5" cols="20"
							id="note" placeholder="Nội dung tin nhắn của bạn..."></textarea>
					</div>
					<button type="submit" id="" class="bnt_sumit">Gửi tin</button>
				</form>
			</div>
			<div class="content_right">
				<img class="right_img" src="img/logo.png" alt="">
				<h2 class="right_title">Đơn vị sản xuất cây giống chuyên nghiệp
					và uy tín</h2>
				<ul class="content_title">
					<li>Địa chỉ: Trường ĐH Nông Lâm TP.HCM</li>
					<li>Điện thoại: 0462.971.971(giờ hành chính) – Hotline: +84
						888 888 888 (phục vụ 24/7)</li>
					<li>Email: @st.hcmuaf.edu.vn – Website: <a href="index.html">PePe</a></li>
				</ul>
			</div>
		</div>
	</div>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.min.js"
		integrity="sha384-+sLIOodYLS7CIrQpBjl+C7nPvqq+FbNUBDunl/OZv93DB7Ln/533i8e/mZXLi/P+"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct"
		crossorigin="anonymous"></script>

</body>
</html>