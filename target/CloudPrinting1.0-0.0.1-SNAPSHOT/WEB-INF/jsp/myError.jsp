<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
 <html lang="en">
<head>
    <base href="<%=basePath%>">
        <title>访问出错</title>
        <meta charset="UTF-8">
        
        <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
        <link href="//netdna.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css" rel="stylesheet">  
        <link href='https://fonts.googleapis.com/css?family=Montserrat:400,700' rel='stylesheet' type='text/css'>
        <link href='https://fonts.googleapis.com/css?family=Playfair+Display:400,400italic,700,700italic' rel='stylesheet' type='text/css'>
        <link href='https://fonts.googleapis.com/css?family=Raleway:400,700,300' rel='stylesheet' type='text/css'>
        <link href="fonts/Stroke-Gap-Icons-Webfont/style.css" rel="stylesheet" type="text/css" />

 <!-- components -->
        <link href="vendor/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
        <link href="vendor/owl-carousel/owl-carousel/owl.carousel.css" rel="stylesheet" type="text/css" /> 
        <link href="vendor/slider-pro/dist/css/slider-pro.min.css" rel="stylesheet" type="text/css" /> 
        <link href="vendor/slick-carousel/slick/slick.css" rel="stylesheet" type="text/css" /> 
        <link href="vendor/animate.css/animate.min.css" rel="stylesheet" type="text/css" /> 

        <link href="css/main.css" rel="stylesheet" type="text/css" />
    </head>

     <body data-scrolling-animations="true">
     
     	<!-- 引用导航栏 -->
     
        <jsp:include page="model/head.jsp"></jsp:include>

		<!-- 本页内容 -->
	
        <section class="error">
            <div style="height: auto ;width: 100% ; text-align:center">
            	<h2>访问出错，请根据上方导航栏进入其它页面。</h2>
               <img alt="访问出错，请根据上方导航栏进入其它页面。" src="img/error.jpg">
            </div>
        </section>  
        <!-- 底部视图 -->
        <jsp:include page="model/footer2.jsp"></jsp:include>

         <!-- Scripts -->

        <!-- components -->
        <script src="js/jquery-1.11.3.min.js"></script>
        <script src="vendor/jquery-ui/jquery-ui.min.js" type="text/javascript"></script>
        <script src="vendor/bootstrap/dist/js/bootstrap.min.js" type="text/javascript"></script>
        <script src="vendor/owl-carousel/owl-carousel/owl.carousel.min.js" type="text/javascript"></script>
        <script src="vendor/waypoints/lib/jquery.waypoints.min.js" type="text/javascript"></script>
        <script src="vendor/slider-pro/dist/js/jquery.sliderPro.min.js" type="text/javascript"></script>
        <script src="vendor/slick-carousel/slick/slick.min.js" type="text/javascript"></script>
        <script src="vendor/jquery.mb.ytplayer/dist/jquery.mb.YTPlayer.min.js" type="text/javascript"></script>
        <script src="vendor/wow/dist/wow.min.js" type="text/javascript"></script>
        <script src="js/modernizr.js" type="text/javascript"></script>

        <!---<script src="http://maps.googleapis.com/maps/api/js?sensor=false" type="text/javascript"></script>
        <!--  custom scripts -->
        <script src="js/contact.js" type="text/javascript"></script>
        <script src="js/custom.js" type="text/javascript"></script>
        <script src="js/map.js" type="text/javascript"></script>
     </body>
</html>
