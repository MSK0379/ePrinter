<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="Dashboard">
    <meta name="keyword" content="Dashboard, Bootstrap, Admin, Template, Theme, Responsive, Fluid, Retina">

    <title>个人中心|已打印订单</title>

    <!-- Bootstrap core CSS -->
    <link href="css/bootstrap.css" rel="stylesheet">
    <link href="//netdna.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css" rel="stylesheet">  
    <!-- Custom styles for this template -->
    <link href="css/houtai/style.css" rel="stylesheet">
    <link href="css/houtai/style-responsive.css" rel="stylesheet">
  </head>

  <body>

  <section id="container" >
   
      <header class="header black-bg">
              <div class="sidebar-toggle-box">
                  <div class="fa fa-bars tooltips" data-placement="right" data-original-title="Toggle Navigation"></div>
              </div>
            <a href="index.action" class="logo"><b>Cloud printing</b></a>
            <!--logo end-->
             <div class="nav notify-row" id="top_menu">
                <!--  notification start -->
<!--                 <ul class="nav top-menu">
                    settings start
                    <li class="dropdown">
                    <a data-toggle="dropdown" class="dropdown-toggle" href="Printing.action">继续打印
                        </a>
                    </li>
                </ul> -->
             </div>
            <div class="top-menu">
            	<ul class="nav pull-right top-menu">
                     <li><a class="logout" href="Printing.action">继续打印</a></li>
            	</ul>
            </div>
        </header>

      <aside>
          <div id="sidebar"  class="nav-collapse ">
              <!-- sidebar menu start-->
              <ul class="sidebar-menu" id="nav-accordion">
              
              	  <p class="centered"><a href="index.action"><img src="img/logo.png" class="img-circle" width="60"></a></p>
              	  <h5 class="centered">Cloud printing</h5>

                  <li class="sub-menu">
                      <a class="active"  href="javascript:;" >
                          <i class="fa fa-desktop"></i>
                          <span>订单管理</span>
                      </a>
                      <ul class="sub" >
	                      <li> 
		                      <a  href="findUnFinsh.action">
		                    	  <i class="fa fa-close"></i>
		                    	  <span>待打印</span>
		                      </a>
		                   </li>
                          <li>
	                          <a class="actives" href="findFinsh.action">
		                          <i  class="fa fa-check"></i>
				                   <span>已打印</span>
	                          </a>
                          </li>
                      </ul>
                  </li>
                   <li class="sub-menu">
                      <a  href="changePwd.action">
                          <i class="fa fa-dashboard"></i>
                          <span>修改密码</span>
                      </a>
                  </li>
                   <li class="sub-menu">
	                   <a href="logout.action">
	                       <i class="fa fa-sign-out"></i>
	                       <span>退出登陆</span>
	                   </a>
                  </li>
              </ul>
          </div>
      </aside>

      <!--main content start-->
      <div id="main-content" style="min-height: 90%">
          <section class="wrapper">
          <h1>已完成的订单</h1>
	          <!-- 主页面FINISH -->
	        <table class="table table-striped" >
				   <thead>
				      <tr>
				         <th  align = "center">文件名称</th>
				         <th  align = "center">上传时间</th>
				      </tr>
				   </thead>
			   <tbody>
		          <c:forEach items="${list}" var="file" varStatus="vs">  
			        <tr>   
		             <td >${file.fname}</td>  
		             <td >${file.fuploadtime}</td> 
			         </tr>  
				</c:forEach>  
					
				<tbody> 
			</table>   
          </section>
      </div>
                   
      <footer class="footer ">
          <div class="text-center">
                      <section class="copyright-section">
                <p>Copyright &copy; 2017.Company name All rights reserved.</p>
            </section>
          </div>
      </footer>
      <!--footer end-->
  </section>
    <script src="js/houtai/jquery.js"></script>
    <script src="js/houtai/bootstrap.min.js"></script>
    <script class="include" type="text/javascript" src="js/houtai/jquery.dcjqaccordion.2.7.js"></script>
    <script src="js/houtai/jquery.scrollTo.min.js"></script>
    <script src="js/houtai/jquery.nicescroll.js" type="text/javascript"></script>
    <script src="js/houtai/common-scripts.js"></script>
  </body>
</html>

