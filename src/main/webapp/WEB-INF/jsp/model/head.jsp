<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!-- 页面的导航栏 -->
<header class="header scrolling-header">
            <nav id="nav" class="navbar navbar-default navbar-fixed-top" role="navigation">
                <div class="container relative-nav-container">
                  <a class="toggle-button visible-xs-block" data-toggle="collapse" data-target="#navbar-collapse">
                        <i class="fa fa-navicon"></i>
                    </a>
                   <a class="navbar-brand scroll" href="index.html">
                        <img class="normal-logo hidden-xs" src="img/logo-free.png" alt="logo" />
                        <img class="scroll-logo hidden-xs" src="img/logo-dark.png" alt="logo" />
                        <img class="scroll-logo visible-xs-block" src="img/logo.png" alt="logo" />
                    </a>
                    <c:choose>
                    	<c:when test="${sessionScope.userName != null}">
                    		<ul class="nav navbar-nav navbar-right nav-icons wrap-user-control">
		                        <li class="open-signup">
		                           <a href = "javascript:void(0);" onclick ="logout('${sessionScope.userName}')">
		                            	<i style="line-height: 1.3" class="fa fa-sign-out fa-lg "title="点我退出" ></i>
		                            </a>
		                        </li>
	                    	</ul>
                    	</c:when>
                    	<c:otherwise>
                    		<ul class="nav navbar-nav navbar-right nav-icons wrap-user-control">
		                        <li class="open-signup">
		                           <a href = "javascript:void(0);" onclick ="SignIn();">
		                            	<i style="line-height: 1.3" class="fa fa-sign-in fa-lg "title="点我登陆" ></i>
		                            </a>
		                        </li>	
	                        </ul>
                    	</c:otherwise>
                    </c:choose>
                      <div class="navbar-collapse collapse floated" id="navbar-collapse">
                        <ul class="nav navbar-nav navbar-with-inside clearfix navbar-right with-border"> 
                            <li><a href="index.action">首页</a></li>
                            <li><a href="Purpose.action">项目宗旨</a></li>
                            <li><a href="Printing.action">打印</a></li>
                            <li><a href="About.action">关于我们</a></li>
                            <li><a href="Personal.action">个人中心</a></li>
                        </ul>
                    </div>
                </div>
            </nav>
        </header>
                <!--countact-us-header根据CSS样式选择图片背景-->
        <section class="top-header countact-us-header with-bottom-effect transparent-effect dark dark-strong">
            <div class="bottom-effect"></div>
            <div class="header-container">	
                <div class="header-title">
                    <div class="header-icon"><span class="icon icon-Wheelbarrow"></span></div>
                    <div class="title">让打印无需等待</div>
                    <em>扔掉U盘，预约打印</em>
                </div>
            </div><!--container-->
        </section> 