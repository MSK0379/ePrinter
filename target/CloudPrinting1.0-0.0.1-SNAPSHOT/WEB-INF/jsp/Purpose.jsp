<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
   <title>项目宗旨</title>
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
	
        <!-- 文字介绍部分 -->
         <section class="countact-us-section">
            <div class="container">
                <div class="row">
                    <div class="col-md-8">
                        <div class="contact-form">
                            <div class="form-heading">
                                <h4>我们能做什么</h4>
                                <em>让打印无需等待</em>
                            </div>
                            <div class="form-description">
                                <p style="font-size: 1.2em">人生若只如初见，何事秋风悲画扇？等闲变却故人心，却道故人心易变。
                                骊山语罢清宵半，泪雨零铃终不怨。何如薄幸锦衣郎，比翼连枝当日愿。
                                <br>
                                <p style="text-align: right;">——纳兰容若《木兰花令》</p>
                                </p>
                            </div>
                             <div class="form-heading">
                                <h4>项目宗旨</h4>
                                <em>让打印无需等待</em>
                            </div>
                            <div class="form-description">
                                <p style="font-size: 1.2em">人生若只如初见，何事秋风悲画扇？等闲变却故人心，却道故人心易变。
                                骊山语罢清宵半，泪雨零铃终不怨。何如薄幸锦衣郎，比翼连枝当日愿。
                                <p style="text-align: right;">——纳兰容若《木兰花令》</p>
                                </p>
                            </div>
                       </div>
                    </div>
                </div>
            </div>
        </section>                   
	<!-- 底部视图 -->
	
    <jsp:include page="model/footer1.jsp"></jsp:include>
    
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
