
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <!-- Basic -->
        <meta charset="utf-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <!-- Mobile Metas -->
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <!-- Site Metas -->
        <meta name="keywords" content="" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <link rel="shortcut icon" href="images/favicon.png" type="">
        <title>Famms - Fashion HTML Template</title>
        <!-- bootstrap core css -->
        <link rel="stylesheet" type="text/css" href="css/bootstrap.css" />
        <!-- font awesome style -->
        <link href="css/font-awesome.min.css" rel="stylesheet" />
        <!-- Custom styles for this template -->
        <link href="css/style.css" rel="stylesheet" />
        <!-- responsive style -->
        <link href="css/responsive.css" rel="stylesheet" />
    </head>
    <body>
        <div class="hero_area">
            <!-- header section strats -->
            <header class="header_section">
                <div class="container">
                    <nav class="navbar navbar-expand-lg custom_nav-container ">
                        <a class="navbar-brand" href="home" style="color: #002c3e;text-transform: uppercase;font-weight: 700;">TOYSTORE</a>
                        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                            <span class=""> </span>
                        </button>
                        <div class="collapse navbar-collapse" id="navbarSupportedContent">
                            <ul class="navbar-nav">
                                <li class="nav-item active">
                                    <a class="nav-link" href="home">Home <span class="sr-only">(current)</span></a>
                                </li>

                                <li class="nav-item">
                                    <a class="nav-link" href="productcontrol">Products</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="blog.jsp">Blog</a>
                                </li>
                                <c:if test="${role==2}">
                                    <li class="nav-item">
                                        <a href="manager" class="nav-link">Manager</a>
                                    </li>
                                </c:if>


                                <li class="nav-item">
                                    <a class="nav-link" href="Checkout">
                                        <i class="fa fa-shopping-cart"></i>
                                    </a>
                                </li>

                                <c:if test="${account!=null}">
                                    <li class="nav-item ">
                                        <a href="" class="nav-link" style="color: black; font-weight: bold">Hello ${disname} </a>
                                    </li>
                                    <li class="nav-item">

                                        <a href="logout" class="nav-link" style="color:black; font-weight: bold">Logout</a>

                                    </li>
                                </c:if>
                                <c:if test="${account==null}">    
                                    <li class="nav-item">
                                        <a class="nav-link" href="login">
                                            <i class="fa fa-user"></i>
                                        </a>
                                    </li>
                                </c:if>

                            </ul>
                        </div>
                    </nav>
                </div>
            </header>
            <!-- end header section -->
            <!-- slider section -->
            <section class="slider_section ">
                <div class="slider_bg_box">
                    <img src="images/banner-free-ship-do-choi-go.png" alt="">
                </div>
        </div>

    </div>
</section>
<!-- end slider section -->
</div>


<!-- arrival section -->
<section class="arrival_section">
    <div class="container">
        <div class="box">
            <div class="arrival_bg_box" style="width: 500px">
                <img src="${lastPro.imageURL}" alt="" style="width: 100%;padding:20px">
            </div>
            <div class="row">
                <div class="col-md-6 ml-auto">
                    <div class="heading_container remove_line_bt">
                        <h2>
                            NewArrivals
                        </h2>
                    </div>
                    <div>
                        <p style="margin-top: 20px;font-weight: bold;font-size: 20px">
                        ${lastPro.name}
                    </p>
                    <p style="margin-top: 20px;margin-bottom: 30px;">
                        ${lastPro.description}
                    </p>
                    <a href="productcontrol" style="position: relative">
                        Shop Now
                    </a>
                    </div>
                </div>
               
            </div>
        </div>
    </div>
</section>
<!-- end arrival section -->

<!-- product section -->
<section class="product_section layout_padding">
    <div class="container">
        <div class="heading_container heading_center">
            <h2>
                Our <span>products</span>
            </h2>
        </div>
        <div class="row">
            <c:forEach items="${ListP}" var="P">
                <div class="col-sm-6 col-md-4 col-lg-4">
                    <div class="box">
                        <div class="option_container">
                            <div class="options">
                                <a href="Cart?ProductID=${P.id}" class="option1">
                                    Add To Cart
                                </a>
                                <a href="productcontrol" class="option2">
                                    Shop Now
                                </a>
                            </div>
                        </div>
                        <div class="img-box">
                            <img src="${P.imageURL}" alt="">
                        </div>
                        <div class="detail-box" style="display:block">
                            <h5 style="font-size:13px">
                                ${P.name}
                            </h5>
                            <h6 style="color:red">
                                ${P.price} $
                            </h6>
                        </div>
                    </div>
                </div>
            </c:forEach>
        </div>
        <div class="btn-box">
            <a href="productcontrol">
                View All products
            </a>
        </div>
    </div>
</section>
<!-- end product section -->


<!-- footer start -->
<footer>
    <div class="container">
        <div class="row">
            <div class="col-md-4">
                <div class="full">
                    <div class="logo_footer">
                        <a href="#"><img width="210" src="images/logo.png" alt="#" /></a>
                    </div>
                    <div class="information_f">
                        <p><strong>ADDRESS:</strong> 14-9 KĐT Văn Khê Hà Đông Hà Nội</p>
                        <p><strong>TELEPHONE:</strong> +84 886608682</p>
                        <p><strong>EMAIL:</strong> hoanghaianh252@gmail.com</p>
                    </div>
                </div>
            </div>
            <div class="col-md-8">
                <div class="row">
                    <div class="col-md-7">
                        <div class="row">
                            <div class="col-md-6">
                                <div class="widget_menu">
                                    <h3>Menu</h3>
                                    <ul>
                                        <li><a href="#">Home</a></li>
                                        <li><a href="#">About</a></li>
                                        <li><a href="#">Services</a></li>
                                        <li><a href="#">Testimonial</a></li>
                                        <li><a href="#">Blog</a></li>
                                        <li><a href="#">Contact</a></li>
                                    </ul>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="widget_menu">
                                    <h3>Account</h3>
                                    <ul>
                                        <li><a href="#">Account</a></li>
                                        <li><a href="#">Checkout</a></li>
                                        <li><a href="#">Login</a></li>
                                        <li><a href="#">Register</a></li>
                                        <li><a href="#">Shopping</a></li>
                                        <li><a href="#">Widget</a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>     
                    <div class="col-md-5">
                        <div class="widget_menu">
                            <h3>Newsletter</h3>
                            <div class="information_f">
                                <p>Subscribe by our newsletter and get update protidin.</p>
                            </div>
                            <div class="form_sub">
                                <form>
                                    <fieldset>
                                        <div class="field">
                                            <input type="email" placeholder="Enter Your Mail" name="email" />
                                            <input type="submit" value="Subscribe" />
                                        </div>
                                    </fieldset>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</footer>
<!-- footer end -->
<div class="cpy_">
    <p>© 2021 All Rights Reserved By <a href="https://html.design/">Hai Anh</a></p>
</div>
<!-- jQery -->
<script src="js/jquery-3.4.1.min.js"></script>
<!-- popper js -->
<script src="js/popper.min.js"></script>
<!-- bootstrap js -->
<script src="js/bootstrap.js"></script>
<!-- custom js -->
<script src="js/custom.js"></script>
</body>
</html>
