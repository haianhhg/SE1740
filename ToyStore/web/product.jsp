
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
        <title>ToyStore</title>
        <!-- bootstrap core css -->
        <link rel="stylesheet" type="text/css" href="css/bootstrap.css" />
        <!-- font awesome style -->
        <link href="css/font-awesome.min.css" rel="stylesheet" />
        <!-- Custom styles for this template -->
        <link href="css/style.css" rel="stylesheet" />
        <!-- responsive style -->
        <link href="css/responsive.css" rel="stylesheet" />
    </head>
    <body class="sub_page">
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
                        <li class="nav-item">
                           <a class="nav-link" href="home">Home <span class="sr-only">(current)</span></a>
                        </li>
                       
                        <li class="nav-item active">
                           <a class="nav-link" href="productcontrol">Products</a>
                        </li>
                        <li class="nav-item">
                           <a class="nav-link" href="blog_list.html">Blog</a>
                        </li>
                        <li class="nav-item">
                           <a class="nav-link" href="contact.html">Contact</a>
                        </li>
                        <li class="nav-item">
                           <a class="nav-link" href="#">
                             <i class="fa fa-shopping-cart"></i>
                           </a>
                        </li>
                        <li class="nav-item">
                           <a class="nav-link" href="logout">
                             <i class="fa fa-user"></i>
                           </a>
                        </li>
                        
                     </ul>
                  </div>
               </nav>
            </div>
         </header>
            <!-- end header section -->
        </div>
      
        <!-- product section -->
        <section class="product_section layout_padding">
            <div class="container">
                <div class="heading_container heading_center">
                    <h2>
                        Our <span>products</span>
                    </h2>
                </div>
                <div style="display:flex">
                    <div class="sidebar" style="margin-left: -100px; padding: 0">
                        <div class="sidebar_section" style="width:250px">
                            <div class="sidebar_title">
                                <h5>Product Category</h5>
                            </div>
                            <ul class="sidebar_categories" style="padding: 0 20px 0 0">
                                <c:forEach items="${ListC}" var="c">
                                    <li class="list-group-item"><a href="filter-category?id=${c.id}" style="color:black">${c.name}</a></li>
                                    </c:forEach>
                            </ul>
                        </div>
                    </div>
                    <div class="row" style="margin-left: 30ps">

                        <c:forEach items="${ListP}" var="P">
                            <div class="col-sm-6 col-md-3 col-lg-4">
                                <div class="box" style="padding:0">
                                    <div class="option_container">
                                        <div class="options">
                                            <a href="item?Product=${P.id}" class="option1">
                                                See More
                                            </a>
                                            <a href="" class="option2">
                                                Buy Now
                                            </a>
                                        </div>
                                    </div>
                                    <div class="img-box">
                                        <img src="${P.imageURL}" alt="" style="width:220px">
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

                </div>
                <div class="btn-box">
                    <a href="">
                        View All products
                    </a>
                </div>
            </div>
        </section>
        <!-- end product section -->
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
                                        Call +01 1234567890
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

