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
   <title>用户注册</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
		<link href="//netdna.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css" rel="stylesheet">        
        <link href='https://fonts.googleapis.com/css?family=Montserrat:400,700' rel='stylesheet' type='text/css'>
        <link href='https://fonts.googleapis.com/css?family=Playfair+Display:400,400italic,700,700italic' rel='stylesheet' type='text/css'>
        <link href='https://fonts.googleapis.com/css?family=Raleway:400,700,300' rel='stylesheet' type='text/css'>
        <link href="fonts/Stroke-Gap-Icons-Webfont/style.css" rel="stylesheet" type="text/css" />

		 <!-- components -->
        <link rel="stylesheet" href="http://cdn.bootcss.com/bootstrap/3.3.0/css/bootstrap.min.css">
        <link href="vendor/owl-carousel/owl-carousel/owl.carousel.css" rel="stylesheet" type="text/css" /> 
 	
        <link href="vendor/slider-pro/dist/css/slider-pro.min.css" rel="stylesheet" type="text/css" /> 
        <link href="vendor/slick-carousel/slick/slick.css" rel="stylesheet" type="text/css" /> 
        <link href="vendor/animate.css/animate.min.css" rel="stylesheet" type="text/css" /> 

        <link href="css/main.css" rel="stylesheet" type="text/css" />
    <!--     <link href="vendor/bootstrap/dist/css/bootstrap.css" rel="stylesheet" type="text/css"/>  -->
     
    </head>

     <body data-scrolling-animations="true">
       
     	<!-- 引用导航栏 -->
     
        <jsp:include page="model/head.jsp"></jsp:include>

		<!-- 本页内容 -->
	
        </section> 
        <section class="countact-us-section">
        
            <div class="container">
                <div class="row">
                    <div class="col-xs-offset-2 col-xs-8 col-sm-offset-2 col-sm-8 col-md-offset-4 col-md-4">
                    <c:if test="${msg != null}">
		             	<p style="color: #f30101">${msg}</p>
		             </c:if>
                        <div class="contact-form">
                        <form id="registerForm" action="regist.action" class="form-horizontal" method="post" >        
                            <div class="form-group">
                                <label> 手机号码：</label>
                                <input type="text" name="uphone" id="uphone" class="form-control"onblur="checkUphone()"/>
                            </div>
                            <div class="form-group">
                                <label> 真实姓名：</label>
                                <input type="text" name="uname" id="uname" class="form-control" />
                            </div>
                            <div class="form-group">
                                <label> 密  码：</label>
                                <input type="password" name="upassword" id="upassword" class="form-control" />
                            </div>
                            <div class="form-group">
                                <label> 密码重复：</label>
                                <input type="password" name="Confirm" id="txtConfirm" class="form-control" />
                            </div>
                             <div class="form-group">
                                 <div style="float:left;width: 30%">
                                     <label class="control-label" id="captchaOperation"></label>
                                 </div>
                                
                                <div style="float:right;width: 70%">
                                    <input type="text" class="form-control" name="captcha" />
                                </div>
                                
                            </div>
                            <div  class=" form-group " style="width: 75%">
								<div style="float:left; width: 25%" ><!-- class="col-xs-offset-1 col-xs-4 col-sm-offset-1 col-sm-4 col-md-offset-1 col-md-4 col-lg-4 col-lg-offset-1"  class="col-xs-offset-7 col-xs-4 col-sm-offset-7 col-sm-4 col-md-offset-7 col-md-4 col-lg-4 col-lg-offset-7"-->
									 <input type="submit" class="submit" name="tijiao"  value="提交" >
								</div>
								<div style="float: right; width: 25%">
									 <input type="reset" class="reset" name="shuaxin" value="重置" >
								</div>	
						</div>
                            
                        </form>
                        </div>
                    </div>
                </div>
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
         <!--  表单验证bootstrapValidator -->
        <script src="js/bootstrapValidator.min.js" type="text/javascript"></script>
        <script src="js/bootstrapValidator.js" type="text/javascript"></script>
        <link href="css/bootstrapValidator.css" rel="stylesheet" type="text/css" />
        <!--  custom scripts -->
        <script src="js/contact.js" type="text/javascript"></script>
        <script src="js/custom.js" type="text/javascript"></script>
        <script src="js/map.js" type="text/javascript"></script>
           <script src="js/myjs.js" type="text/javascript"></script>
           <script src="js/checkUphone.js" type="text/javascript"></script>
     </body>
</html>
