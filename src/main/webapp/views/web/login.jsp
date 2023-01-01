<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Đăng nhập</title>


	rel="stylesheet" type="text/css" media="all" />
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css" />
    <link href="https://fonts.googleapis.com/css2?family=Cairo:wght@200;300;400;600;900&display=swap" rel="stylesheet">
</head>
<body>
 <header>
       


    <div class="ig_login" id="ig_login">
        <div class="container_content_login">
            <div class="header_login">
                <h2>Đăng Nhập Tài Khoản</h2>
            </div>
            <form class="form" id="form">
               
                <div class="form-control">
                    <label>Email</label>
                    <input type="text" placeholder="Email" id="email">
                    <i class="fa-solid fa-circle-check"></i>
                    <i class="fa-solid fa-circle-info"></i>
                    <small>Error message</small>
                </div>
                <div class="form-control">
                    <label>Mật Khẩu</label>
                    <input type="password" placeholder="Tối thiểu 8 kí tự, ít nhất 1 chữ cái và 1 số" id="password">
                    <i class="fa-solid fa-circle-check"></i>
                    <i class="fa-solid fa-circle-info"></i>
                    <small>Error message</small>
                </div>

                <button>Đăng Nhập</button>
                <div class="for">
                    <a href="forgot.html">Quên Mật Khẩu</a>
                </div>
                <div class="reg">


                    <a href="register.html">Đăng Kí Tài Khoản</a>
                </div>


            </form>
        </div>
    </div>
      <!-- Footer Section Begin -->

    
    <script src="js/al.js"></script>
</body>
</body>
</html>