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

        <!-- Header -->
        <div class="hero_area" style="min-height: 0">
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
                                <li class="nav-item ">
                                    <a class="nav-link" href="home">Home <span class="sr-only">(current)</span></a>
                                </li>

                                <li class="nav-item active">
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
        </div>
        <!-- inner page section -->
        <section class="inner_page_head">
            <div class="container_fuild">
                <div class="row">
                    <div class="col-md-12">
                        <div class="full">
                            <h3>Product Detail</h3>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- end inner page section -->
        <div class="row">

            <div class="col-lg-6">
                <div class="single_product_pics">
                    <div class="row" style="padding-left: 70px ">
                        <div class="">
                            <div class="single_product_image">
                                <div class="single_product_image_background" >
                                    <img src="${product.imageURL}" alt="" ></div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-5" style="padding-top: 70px ">
                <div class="product_details">
                    <div class="product_details_title">
                        <h1 style="font-weight: 700">${product.name}</h1>
                        <h5>${product.description}</h5>
                    </div>

                    <div class="product_price" style="color: red;font-size: 20px">${product.price}$</div>


                    <div class="quantity flex-sm-row align-items-sm-center">
                        <span style="font-size: 20px">Quantity: ${product.quantity} </span>
                        <section class="slider_section " style="padding: 0">
                            <div id="customCarousel1" class="carousel slide" data-ride="carousel">
                                <div class="carousel-inner">
                                    <div class="carousel-item active">
                                        <div class="container ">
                                            <div class="row">
                                                <div class=" ">
                                                    <div class="detail-box">
                                                        <div class="btn-box">
                                                            <a href="Cart?ProductID=${product.id}"style="padding: 5px">
                                                                Add to cart
                                                            </a>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>


                                </div>

                            </div>
                        </section>
                       
                    </div>
                </div>
            </div>

        </div>




        <!-- footer section -->
        <footer class="footer_section">
            <div class="container">
                <div class="row">
                    <div class="col-md-4 footer-col">
                        <div class="footer_contact">
                            <h4>
                                Reach at..
                            </h4>
                            <div class="contact_link_box">
                                <a href="">
                                    <i class="fa fa-map-marker" aria-hidden="true"></i>
                                    <span>
                                        Location
                                    </span>
                                </a>
                                <a href="">
                                    <i class="fa fa-phone" aria-hidden="true"></i>
                                    <span>
                                         Call +84 0886608682
                                    </span>
                                </a>
                                <a href="">
                                    <i class="fa fa-envelope" aria-hidden="true"></i>
                                    <span>
                                        hoanghaianh252@gmail.com
                                    </span>
                                </a>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4 footer-col">
                        <div class="footer_detail">
                            <a href="index.html" class="footer-logo">
                                Famms
                            </a>
                            <p>
                                Necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with
                            </p>
                            <div class="footer_social">
                                <a href="">
                                    <i class="fa fa-facebook" aria-hidden="true"></i>
                                </a>
                                <a href="">
                                    <i class="fa fa-twitter" aria-hidden="true"></i>
                                </a>
                                <a href="">
                                    <i class="fa fa-linkedin" aria-hidden="true"></i>
                                </a>
                                <a href="">
                                    <i class="fa fa-instagram" aria-hidden="true"></i>
                                </a>
                                <a href="">
                                    <i class="fa fa-pinterest" aria-hidden="true"></i>
                                </a>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4 footer-col">
                        <div class="map_container">
                            <div class="map">
                                <div id="googleMap"></div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="footer-info">
                    <div class="col-lg-7 mx-auto px-0">
                        <p>
                            &copy; <span id="displayYear"></span> All Rights Reserved By
                            <a href="https://html.design/">Free Html Templates</a>
                        </p>
                    </div>
                </div>
            </div>
        </footer>
        <!-- footer section -->
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