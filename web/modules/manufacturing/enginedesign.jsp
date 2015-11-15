<%-- 
    Document   : enginedesign
    Created on : Oct 10, 2015, 8:45:20 AM
    Author     : Krish
--%>

<%@page import="java.util.Vector"%>
<%@page import="java.util.List"%>
<%@page import="java.util.Iterator"%>
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
                        
                         <script type="text/javascript">
                            
                            function Create(id){
                              
                                url="ManuDesignEngine";
                                window.location.href="http://localhost:8086/azdengines/"+ url +"?ename="+id;
                            }
                        </script>
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
						<!---->
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
						<h1><a href="index.html">ENGINE MANUFACTURE</a></h1>
				</div>
				<div class="ad-ph">
					<p>Call Us : <span>(+94)</span>776219923</p>
				</div>
					<div class="clearfix"></div>
			</div>
		<!-- banner -->
		<div class="banner-1">
			<div class="container">
				<h2>Engine Design</h2>
			</div>	
		</div>	
                
                
              <div class="services">
				<div class="container">
					<div class="services-bottom">
						<div class="col-md-8 ser-lft">
                                                    <h3>Engine Design</h3></div></div></div></div>
                  
                  
                 <div class="container">
                       <div class="services-top">
				<div class="col-md-6 news-left">
                                    <div class="news-right">
                  <form action="ManuDesignNew">
                      
                      <h3>Design Panel</h3><br/>
                      Engine Name :  <input type="text" name="ename" value="Engine Name" id="en"><br/><br/>
                     
                      Fuel Type :   <select name="item" >
                           <option value="null">Select Fuel</option>
                        <option value="Petrol">Petrol</option>
                        <option value="Diesel">Diesel</option>
                        
                      </select><br/><br/>
                      
                      
                      Kit Type :   <select name="kit" >
                            <option value="null">Select Kit</option>
                        <option value="kit1">Kit1</option>
                        <option value="kit2">Kit2</option>
                        <option value="kit3">Kit3</option>
                      </select><br/><br/>
                      
                 
   
                      
                      Cubic Capacity :
                    <select name="cap">
                         <option value="null">Select capacity</option>
                      <option value="10">10</option>
                        <option value="20">20</option>
                        <option value="30">30</option>
                    </select><br/><br/>
      
    
    Cylinder : <select name="cil" >
         <option value="null">Select Cylinder</option>
                        <option value="1">1</option>
                        <option value="2">2</option>
                         <option value="3">3</option>
                      </select><br/><br/>
                                
                      <input type="submit" value="Submit">
                       </form>      
                                        </div>
                               
                                  
                                </div> </div>
                     
                    
				<div class="container">
                                    <div class="services-bottom"> <div class="col-md-6 news-left">
                                            <div class="news-right">  <h3>Design Image</h3><br/><img src="../../images/engin1.jpg" class="img-responsive" alt=""> </div></div></div> 
                      
    
                                </div></div>
                             
                              <div class="container">
                       <div class="services-top">
                           <div class="col-md-6 news-right">
                               
                               <table><tr><td>Model ID</td><td>Engine Name</td><td>Fuel Type</td><td>Cubic capacity</td><td>Cylinders</td><td>Kit</td></tr> 
                    <%Iterator itr1;%>
                                                    <%List data1=(List)request.getAttribute("EmpData4");
                                                    for(itr1=data1.iterator();itr1.hasNext();){
                                                            %>
                                                           
                                                          <tr>
                                                           
                                                              <td><%= itr1.next()%></td>
                                                                <td>   <%= itr1.next()%></td> 
                                                              <td><%= itr1.next()%></td>
                                                              <td><%= itr1.next()%></td> 
                                                              <td><%= itr1.next()%></td>
                                                               
                                                            <td><%= itr1.next()%></td>
                                                           
                                                           
                                                           </tr>
                                                            
                                                          
                                                            <%}%> </table>
                               
                               
                           </div></div>
                              
                              
                              <div class="container">
                  
                   <div class="col-md-6 ser-rgt">
               
                       
                       <div class="news-right">
                           <h3>Performance Panel</h3><br/>
                             <h4>Speed</h4>
                             <div class="progress">
                                
                            <div class="progress-bar progress-bar-danger" style="width: 25%"><span class="sr-only">10% Complete (danger)</span></div>
                             </div><br/>
                            <h4>Torque</h4> <div class="progress">
                                
                            <div class="progress-bar progress-bar-danger" style="width: 25%"><span class="sr-only">10% Complete (danger)</span></div>
                             </div><br/>
                              <h4>Power</h4> <div class="progress">
                                
                            <div class="progress-bar progress-bar-danger" style="width: 25%"><span class="sr-only">10% Complete (danger)</span></div>
                             </div><br/>
                               <h4>Strong & Light</h4> <div class="progress">
                                
                            <div class="progress-bar progress-bar-danger" style="width: 25%"><span class="sr-only">10% Complete (danger)</span></div>
                             </div><br/>
                                <h4>Fuel Compression</h4> <div class="progress">
                                
                            <div class="progress-bar progress-bar-danger" style="width: <%= 35%>%"><span class="sr-only">10% Complete (danger)</span></div>
                             </div>
                                
                          
                           
                       </div></div></div>
                              
                              </div>
    
                
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