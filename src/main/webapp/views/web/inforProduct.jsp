
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%@ include file="/common/header.jsp"%>
<section class="product-details spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-6 col-md-6">
                    <div class="product__details__pic">
                        <div class="product__details__pic__item">
                            <img class="product__details__pic__item--large"
                                src="img/product/details/details-product-1.jpg" alt="">
                        </div>
                        
                    </div>
                </div>
                <div class="col-lg-6 col-md-6">
                    <div class="product__details__text">
                        <h3>${infor.name}</h3>
                        <div class="product__details__rating">
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star-half-o"></i>
                            <span> 4,5</span>
                            <span>(18 lượt đánh giá)</span>
                        </div>
                        <div class="product__details__price">${infor.price }đ</div>
                        <p>${infor.pro_text}</p>
                        <div class="product__details__quantity">
                            <div class="quantity">
                                <div class="pro-qty">
                                    <input type="text" value="1">
                                </div>
                            </div>
                        </div>
                        <a href="#" class="primary-btn">Thêm vào giỏ hàng</a>
                        <a href="#" class="heart-icon"><span class="icon_heart_alt"></span></a>
                        <ul>
                            <li><b>Xuất xứ:</b> <span>Việt Nam</span></li>

                            <li><b>Tuổi cây:</b> <span>3 tháng</span></li>
                            <li><b>Số lượng: </b> <a> <span>${infor.quantity }</span></a></li>

                        </ul>
                    </div>
                </div>
                <div class="col-lg-12">
                    <div class="product__details__tab">
                        <ul class="nav nav-tabs" role="tablist">

                            <li class="nav-item">
                                <a class="nav-link" data-toggle="tab" href="#tabs-2" role="tab"
                                    aria-selected="false">Thông tin</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" data-toggle="tab" href="#tabs-3" role="tab"
                                    aria-selected="false">Bình luận <span>(1)</span></a>
                            </li>
                        </ul>
                        <div class="tab-content">
                            <div class="tab-pane active" id="tabs-1" role="tabpanel">

                            </div>
                            <div class="tab-pane" id="tabs-2" role="tabpanel">
                                <div class="product__details__tab__desc">
                                    <h6>Thông tín sản phẩm</h6>
                                    <p>Giống cây táo xanh Thái Lan là một trong những giống táo nhập ngoại đang có trên thị trường cây giống Việt Nam .
                                        Là một trong những giống táo cho hiệu quả kinh tế cao  và ổn định.
                                        Cây táo xanh Thái Lan được trồng chủ yếu ở các tỉnh phía Nam.</p>
                                    <p>Táo xanh Thái Lan đặc biệt khác giống táo Việt Nam ở năng suất trái.
                                        Nếu chăm sóc tốt, quả đạt trọng lượng 4 – 6 quả/kg,
                                        năng suất bình quân mỗi vụ của một gốc táo 3 năm tuổi trở lên đạt hơn 100kg,
                                        thời gian sung sức để khai thác hiệu quả hơn 10 năm.
                                     <br> <br> Táo Thái Lan có đặc tính chịu hạn tốt, phù hợp với những khu vực khô cằn, nắng nhiều.
                                        Giống táo này ít sâu bệnh, dễ chăm sóc, đầu tư ít, đặc biệt sinh trưởng rất nhanh và thời gian khai thác dài.
                                        Dễ trồng, năng suất cao, quả giòn ngọt – không chua, không nhớt như táo đại và được thị trường trong và ngoài nước ưa chuộng
                                    </p>

                                </div>
                            </div>
                            <div class="tab-pane" id="tabs-3" role="tabpanel">
                                <div class="product__details__tab__desc">
                                   <div class="comment_product">
                                       <img src="img/user/review-avt.jfif"> <span> nva0220</span>
                                       <div class="product__details__rating">
                                           <i class="fa fa-star"></i>
                                           <i class="fa fa-star"></i>
                                           <i class="fa fa-star"></i>
                                           <i class="fa fa-star"></i>
                                           <i class="fa fa-star-half-o"></i>
                                           <span> 4,5</span>
                                       </div>
                                       <p> Cây dễ trồng, phát triển tốt, chưa thấy dấu hiệu bị héo úa</p>
                                   </div>
                                </div>
                                <div class="my_comment">
                                <textarea class="text_comment" > </textarea> <button> Bình luận <i class="fa icon_like_alt">
                            </i>
                            </button>
                                </div>


                            </div>
                        </div>
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
                        <h2>Sản phẩm tương tự</h2>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-3 col-md-4 col-sm-6">
                    <div class="product__item">
                        <div class="product__item__pic set-bg" data-setbg="img/product/product-1.jpg">
                            <a href="infor-product.html" ><img src="img/product/sau-rieng-thai.png"> </a>

                            <ul class="product__item__pic__hover">
                                <li><a href="#"><i class="fa fa-heart"></i></a></li>
                                <li><a href="#"><i class="fa fa-shopping-cart"></i></a></li>
                            </ul>

                        </div>
                        <a href="./infor-product.html">
                            <div class="product__item__text">
                                <h6>Sầu Riêng Thái</h6>
                                <p>3,4 <i class="fa fa-star" style="color: #ffA200"></i></p>
                                <h5>80.000đ</h5>
                            </div>
                        </a>
                    </div>
                </div>
                <div class="col-lg-3 col-md-4 col-sm-6">
                    <div class="product__item">
                        <div class="product__item__pic set-bg" data-setbg="img/product/product-1.jpg">
                            <a href="infor-product.html" ><img src="img/product/dobau.png"> </a>

                            <ul class="product__item__pic__hover">
                                <li><a href="#"><i class="fa fa-heart"></i></a></li>
                                <li><a href="#"><i class="fa fa-shopping-cart"></i></a></li>
                            </ul>

                        </div>
                        <a href="./infor-product.html">
                            <div class="product__item__text">
                                <h6>Cây Dó Bầu</h6>
                                <p>3,8 <i class="fa fa-star" style="color: #ffA200"></i></p>
                                <h5>8.000đ</h5>
                            </div>
                        </a>
                    </div>                </div>
                <div class="col-lg-3 col-md-4 col-sm-6">
                    <div class="product__item">
                        <div class="product__item__pic set-bg" data-setbg="img/product/product-1.jpg">
                            <a href="infor-product.html" ><img src="img/product/chuoi-tay.png"> </a>

                            <ul class="product__item__pic__hover">
                                <li><a href="#"><i class="fa fa-heart"></i></a></li>
                                <li><a href="#"><i class="fa fa-shopping-cart"></i></a></li>
                            </ul>

                        </div>
                        <a href="./infor-product.html">
                            <div class="product__item__text">
                                <h6>Cây Chuối Tây</h6>
                                <p>4,1 <i class="fa fa-star" style="color: #ffA200"></i></p>
                                <h5>13.000đ</h5>
                            </div>
                        </a>
                    </div>                </div>
                <div class="col-lg-3 col-md-4 col-sm-6">
                    <div class="product__item">
                        <div class="product__item__pic set-bg" data-setbg="img/product/product-1.jpg">
                            <a href="infor-product.html" ><img src="img/product/oi-gion-it-hat.png"> </a>

                            <ul class="product__item__pic__hover">
                                <li><a href="#"><i class="fa fa-heart"></i></a></li>
                                <li><a href="#"><i class="fa fa-shopping-cart"></i></a></li>
                            </ul>

                        </div>
                        <a href="./infor-product.html">
                            <div class="product__item__text">
                                <h6>Ổi Giòn Ít Hạt</h6>
                                <p>3,6 <i class="fa fa-star" style="color: #ffA200"></i></p>
                                <h5>25.000đ</h5>
                            </div>
                        </a>
                    </div>                </div>
            </div>
        </div>
    </section>


<%@ include file="/common/footer.jsp"%>
</body>
</html>