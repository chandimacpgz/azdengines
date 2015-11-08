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

                            function validateform() {
                                var name = document.DiscountForm.DisAdTitle.value;
                                var lname = document.DiscountForm.DisEmpName.value;
                                var email = document.DiscountForm.DisValue.value;



                                if (name == null || name == "") {
                                    alert("Discount title can't be blank");
                                    return false;
                                }

                                else if (lname == null || lname == "") {
                                    alert("Emphasize Name can't be blank");
                                    return false;
                                }

                                else if (email == null || email == "") {
                                    alert("Discount can't be blank");
                                    return false;
                                }


                            }

                            function get_order(form) {
                                if (confirm("Are you sure to order!") === true) {
                                    form.action = "../../SalesDiscountAds";
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
            <h2>Deal of the Day</h2>
            
        </div>	
        
    </div>	
    <!-- /banner -->
    <!-- news -->
    <div class="news">
        <h3>Advertising Section</h3>
        <div class="container">
            <div class="col-md-6 news-left">
                <div class="news-right">
                    <p><h3><b>STEP 1</b></h3></p>
                    <h6><a href="#"> Deal of the - Add Description</a></h6>
                    <p>Include the latest arrivals of products to the stores. Can include three products.</p>
                    <form action="../../SalesDealAdInfo" method="post">

                        <table>
                            <tr>
                                <th>Title of the ad</th>
                                <td>&nbsp;&nbsp;</td>
                                <td><input type="text" name="AdTitle" ></td>

                            </tr>
                            <tr>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <th>Expiration (Hours)</th>
                                <td>&nbsp;&nbsp;</td>
                                <td><input type="text" name="expDays" ></td>
                            </tr>
                            <tr>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <th>Discount Percentage</th>
                                <td>&nbsp;&nbsp;</td>
                                <td><input type="text" name="AdDiscount"</td>
                            </tr>

                            <tr>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <th><input type="submit" value="Submit"></th>

                            </tr>
                        </table>



                    </form>
                </div>
            </div>
            
            <div class="clearfix"></div>
            <div class="news-bottom">
                <h3>What's New ?</h3>
                <div class="col-md-4 new-bt-lt">
                    <h6><a href="#">cotetuer adipiscing elit</a></h6>
                    <p>Aenean auctor wisi et urna. Aliquam erat volutpat. Duis ac turpis. Integer rutrum ante eu lacus. Lorem ipsum dolor sit amet, cotetuer adipiscing elit. Praesent vestibulum molestie lacus ipsum dolor sit amet, consectetuer adipiscing elit. Praesent vestibulum.</p>
                </div>
                <div class="col-md-4 new-bt-lt">
                    <h6><a href="#">Duis ac turpis</a></h6>
                    <p>Aenean auctor wisi et urna. Aliquam erat volutpat. Duis ac turpis. Integer rutrum ante eu lacus. Lorem ipsum dolor sit amet, cotetuer adipiscing elit. Praesent vestibulum molestie lacus ipsum dolor sit amet, consectetuer adipiscing elit. Praesent vestibulum.</p>
                </div>
                <div class="col-md-4 new-bt-lt">
                    <h6><a href="#"> Aliquam erat volutpat</a></h6>
                    <p>Aenean auctor wisi et urna. Aliquam erat volutpat. Duis ac turpis. Integer rutrum ante eu lacus. Lorem ipsum dolor sit amet, cotetuer adipiscing elit. Praesent vestibulum molestie lacus ipsum dolor sit amet, consectetuer adipiscing elit. Praesent vestibulum.</p>
                </div>
                <div class="clearfix"></div>
            </div>
        </div>
    </div>
    <!-- news -->
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