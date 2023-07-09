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
                           <a class="nav-link" href="manager">List Product</a>
                        </li>
                        <li class="nav-item">
                           <a class="nav-link" href="addProduct">Add Product</a>
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
                            <h3>Manager Product</h3>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- end inner page section -->
        <section class="py-5 px-4 px-lg-5 " >
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
                                <th scope="col">Cretea_Date</th>
                                <th scope="col">CategoryID</th>
                                <th scope="col">Action</th>

                            </tr>
                        </thead>
                        <tbody>
                            <c:forEach items="${ListP}" var="P">
                            <form action="UpdateCheckout" method="POST">
                                <tr> 
                                <input type="hidden" name="productid" value="${P.id}">
                                    <td>${P.id}</td>
                                    <td><img src="${P.imageURL}" width="50"></td>
                                    <td>${P.name}</td>
                                    <td>${P.price} $</td>
                                    <td>${P.quantity}</td>
                                    <td>${P.createdDate}</td>
                                    <td>${P.categoryid}</td>
                                    <td style="display: flex"><a class="btn btn-outline-danger" href="UpdateProduct?id=${P.id}" style="padding: 6px;margin-right: 5px"><i class="bi bi-trash"></i>Edit</a>
                                    <a class="btn btn-outline-danger" onclick ="Delete(${P.id})" style="padding: 6px"><i class="bi bi-trash"></i>Delete</a></td>
                                </tr>
                           </form>

                        </c:forEach>

                        </tbody>
                    
                    </c:if>
                </table>
                
                <div style="margin-top: 15px" >

                    <c:choose>
                        <c:when test="${ListP==null || ListP.size()==0}">Not Found</c:when>
                        <c:otherwise>

                            <nav aria-label="Page navigation example">
                                <ul class="pagination justify-content-end">
                                    <li class="page-item ${page==1||page==null?"disabled":""}"><a class="page-link" href="manager?page=${page-1}" style="color: black">Previous</a></li>
                                        <c:forEach begin="1" end="${totalPage}" var="i">
                                        <li class="page-item ${i == page?"active":""}"><a class="page-link" href="manager?page=${i}" style="color: black">${i}</a></li>
                                        </c:forEach>
                                    <li class="page-item ${page==totalPage?"disabled":""}"><a class="page-link "  href="manager?page=${page+1}" style="color: black">Next</a></li>

                                </ul>
                            </nav>

                        </c:otherwise>
                    </c:choose>

                </div>
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
         <script>
       function Delete(id){
           var option = confirm('Are you sure to delete?');
           if(option === true) {
               window.location.href = 'DeleteProduct?id=' + id;
           }
       }
   </script>
        <script src="js/jquery-3.4.1.min.js"></script>
        <!-- popper js -->
        <script src="js/popper.min.js"></script>
        <!-- bootstrap js -->
        <script src="js/bootstrap.js"></script>
        <!-- custom js -->
        <script src="js/custom.js"></script>
    </body>
</html>

