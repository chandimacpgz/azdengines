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
                          <style>
                        table, th, td {
                         border: 2px solid black;
                         border-collapse: collapse;
                        }
                        th, td {
                        padding: 15px;
                        }
                        </style>
                         <style>input {
                                color: #FFFFFF; font-weight: bold; font-size: 14px; background-color: #FF0000;
                            }</style>
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
						<a href="ManuDisplayEngine" class="pink">
						<span class="glyphicon glyphicon-cog " aria-hidden="true"></span>
						Manufacturing
						</a>
						</li>
						 <li class="col-md-2">
						<a href="modules/manufacturing/man_services.jsp" class="sky">
						<span class="glyphicon glyphicon-envelope" aria-hidden="true"></span>
						Design
						</a>
						</li>
						<!---->
						<li class="col-md-2">
						<a href="ManuDisplayPart" class="gray">
						<span class="glyphicon glyphicon-thumbs-up " aria-hidden="true"></span>
						Availability
						</a>
						</li>
						<!---->
						<li class="col-md-2">	
						<a href="modules/manufacturing/man_blog.jsp" class="green">
						<span class="glyphicon glyphicon-picture " aria-hidden="true"></span>
						Price
						</a>
						</li>
						<li class="col-md-2">
						<a href="modules/manufacturing/man_contact.jsp" class="sky">
						<span class="glyphicon glyphicon-envelope" aria-hidden="true"></span>
						Report
						</a>
						</li>
						<div class="clearfix">
						<!--script-->
						<script type="text/javascript">
						jQuery(document).ready(function($) {
						$(".scroll").click(function(event){		
						event.preventDefault();
						$('html,body').animate({scrollTop:$(this.hash).offset().top},900);
						});
						});
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
						<h1><a href="man_index.jsp">Availability</a></h1>
				</div>
				<div class="ad-ph">
					<p>Call Us : <span>(880)</span>123 2500</p>
				</div>
					<div class="clearfix"></div>
			</div>
		<!-- banner -->
		<div class="banner-1">
			<div class="container">
				<h2>News</h2>
			</div>	
		</div>	
		<!-- /banner -->
		<!-- news -->
		<div class="news">
		<h3>Latest News</h3>
			<div class="container">
				<div class="col-md-6 news-left">
					<div class="news-right">
						<h4>05 June, 2015</h4>
						<h6><a href="#">Module 1</a></h6>
						<p>The performance of an engine is measured by power output, economy, durability, and emissions. Today's engines are computer controlled and regulate the air / fuel delivery, ignition timing, and emissions.</p>
                                   <img src="../../images/engin1.jpg" class="img-responsive" alt="">   <br/>                    
                <table><tr><td>Part ID</td><td>Part Name</td><td>Part Description</td><td>Cost</td><td>Quantity</td><td>Order</td></tr>
                    <%Iterator itr1;%>
                                                    <%List data1=(List)request.getAttribute("EmpData1");
                                                    for(itr1=data1.iterator();itr1.hasNext();){
                                                            %>
                                                           
                                                          
                                                            <tr>
                                                                
                                                         
                                                            <td><%= itr1.next()%></td>
                                                             <td><%= itr1.next()%></td>
                                                              <td><%= itr1.next()%></td>
                                                               <td><%= itr1.next()%></td>
                                                                <td><%= itr1.next()%></td>
                                                                <td><input type="submit" value="Order"></td>
                                                           
                                                            
                                                          
                                                            <%}%></tr></table>
					</div>
				</div>
				<div class="col-md-6 news-left">
					<div class="news-right">
						<h4>05 June, 2015</h4>
						<h6><a href="#">Module 2</a></h6>
						<p>The performance of an engine is measured by power output, economy, durability, and emissions. Today's engines are computer controlled and regulate the air / fuel delivery, ignition timing, and emissions.</p>
                                                 <img src="../../images/engin2.jpg" class="img-responsive" alt=""><br/>     
                <table><tr><td>Part ID</td><td>Part Name</td><td>Part Description</td><td>Cost</td><td>Quantity</td><td>Order</td></tr>
                    <%Iterator itr2;%>
                                                    <%List data2=(List)request.getAttribute("EmpData2");
                                                    for(itr2=data2.iterator();itr2.hasNext();){
                                                            %>
                                                           
                                                          
                                                            <tr>
                                                                
                                                         
                                                            <td><%= itr2.next()%></td>
                                                             <td><%= itr2.next()%></td>
                                                              <td><%= itr2.next()%></td>
                                                               <td><%= itr2.next()%></td>
                                                                <td><%= itr2.next()%></td>
                                                           <td><input type="submit" value="Order"></td>
                                                           
                                                            
                                                          
                                                            <%}%></tr>
                                                  </table></div>
				</div>
				<div class="col-md-6 news-left">
					<div class="news-right">
						<h4>05 June, 2015</h4>
						<h6><a href="#"> Module 3</a></h6>
						<p>The performance of an engine is measured by power output, economy, durability, and emissions. Today's engines are computer controlled and regulate the air / fuel delivery, ignition timing, and emissions.</p>
                                                <img src="../../images/engin3.jpg" class="img-responsive" alt=""> <br/>     
                <table><tr><td>Part ID</td><td>Part Name</td><td>Part Description</td><td>Cost</td><td>Quantity</td><td>Order</td></tr>
                    <%Iterator itr3;%>
                                                    <%List data3=(List)request.getAttribute("EmpData3");
                                                    for(itr3=data3.iterator();itr3.hasNext();){
                                                            %>
                                                           
                                                          
                                                            <tr>
                                                                
                                                         
                                                            <td><%= itr3.next()%></td>
                                                             <td><%= itr3.next()%></td>
                                                              <td><%= itr3.next()%></td>
                                                               <td><%= itr3.next()%></td>
                                                                <td><%= itr3.next()%></td>
                                                           <td><input type="submit" value="Order"></td>
                                                           
                                                            
                                                          
                                                            <%}%></tr>
                                                  </table></div>
				</div>
				<div class="col-md-6 news-left">
					<div class="news-right">
						<h4>05 June, 2015</h4>
						<h6><a href="#">Module 4</a></h6>
						<p>The performance of an engine is measured by power output, economy, durability, and emissions. Today's engines are computer controlled and regulate the air / fuel delivery, ignition timing, and emissions.</p>
                                                 <img src="../../images/engin4.jpg" class="img-responsive" alt=""> <br/>    
                <table><tr><td>Part ID</td><td>Part Name</td><td>Part Description</td><td>Cost</td><td>Quantity</td><td>Order</td></tr>
                    <%Iterator itr4;%>
                                                    <%List data4=(List)request.getAttribute("EmpData4");
                                                    for(itr4=data4.iterator();itr4.hasNext();){
                                                            %>
                                                           
                                                          
                                                            <tr>
                                                                
                                                         
                                                            <td><%= itr4.next()%></td>
                                                             <td><%= itr4.next()%></td>
                                                              <td><%= itr4.next()%></td>
                                                               <td><%= itr4.next()%></td>
                                                                <td><%= itr4.next()%></td>
                                                           <td><input type="submit" value="Order"></td>
                                                           
                                                            
                                                          
                                                            <%}%></tr>
                </table></div></div>
                                                  <div class="col-md-6 news-left">
					<div class="news-right">
						<h4>05 June, 2015</h4>
						<h6><a href="#">Module 5</a></h6>
						<p>The performance of an engine is measured by power output, economy, durability, and emissions. Today's engines are computer controlled and regulate the air / fuel delivery, ignition timing, and emissions.</p>
                                                 <img src="../../images/engin5.jpg" class="img-responsive" alt="">  <br/>   
                <table><tr><td>Part ID</td><td>Part Name</td><td>Part Description</td><td>Cost</td><td>Quantity</td><td>Order</td></tr>
                         <%Iterator itr5;%>
                                                    <%List data5=(List)request.getAttribute("EmpData5");
                                                    for(itr5=data5.iterator();itr5.hasNext();){
                                                            %>
                                                           
                                                          
                                                            <tr>
                                                                
                                                         
                                                            <td><%= itr5.next()%></td>
                                                             <td><%= itr5.next()%></td>
                                                              <td><%= itr5.next()%></td>
                                                               <td><%= itr5.next()%></td>
                                                                <td><%= itr5.next()%></td>
                                                           <td><input type="submit" value="Order"></td>
                                                           
                                                            
                                                          
                                                            <%}%></tr>
                                                  </table>
					</div>
				</div>
                                        	<div class="col-md-6 news-left">
					<div class="news-right">
						<h4>05 June, 2015</h4>
						<h6><a href="#">Module 6</a></h6>
						<p>The performance of an engine is measured by power output, economy, durability, and emissions. Today's engines are computer controlled and regulate the air / fuel delivery, ignition timing, and emissions.</p>
                                                 <img src="../../images/engin6.jpg" class="img-responsive" alt=""> <br/>    
                <table><tr><td>Part ID</td><td>Part Name</td><td>Part Description</td><td>Cost</td><td>Quantity</td><td>Order</td></tr>
                         <%Iterator itr6;%>
                                                    <%List data6=(List)request.getAttribute("EmpData6");
                                                    for(itr6=data6.iterator();itr6.hasNext();){
                                                            %>
                                                           
                                                          
                                                            <tr>
                                                                
                                                         
                                                            <td><%= itr6.next()%></td>
                                                             <td><%= itr6.next()%></td>
                                                              <td><%= itr6.next()%></td>
                                                               <td><%= itr6.next()%></td>
                                                                <td><%= itr6.next()%></td>
                                                           <td><input type="submit" value="Order"></td>
                                                           
                                                            
                                                          
                                                            <%}%></tr>
                                                   </table>
					</div>
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