<%@page import="java.util.List"%>
<%@page import="java.util.Iterator"%>
<!--A Design by W3layouts
Author: W3layout
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<!doctype html>
<html>
    <head>
        <title>AZD Company Pvt Ltd. </title>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <meta name="keywords" content="Car Repair Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template, Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
        <script type="application/x-javascript"> addEventListener("load", function() {setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
        <!meta charset utf="8">
    <link rel="stylesheet" href="../../css/module_flexslider.css" type="text/css" media="screen" />
    <!--bootstrap-->
    <link href="../../css/module_bootstrap.min.css" rel="stylesheet" type="text/css">
    <!--coustom css-->
    <link href="../../css/module_style.css" rel="stylesheet" type="text/css"/>
    <!--default-js-->
    <script src="../../js/module_jquery-2.1.4.min.js"></script>
    <!--bootstrap-js-->
    <script src="../../js/module_bootstrap.min.js"></script>
</head>
<body>

    <div class="header_nav" id="home">
        <nav class="navbar navbar-default chn-gd">

            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header">
                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>

            </div>
            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav navbar-right">
                    <li class="col-md-2">
                        <a href="../../index.jsp" class="blue">
                            <span class="glyphicon glyphicon-home " aria-hidden="true"></span>
                            Home
                        </a>
                    </li>
                    <!---->
                    <li class="col-md-2">
                        <a href="sal_index.jsp" class="pink">
                            <span class="glyphicon glyphicon-cog " aria-hidden="true"></span>
                            Sales and Services
                        </a>
                    </li>
                    <!---->
                    <li class="col-md-2">
                        <a href="sal_about.jsp" class="orang">
                            <span class="glyphicon glyphicon-user " aria-hidden="true"></span>
                            About
                        </a>
                    </li>
                    <!---->
                    <li class="col-md-2">
                        <a href="sal_news.jsp" class="gray">
                            <span class="glyphicon glyphicon-thumbs-up " aria-hidden="true"></span>
                            News
                        </a>
                    </li>
                    <!---->
                    <li class="col-md-2">	
                        <a href="sal_blog.jsp" class="green">
                            <span class="glyphicon glyphicon-picture " aria-hidden="true"></span>
                            Blog
                        </a>
                    </li>
                    <li class="col-md-2">
                        <a href="sal_contact.jsp" class="sky">
                            <span class="glyphicon glyphicon-envelope" aria-hidden="true"></span>
                            Contact
                        </a>
                    </li>
                    <div class="clearfix">
                        <!--script-->
                        <script type="text/javascript">
                            jQuery(document).ready(function ($) {
                                $(".scroll").click(function (event) {
                                    event.preventDefault();
                                    $('html,body').animate({scrollTop: $(this.hash).offset().top}, 900);
                                });
                            });

                            function get_order(form) {
                                if (confirm("Are you sure to order!") === true) {
                                    form.action = "SalesConfirmPurchase";
                                    //document.location.href = "cus_order";
                                } else {

                                }

                            }
                        </script>
                        <!--script-->
                </ul>
            </div><!-- /.navbar-collapse -->
            <div class="clearfix"></div>
            <!-- /.container-fluid -->
        </nav>
    </div>
    <div class="container">
        <div class="logo">
            <h1><a href="sal_index.jsp">Sales and Services</a></h1>
        </div>
        <div class="ad-ph">
            <p>Call Us : <span>(880)</span>123 2500</p>
        </div>
        <div class="clearfix"></div>
    </div>
    <!-- banner -->
    <div class="banner-1">
        <div class="container">
            <h2>About</h2>
        </div>	
    </div>	
    <!-- /banner -->
    <!-- about -->
    <div class="about">
        <div class="container">
            <div class="about-top">
                <div class="contact-form">
                    <form>
                        <p class="comment-form-author"><label for="author"><b><h3>Receipt Number</h3></b></label>
                        <div>
                            <br>
                            <h4><font color="red"><strong><%= request.getAttribute("UID")%></strong></font></h4>

                        </div>
                        <p class="comment-form-author"><label for="author"><b><h3>Engine Details</h3></b>
                                <div>
                                    <br>
                                    <table>
                                        
                                        <tr padding-bottom: .3em;>
                                            <td><strong>*ENGINE NAME</strong></td>
                                            <td>&nbsp;&nbsp;&nbsp;&nbsp;</td>
                                            <td>- <%= request.getAttribute("UEngineName")%></td>

                                        </tr>
                                        <tr padding-bottom: .3em;>
                                            <td><strong>*UNIT PRICE</strong></td>
                                            <td>&nbsp;&nbsp;&nbsp;&nbsp;</td>
                                            <td>- <%= request.getAttribute("USellPrice")%></td>
                                        </tr>
                                        <tr padding-bottom: .3em;>
                                            <td><strong>*QUANTITY</strong></td>
                                            <td>&nbsp;&nbsp;&nbsp;&nbsp;</td>
                                            <td>- <%= request.getAttribute("UQty")%></td>                                                        
                                        </tr >
                                        <tr padding-bottom: .3em;>
                                            <td><strong>*TOTAL PRICE</strong></td>
                                            <td>&nbsp;&nbsp;&nbsp;&nbsp;</td>
                                            <td>- <%= request.getAttribute("UTotal")%></td>                                                        
                                        </tr >

                                    </table>
                                </div>
                                <p class="comment-form-author"><label for="author"><b><h3>Contact Details</h3></b><br>
                                        <table>
                                            <tr padding-bottom: .3em;>
                                                <td><strong>*FIRST NAME</strong></td>
                                                <td>&nbsp;&nbsp;&nbsp;&nbsp;</td>
                                                <td>- <%= request.getAttribute("UFName")%></td>                                                        
                                            </tr >
                                            <tr padding-bottom: .3em;>
                                                <td><strong>*LAST NAME</strong></td>
                                                <td>&nbsp;&nbsp;&nbsp;&nbsp;</td>
                                                <td>- <%= request.getAttribute("ULName")%></td>

                                            </tr>
                                            <tr padding-bottom: .3em;>
                                                <td><strong>*EMAIL</strong></td>
                                                <td>&nbsp;&nbsp;&nbsp;&nbsp;</td>
                                                <td>- <%= request.getAttribute("UEmail")%></td>
                                            </tr>
                                            <tr padding-bottom: .3em;>
                                                <td><strong>*CONTACT NUMBER</strong></td>
                                                <td>&nbsp;&nbsp;&nbsp;&nbsp;</td>
                                                <td>- <%= request.getAttribute("UContact")%></td>
                                            </tr>

                                            <tr>

                                            </tr>

                                        </table>
                                        <br><br>
                                        <input type="submit" value="Complete Purchase" onclick="get_order(form)">
                                        </form>
                                        </div>

                                        </div>
                                        <p> when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing </p>
                                        <h5>Aliquam congue fermentum nisl</h5>
                                        <p> when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing </p>
                                        </div>
                                        <div class="col-md-6 about-left">
                                            <h3>Specialized In The Automotive Industry</h3>
                                            <h5>Accumsan Mauris accumsan nulla vel diam. </h5>
                                            <P>Pellentesque sed dolor. Aliquam congue fermentum nisl. Mauris accumsan nulla vel diam. Sed in lacus ut enim adipiscing aliquet. Nulla venenatis. In pede mi, aliquet sit amet, euismod in, auctor ut, ligula. Lorem ipsum dolor sit amet, consectetuer adipiscing elit.</p>
                                            <ul>
                                                <li><a href="#"><span></span>Entire soul, the release simply like these</a></li>
                                                <li><a href="#"><span></span>I enjoy with my whole the release  simply </a></li>
                                                <li><a href="#"><span></span>Lorem Ipsum is the release  simply that it </a></li>
                                                <li><a href="#"><span></span>Sweet mornings of the release  simply spring</a></li>
                                                <li><a href="#"><span></span>Entire soul, the release simply like these</a></li>
                                                <li><a href="#"><span></span>I enjoy with my whole the release  simply </a></li>
                                                <li><a href="#"><span></span>Lorem Ipsum is the release  simply that it </a></li>
                                                <li><a href="#"><span></span>Sweet mornings of the release  simply spring</a></li>
                                                <li><a href="#"><span></span>Entire soul, the release simply like these</a></li>
                                            </ul>
                                        </div>
                                        <div class="clearfix"></div>
                                        </div>
                                        <div class="about-bottom">
                                            <h3>Why Is Maintenance Important</h3>
                                            <div class="col-md-4 abt-lt">
                                                <img src="../../images/module_img8.jpg" class="img-responsive" alt="">
                                            </div>
                                            <div class="col-md-8 abt-rg">
                                                <h5>Accumsan Mauris accumsan nulla vel diam. </h5>
                                                <P>Pellentesque sed dolor. Aliquam congue fermentum nisl. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the popularised in the 1960s with the release of Letraset release of Letraset sheets containing the 1960s with the release of Letraset sheets containing Mauris accumsan nulla vel diam. Sed in lacus ut enim adipiscing aliquet. Nulla venenatis. In pede mi, aliquet sit amet, euismod in, auctor ut, ligula. Lorem ipsum dolor sit amet, consectetuer adipiscing elit.</p>
                                            </div>
                                        </div>
                                        </div>
                                        </div>
                                        <!-- about -->
                                        <!-- footer -->
                                        <div class="footer">
                                            <div class="container">
                                                <div class="col-md-3 footer-left">
                                                    <h3>Telephone</h3>
                                                    <p>(880)123 2500</p>
                                                </div>
                                                <div class="col-md-3 footer-left">
                                                    <h3>E-Mail Us</h3>
                                                    <p>Email : <a href="mailto:azd.engines@gmail.com">azd.engines@gmail.com</a></p>
                                                </div>
                                                <div class="col-md-3 footer-left">
                                                    <h3>Follow Us</h3>
                                                    <ul>
                                                        <li><a href="https://www.facebook.com/AZD-Racing-Engines-1527390010886102/timeline/"><i class="facebok"> </i></a></li>
                                                        <li><a href="https://twitter.com/AZDEngines"><i class="twitter"><i class="twiter"> </i></a></li>
                                                        <li><a href="https://plus.google.com/u/0/106640718142324511965/about"><i class="goog"> </i></a></li>
                                                        <div class="clearfix"></div>	
                                                    </ul>
                                                </div>
                                                <div class="col-md-3 footer-left">
                                                    <h3>Address</h3>
                                                    <p>8058, St Perth Place,
                                                        Colombo 7, Sri Lanka.</p>
                                                </div>
                                                <div class="clearfix"></div>
                                                <div class="foot-bottom">
                                                    <p>Copyright &copy; 2015 <span>AZD Company</span> All rights reserved | Design by PVZ</p>
                                                </div>
                                            </div>
                                        </div>
                                        <!-- footer -->
                                        </body>
                                        </html>