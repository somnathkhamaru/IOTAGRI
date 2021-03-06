<!--
Author: W3layouts
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<c:url value="/" var="postUrl" />
<!DOCTYPE HTML>

<html>
<head>
<title>IOT Agriculture ADMIN</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Easy Admin Panel Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
 <!-- Bootstrap Core CSS -->
<link href="css/bootstrap.min.css" rel='stylesheet' type='text/css' />
<!-- Custom CSS -->
<link href="css/style.css" rel='stylesheet' type='text/css' />
<!-- Graph CSS -->
<link href="css/font-awesome.css" rel="stylesheet"> 
<!-- jQuery -->
<!-- lined-icons -->
<link rel="stylesheet" href="css/gspinner.min.css">

<link rel="stylesheet" href="css/icon-font.min.css" type='text/css' />
<link rel="stylesheet" href="css/bootstrap.min.css" type='text/css' />
<!-- //lined-icons -->
<!-- chart -->

<!-- //chart -->
<!--animate-->
<link href="css/animate.css" rel="stylesheet" type="text/css" media="all">
<script src="js/wow.min.js"></script>
<script src="js/jquery-1.12.4.js"></script>
<script type="text/javascript" src="js/jquery-ui.js"></script>
<link rel="stylesheet" href="css/jquery-ui.css"/>
<script type="text/javascript" src="js/g-spinner.min.js"></script>
<script type="text/javascript" src="js/iot.js"></script>


<script>

  </script>
	<script>
		 new WOW().init();
	</script>
	<script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
	<script type="text/javascript" src="https://www.google.com/jsapi"></script>
	    <script type="text/javascript">
	    google.charts.load('current', {packages: ['corechart', 'line']});
	    
	    </script>	
	    
<!--//end-animate-->
<!----webfonts--->
<link href='//fonts.googleapis.com/css?family=Cabin:400,400italic,500,500italic,600,600italic,700,700italic' rel='stylesheet' type='text/css'>
<!---//webfonts---> 
 <!-- Meters graphs -->

<!-- Placed js at the end of the document so the pages load faster -->
<style>
.col-sm-4 {
    width: 32.333% !important;
}
 text {   color: rgb(255, 255, 255) !important;
    fill: rgb(254, 254, 254)!important;
}
</style>
</head> 
   
 <body class="sticky-header left-side-collapsed"  onload="initMap()">
 <div id="loader">
</div>
    <section>
    <!-- left side start-->
		<div class="left-side sticky-left-side">

			<!--logo and iconic logo start-->
			<div class="logo">
				<h1><a href="index.html">IOT <span>Agriculture Admin</span></a></h1>
			</div>
			<div class="logo-icon text-center">
				<a href="index.html"><i class="lnr lnr-home"></i> </a>
			</div>

			<!--logo and iconic logo end-->
			<div class="left-side-inner">

				<!--sidebar nav start-->
					<ul class="nav nav-pills nav-stacked custom-nav">
						<li class="active"><a href="index.html"><i class="lnr lnr-power-switch"></i><span>Dashboard</span></a></li>
						<!--<li class="menu-list">
							<a href="#"><i class="lnr lnr-cog"></i>
								<span>Components</span></a>
								<ul class="sub-menu-list">
									<li><a href="grids.html">Grids</a> </li>
									<li><a href="widgets.html">Widgets</a></li>
								</ul>
						</li>
						<li><a href="forms.html"><i class="lnr lnr-spell-check"></i> <span>Forms</span></a></li>
						<li><a href="tables.html"><i class="lnr lnr-menu"></i> <span>Tables</span></a></li>              
						<li class="menu-list"><a href="#"><i class="lnr lnr-envelope"></i> <span>MailBox</span></a>
							<ul class="sub-menu-list">
								<li><a href="inbox.html">Inbox</a> </li>
								<li><a href="compose-mail.html">Compose Mail</a></li>
							</ul>
						</li>      
						<li class="menu-list"><a href="#"><i class="lnr lnr-indent-increase"></i> <span>Menu Levels</span></a>  
							<ul class="sub-menu-list">
								<li><a href="charts.html">Basic Charts</a> </li>
							</ul>
						</li>
						<li><a href="codes.html"><i class="lnr lnr-pencil"></i> <span>Typography</span></a></li>
						<li><a href="media.html"><i class="lnr lnr-select"></i> <span>Media Css</span></a></li>
						<li class="menu-list"><a href="#"><i class="lnr lnr-book"></i>  <span>Pages</span></a> 
							<ul class="sub-menu-list">
								<li><a href="sign-in.html">Sign In</a> </li>
								<li><a href="sign-up.html">Sign Up</a></li>
								<li><a href="blank_page.html">Blank Page</a></li>
							</ul>
						</li>-->
					</ul>
				<!--sidebar nav end-->
			</div>
		</div>
		<!-- left side end-->
    
		<!-- main content start-->
		<div class="main-content">
			<!-- header-starts -->
			<div class="header-section">
			 
			<!--toggle button start-->
			<a class="toggle-btn  menu-collapsed"><i class="fa fa-bars"></i></a>
			<!--toggle button end-->

			<!--notification menu start -->
			<div class="menu-right">
				<div class="user-panel-top">  	
					<div class="profile_details_left">
						Internet of Things based Agriculture
						<!--ul class="nofitications-dropdown">
							<li class="dropdown">
								<a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-expanded="false"><i class="fa fa-envelope"></i><span class="badge">3</span></a>
									
										<ul class="dropdown-menu">
											<li>
												<div class="notification_header">
													<h3>You have 3 new messages</h3>
												</div>
											</li>
											<li><a href="#">
											   <div class="user_img"><img src="images/1.png" alt=""></div>
											   <div class="notification_desc">
												<p>Lorem ipsum dolor sit amet</p>
												<p><span>1 hour ago</span></p>
												</div>
											   <div class="clearfix"></div>	
											 </a></li>
											 <li class="odd"><a href="#">
												<div class="user_img"><img src="images/1.png" alt=""></div>
											   <div class="notification_desc">
												<p>Lorem ipsum dolor sit amet </p>
												<p><span>1 hour ago</span></p>
												</div>
											  <div class="clearfix"></div>	
											 </a></li>
											<li><a href="#">
											   <div class="user_img"><img src="images/1.png" alt=""></div>
											   <div class="notification_desc">
												<p>Lorem ipsum dolor sit amet </p>
												<p><span>1 hour ago</span></p>
												</div>
											   <div class="clearfix"></div>	
											</a></li>
											<li>
												<div class="notification_bottom">
													<a href="#">See all messages</a>
												</div> 
											</li>
										</ul>
							</li>
							<li class="login_box" id="loginContainer">
									<div class="search-box">
										<div id="sb-search" class="sb-search">
											<form>
												<input class="sb-search-input" placeholder="Enter your search term..." type="search" id="search">
												<input class="sb-search-submit" type="submit" value="">
												<span class="sb-icon-search"> </span>
											</form>
										</div>
									</div>
										
										<script src="js/classie.js"></script>
										<script src="js/uisearch.js"></script>
											<script>
												new UISearch( document.getElementById( 'sb-search' ) );
											</script>
										
							</li>
							<li class="dropdown">
								<a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-expanded="false"><i class="fa fa-bell"></i><span class="badge blue">3</span></a>
									<ul class="dropdown-menu">
										<li>
											<div class="notification_header">
												<h3>You have 3 new notification</h3>
											</div>
										</li>
										<li><a href="#">
											<div class="user_img"><img src="images/1.png" alt=""></div>
										   <div class="notification_desc">
											<p>Lorem ipsum dolor sit amet</p>
											<p><span>1 hour ago</span></p>
											</div>
										  <div class="clearfix"></div>	
										 </a></li>
										 <li class="odd"><a href="#">
											<div class="user_img"><img src="images/1.png" alt=""></div>
										   <div class="notification_desc">
											<p>Lorem ipsum dolor sit amet </p>
											<p><span>1 hour ago</span></p>
											</div>
										   <div class="clearfix"></div>	
										 </a></li>
										 <li><a href="#">
											<div class="user_img"><img src="images/1.png" alt=""></div>
										   <div class="notification_desc">
											<p>Lorem ipsum dolor sit amet </p>
											<p><span>1 hour ago</span></p>
											</div>
										   <div class="clearfix"></div>	
										 </a></li>
										 <li>
											<div class="notification_bottom">
												<a href="#">See all notification</a>
											</div> 
										</li>
									</ul>
							</li>	
							<li class="dropdown">
								<a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-expanded="false"><i class="fa fa-tasks"></i><span class="badge blue1">22</span></a>
									<ul class="dropdown-menu">
										<li>
											<div class="notification_header">
												<h3>You have 8 pending task</h3>
											</div>
										</li>
										<li><a href="#">
												<div class="task-info">
												<span class="task-desc">Database update</span><span class="percentage">40%</span>
												<div class="clearfix"></div>	
											   </div>
												<div class="progress progress-striped active">
												 <div class="bar yellow" style="width:40%;"></div>
											</div>
										</a></li>
										<li><a href="#">
											<div class="task-info">
												<span class="task-desc">Dashboard done</span><span class="percentage">90%</span>
											   <div class="clearfix"></div>	
											</div>
										   
											<div class="progress progress-striped active">
												 <div class="bar green" style="width:90%;"></div>
											</div>
										</a></li>
										<li><a href="#">
											<div class="task-info">
												<span class="task-desc">Mobile App</span><span class="percentage">33%</span>
												<div class="clearfix"></div>	
											</div>
										   <div class="progress progress-striped active">
												 <div class="bar red" style="width: 33%;"></div>
											</div>
										</a></li>
										<li><a href="#">
											<div class="task-info">
												<span class="task-desc">Issues fixed</span><span class="percentage">80%</span>
											   <div class="clearfix"></div>	
											</div>
											<div class="progress progress-striped active">
												 <div class="bar  blue" style="width: 80%;"></div>
											</div>
										</a></li>
										<li>
											<div class="notification_bottom">
												<a href="#">See all pending task</a>
											</div> 
										</li>
									</ul>
							</li>		   							   		
							<div class="clearfix"></div>	
						</ul> -->
					</div>
					<div class="profile_details">		
						<ul>

							<li class="dropdown profile_details_drop">
								<a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-expanded="false">
								<div>
									<!--  <div class="profile_img">	-->
									
									<span style="background:url(images/user.png) no-repeat center"> </span> 
										 <div class="user-name">
											<p><span><b>${user }</b></span></p>
										 </div>
										 <i class="lnr lnr-chevron-down"></i>
										 <i class="lnr lnr-chevron-up"></i>
										<div class="clearfix"></div>	
									</div>	
								</a>
							 <ul class="dropdown-menu drp-mnu">
									<li> <a href="sign-in.jsp"><i class="fa fa-sign-out"></i> Logout</a> </li>
								</ul> 
							</li>
							<div class="clearfix"> </div>
						</ul>
					</div>		
					<!-- <div class="social_icons">
						<div class="col-md-4 social_icons-left">
							<!--<a href="#" class="yui"><i class="fa fa-facebook i1"></i><span>300<sup>+</sup> Likes</span></a>
						</div>
						<div class="col-md-4 social_icons-left pinterest">
							<!--<a href="#"><i class="fa fa-google-plus i1"></i><span>500<sup>+</sup> Shares</span></a>
						</div>
						<div class="col-md-4 social_icons-left twi">
							<!--a href="#"><i class="fa fa-twitter i1"></i><span>500<sup>+</sup> Tweets</span></a>
						</div>
						<div class="clearfix"> </div>
					</div>-->            	
					<div class="clearfix"></div>
				</div>
			  </div>
			<!--notification menu end -->
			</div>
		<!-- //header-ends -->
			<div id="page-wrapper">
				<div class="graphs">
					<div class="col_4">
						<div class="col-sm-6 widget widget">
							<!--<div class="r3_counter_box">-->
							<iframe width="500" height="270" style="border: 1px solid #cccccc;" src="https://thingspeak.com/channels/227051/charts/1?bgcolor=%23ffffff&color=%23d62020&dynamic=true&results=5&title=Humidity+Variation&type=spline&yaxis=Humudity+%28+%25+%29"></iframe>

							<!--</div>-->
						</div>
						<div class="col-sm-6 widget widget">
							<!--<div class="r3_counter_box">-->
								<iframe width="500" height="270" style="border: 1px solid #cccccc;" src="https://thingspeak.com/channels/227051/charts/2?bgcolor=%23ffffff&color=%23d62020&dynamic=true&results=5&title=Temperature+Variation&type=spline&yaxis=Temperature%28deg+Celsius%29&yaxismax=45&yaxismin=-5"></iframe>

							<!--</div>-->
						 </div>
						 </div>
						 	<div class="clearfix"> </div>
				<div class="col_4">
						 <div class="col-sm-6 widget">
							<!--<div class="r3_counter_box">-->
								<iframe width="500" height="270" style="border: 1px solid #cccccc;" src="https://thingspeak.com/channels/227051/charts/3?bgcolor=%23ffffff&color=%23d62020&dynamic=true&results=5&title=Moisture+Variation&type=spline&yaxis=Moisture+%28+%25+%29+"></iframe>

							<!--</div>-->
						</div>
						<div class="col-sm-6 widget">
							<!--<div class="r3_counter_box">-->
								<iframe width="500" height="270" style="border: 1px solid #cccccc;" src="https://thingspeak.com/channels/227051/charts/4?bgcolor=%23ffffff&color=%23d62020&dynamic=true&results=5&title=Soil+Salinity+Variation&type=spline&yaxis=Salinity+%28+%25+%29"></iframe>

							<!--</div>-->
						</div>
						</div>
						<div class="clearfix"> </div>
					</div>

			<!-- switches -->
		<div class="switches">
			<div class="col-4">
				<div class="col-md-10">
					<div class="r3_counter_box">
						<div class="dropdown" style="margin-right: 89%; padding-top: 1%;">
  							<button class="btn btn-primary dropdown-toggle" type="button" data-toggle="dropdown">Select Sensor
  								<span class="caret"></span></button>
  									<ul class="dropdown-menu">
    									<li><a href="#">Temperature</a></li>
    									<li><a href="#">Humidity</a></li>
   									 	<li><a href="#">Moisture</a></li>
   									 	<li><a href="#">Salinity</a></li>
 									</ul>
						</div>
						<div id="sensor" style="margin-top: -3%; margin-left: 11%; position: absolute; color: blue;"><b>No Sensor Selected</b></div>
						<div style="margin-top: -3%; margin-left: 23%; position: absolute;">
						
							<label class="radio-inline">
      							<input type="radio" name="singledate" id="singledateradio">Single Date
    						</label>
   							<label class="radio-inline">
      							<input type="radio" name="daterange" id="daterangeradio">Date Range
    						</label>
    					
						</div>
						<!-- <div id="singledate" style="margin-top: -3%; margin-right: -1%; display: none;"> 
							<div >
        						<p> Date: <input type="text" id="datepicker1"></p>
        					</div>
        				
      					</div> -->
						<div style="margin-top: -3%; margin-right: -84%"> <!-- Date input -->
							<div style="float: left;padding-left: 23%;" >
        						<p> Start Date: <input type="text" id="datepicker1"></p>
        					</div>
        					<div  id="daterange" style="padding-right: 49%;display: none;" >
        						<p> End Date: <input type="text" id="datepicker2"></p>
        					</div>
      					</div>
      					<!--  <div style="margin-top: -2%; margin-right: -31%;">-->
      					<div style="margin-top: -2%;  padding-left: 92%;">
      					<button class="btn btn-primary" id="submit">Submit</button>
      					</div>
      					<br>
      					<ul class="nav nav-tabs">
    						<li class="active"><a data-toggle="tab" href="#tabular">Tabular view</a></li>
    						<li><a data-toggle="tab" href="#graphical">Graphical view</a></li> 
  						</ul>

  						<div class="tab-content">
    					<div id="tabular" class="tab-pane fade in active">
      						
      						<div id="Tabview">
      							<h3>TABULAR VIEW</h3>
      							<br>
      						</div>
      							
    					</div>
    					<div id="graphical" class="tab-pane fade">
      						<h3>GRAPHICAL VIEW</h3>
      						<div id="Graphview">
      							
      							<div id="chart_div" style="margin-left: 29%;margin-bottom: 6%"></div>
      							<br>
      						</div>
    					</div>
    
  						</div>
					</div>
				</div>
				<div class="col-md-2 ">
					<div class="r3_counter_box">
					<br>
						<img id='pump' src="images/PumpOFF.gif"  height="100" width="100" class='img-thumbnail'>
						<h3><div id="pumpstatus">MOTOR OFF</div></h3>
						<button id='on' type="button" class="btn btn-success active " >ON</button>
						<button id='off' type="button" class="btn btn-danger disabled">OFF</button>
						<br><br>
					</div>
				</div>
				
				<div class="clearfix"></div>
			</div>
		</div>
		<!-- //switches -->
		<!--  ><div class="col_1">
			<div class="col-md-4 span_8">
				<div class="activity_box">
					<h3>Inbox</h3>
					<div class="scrollbar scrollbar1" id="style-2">
						<div class="activity-row">
							<div class="col-xs-3 activity-img"><img src='images/1.png' class="img-responsive" alt=""/></div>
							<div class="col-xs-7 activity-desc">
								<h5><a href="#">John Smith</a></h5>
								<p>Hey ! There I'm available.</p>
							</div>
							<div class="col-xs-2 activity-desc1"><h6>13:40 PM</h6></div>
							<div class="clearfix"> </div>
						</div>
						<div class="activity-row">
							<div class="col-xs-3 activity-img"><img src='images/5.png' class="img-responsive" alt=""/></div>
							<div class="col-xs-7 activity-desc">
								<h5><a href="#">Andrew Jos</a></h5>
								<p>Hey ! There I'm available.</p>
							</div>
							<div class="col-xs-2 activity-desc1"><h6>13:40 PM</h6></div>
							<div class="clearfix"> </div>
						</div>
						<div class="activity-row">
							<div class="col-xs-3 activity-img"><img src='images/3.png' class="img-responsive" alt=""/></div>
							<div class="col-xs-7 activity-desc">
								<h5><a href="#">Adom Smith</a></h5>
								<p>Hey ! There I'm available.</p>
							</div>
							<div class="col-xs-2 activity-desc1"><h6>13:40 PM</h6></div>
							<div class="clearfix"> </div>
						</div>
						<div class="activity-row">
							<div class="col-xs-3 activity-img"><img src='images/4.png' class="img-responsive" alt=""/></div>
							<div class="col-xs-7 activity-desc">
								<h5><a href="#">Peter Carl</a></h5>
								<p>Hey ! There I'm available.</p>
							</div>
							<div class="col-xs-2 activity-desc1"><h6>13:40 PM</h6></div>
							<div class="clearfix"> </div>
						</div>
						<div class="activity-row">
							<div class="col-xs-3 activity-img"><img src='images/1.png' class="img-responsive" alt=""/></div>
							<div class="col-xs-7 activity-desc">
								<h5><a href="#">John Smith</a></h5>
								<p>Hey ! There I'm available.</p>
							</div>
							<div class="col-xs-2 activity-desc1"><h6>13:40 PM</h6></div>
							<div class="clearfix"> </div>
						</div>
					</div>
				</div>
			</div>
			<div class="col-md-4 span_8">
				<div class="activity_box activity_box1">
					<h3>chat</h3>
					<div class="scrollbar" id="style-2">
						<div class="activity-row activity-row1">
							<div class="col-xs-3 activity-img"><img src='images/1.png' class="img-responsive" alt=""/><span>10:00 PM</span></div>
							<div class="col-xs-5 activity-img1">
								<div class="activity-desc-sub">
									<h5>John Smith</h5>
									<p>Hello !</p>
								</div>
							</div>
							<div class="col-xs-4 activity-desc1"></div>
							<div class="clearfix"> </div>
						</div>
						<div class="activity-row activity-row1">
							<div class="col-xs-2 activity-desc1"></div>
							<div class="col-xs-7 activity-img2">
								<div class="activity-desc-sub1">
									<h5>Adom Smith</h5>
									<p>Hi,How are you ? What about our next meeting?</p>
								</div>
							</div>
							<div class="col-xs-3 activity-img"><img src='images/3.png' class="img-responsive" alt=""/><span>10:02 PM</span></div>
							<div class="clearfix"> </div>
						</div>
						<div class="activity-row activity-row1">
							<div class="col-xs-3 activity-img"><img src='images/1.png' class="img-responsive" alt=""/><span>10:00 PM</span></div>
							<div class="col-xs-5 activity-img1">
								<div class="activity-desc-sub">
									<h5>John Smith</h5>
									<p>Yeah fine</p>
								</div>
							</div>
							<div class="col-xs-4 activity-desc1"></div>
							<div class="clearfix"> </div>
						</div>
						<div class="activity-row activity-row1">
							<div class="col-xs-2 activity-desc1"></div>
							<div class="col-xs-7 activity-img2">
								<div class="activity-desc-sub1">
									<h5>Adom Smith</h5>
									<p>Wow that's great</p>
								</div>
							</div>
							<div class="col-xs-3 activity-img"><img src='images/3.png' class="img-responsive" alt=""/><span>10:02 PM</span></div>
							<div class="clearfix"> </div>
						</div>
					</div>
					<form>
						<input type="text" value="Enter your text" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Enter your text';}" required="">
						<input type="submit" value="Send" required=""/>		
					</form>
				</div>
			</div>
			<div class="col-md-4 span_8">
				<div class="activity_box activity_box2">
					<h3>todo</h3>
					<div class="scrollbar" id="style-2">
						<div class="activity-row activity-row1">
							<div class="single-bottom">
								<ul>
									<li>
										<input type="checkbox"  id="brand" value="">
										<label for="brand"><span></span> Sunt in culpa qui officia.</label>
									</li>
									<li>
										<input type="checkbox"  id="brand1" value="">
										<label for="brand1"><span></span> Fugiat quo voluptas nulla.</label>
									</li>
									<li>
										<input type="checkbox"  id="brand2" value="">
										<label for="brand2"><span></span> Dolorem eum.</label>
									</li>
									<li>
										<input type="checkbox"  id="brand9" value="">
										<label for="brand9"><span></span> Pain that produces no resultant.</label>
									</li>
									<li>
										<input type="checkbox"  id="brand8" value="">
										<label for="brand8"><span></span> Cupidatat non proident.</label>
									</li>
									<li>
										<input type="checkbox"  id="brand7" value="">
										<label for="brand7"><span></span> Praising pain was born.</label>
									</li>
									<li>
										<input type="checkbox"  id="brand3" value="">
										<label for="brand3"><span></span> Computer & Electronics</label>
									</li>
									<li>
										<input type="checkbox"  id="brand4" value="">
										<label for="brand4"><span></span> Dolorem ipsum quia.</label>
									</li>
									<li>
										<input type="checkbox"  id="brand5" value="">
										<label for="brand5"><span></span> Consequatur aut perferendis.</label>
									</li>
									<li>
										<input type="checkbox"  id="brand6" value="">
										<label for="brand6"><span></span> Dolorem ipsum quia.</label>
									</li>
									
									
								</ul>
							</div>
						</div>
					</div>
					<form>
						<input type="text" value="Enter your text" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Enter your text';}" required="">
						<input type="submit" value="Submit" required=""/>		
					</form>
				</div>
				<div class="clearfix"> </div>
			</div>
			<div class="clearfix"> </div>
			
		</div>-->
				</div>
			<!--body wrapper start-->
			</div>
			 <!--body wrapper end-->
		</div>
        <!--footer section start-->
			<footer>
			   <p>Internet of Things based Agriculture Project</p>
			</footer>
        <!--footer section end-->

      <!-- main content end-->
   </section>
  
<script src="js/jquery.nicescroll.js"></script>
<script src="js/scripts.js"></script>
<!-- Bootstrap Core JavaScript -->
   <script src="js/bootstrap.min.js"></script>
</body>
</html>