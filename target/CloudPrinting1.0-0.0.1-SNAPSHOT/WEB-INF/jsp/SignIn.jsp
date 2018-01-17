 <%@ page language="java" contentType="text/html; charset=UTF8" pageEncoding="UTF8"%>
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
    <c:set var="path" value="${pageContext.request.contextPath}"/>
      <title>登陆</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
		<link href="//netdna.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css" rel="stylesheet">        
        <link href='https://fonts.googleapis.com/css?family=Montserrat:400,700' rel='stylesheet' type='text/css'>
        <link href='https://fonts.googleapis.com/css?family=Playfair+Display:400,400italic,700,700italic' rel='stylesheet' type='text/css'>
        <link href='https://fonts.googleapis.com/css?family=Raleway:400,700,300' rel='stylesheet' type='text/css'>
        <link href="css/style.css" rel="stylesheet" type="text/css" />

 <!-- components -->
        <link href="vendor/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
        <link href="vendor/owl-carousel/owl-carousel/owl.carousel.css" rel="stylesheet" type="text/css" /> 
        <link href="vendor/slider-pro/dist/css/slider-pro.min.css" rel="stylesheet" type="text/css" /> 
        <link href="vendor/slick-carousel/slick/slick.css" rel="stylesheet" type="text/css" /> 
        <link href="vendor/animate.css/animate.min.css" rel="stylesheet" type="text/css" /> 

        <link href="css/main.css" rel="stylesheet" type="text/css" />
        <link href="css/login.css" rel="stylesheet" type="text/css" />
    </head>

     <body data-scrolling-animations="true">
       
     	<!-- 引用导航栏 -->
     
        <jsp:include page="model/head.jsp"></jsp:include>

		<!-- 本页内容 -->
	
        <!-- 文字介绍部分 -->
        <div class="container"  >
         <div class="col-xs-10 col-xs-offset-1 col-sm-8 col-sm-offset-2 col-md-6 col-md-offset-3 col-lg-6 col-lg-offset-3">
         <section id="content" class="countact-us-section ">
         
          <form id="signInForm" action="login.action"  method="post">
         	 <div  class="col-xs-offset-1 col-xs-10 col-sm-offset-1 col-sm-10 col-md-offset-2 col-md-8 col-lg-6 col-lg-offset-3">
				<h1>登陆</h1>
				<div class="form-group">
	                 <label> 手机号码：</label>
	                 <input type="text" name="uphone" id="uphone" class="form-control" />
	             </div>
				 <div class="form-group">
	                 <label> 密  码：</label>
	                 <input type="password" name="upassword" id="upassword" class="form-control" />
	             </div>
		         <c:if test="${msg == '用户名或密码不正确，请重新输入'}">
		             <div class="form-group">
			             	<p style="color: #f30101">${msg}</p>
		             </div>
		         </c:if>
	             <div class="form-group" style="margin-bottom: 50px">
	             	<a href="FindPwd.action">忘记密码?</a>
	             </div>
				<div  class=" form-group " style="width: 75%">
					<div style="float:left; width: 25%" ><!-- class="col-xs-offset-1 col-xs-4 col-sm-offset-1 col-sm-4 col-md-offset-1 col-md-4 col-lg-4 col-lg-offset-1"  class="col-xs-offset-7 col-xs-4 col-sm-offset-7 col-sm-4 col-md-offset-7 col-md-4 col-lg-4 col-lg-offset-7"-->
						<input type="submit" value="登陆" />
					</div>
					<div style="float: right; width: 25%">
						<butten type="regist" onclick="SignUp()">注册</butten>
					</div>	
				</div>

			</div>
		</form><!-- form -->
		
        </section>  
        </div> 
        </div> 
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
         <!--  表单验证bootstrapValidator -->
        <script src="js/bootstrapValidator.min.js" type="text/javascript"></script>
        <script src="js/bootstrapValidator.js" type="text/javascript"></script>
        <link href="css/bootstrapValidator.css" rel="stylesheet" type="text/css" />
        <!--  custom scripts -->
        <script src="js/contact.js" type="text/javascript"></script>
        <script src="js/custom.js" type="text/javascript"></script>
        <script src="js/map.js" type="text/javascript"></script>
           <script src="js/myjs.js" type="text/javascript"></script>
     </body>
</html>
