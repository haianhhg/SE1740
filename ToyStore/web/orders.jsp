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
                        <li class="nav-item">
                           <a class="nav-link" href="home">Home <span class="sr-only">(current)</span></a>
                        </li>
                       
                        <li class="nav-item">
                           <a class="nav-link" href="productcontrol">Products</a>
                        </li>
                        <li class="nav-item">
                           <a class="nav-link" href="blog_list.html">Blog</a>
                        </li>
                        <li class="nav-item">
                           <a class="nav-link" href="contact.html">Contact</a>
                        </li>
                        <li class="nav-item active">
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
        <!-- inner page section -->
        <section class="inner_page_head">
            <div class="container_fuild">
                <div class="row">
                    <div class="col-md-12">
                        <div class="full">
                            <h3>Carts</h3>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- end inner page section -->
         <section class="py-5 px-4 px-lg-5 " style="padding-top:7rem !important">
            <div class="container" style="min-height: 500px">
                <table class="table  table-hover">
                    <c:if test="${sessionScope.carts.size()==0}">
                        <h1>List is Empty</h1>
                    </c:if>
                    <c:if test="${sessionScope.carts.size()!=0}">
                        <thead>
                            <tr>
                                <th scope="col">Product</th>
                                <th scope="col">Image</th>
                                <th scope="col">Name</th>
                                <th scope="col">Price</th>
                                <th scope="col">Quantity</th>
                                <th scope="col">ToTal Price</th>
                                <th scope="col">Action</th>

                            </tr>
                        </thead>
                        <tbody>
                            <c:forEach items="${carts}" var="C">
                            <form action="UpdateCheckout">
                                <tr> 
                                <input type="hidden" name="productid" value="${C.value.product.id}">
                                    <td>${C.value.product.id}</td>
                                    <td><img src="${C.value.product.imageURL}" width="50"></td>
                                    <td>${C.value.product.name}</td>
                                    <td>${C.value.product.price} $</td>
                                    <td><input onchange="this.form.submit()" type="number" value="${C.value.quantity}" name="quantity"></td>
                                    <td>${C.value.product.price*C.value.quantity} $</td>
                                    <td><a class="btn btn-outline-danger" href="DeleteCart?productid=${C.value.product.id}"><i class="bi bi-trash"></i>Delete</a></td>
                                </tr>
                            </form>

                        </c:forEach>

                        </tbody>
                    
                    </c:if>
                </table>
                <h3>TotalMoney: $${Total}</h3>
                <a class="btn btn-success" href="payment" style="border-color: #fe4c50;background-color: #fe4c50">Payment</a>
                
            </div>
        </section>




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