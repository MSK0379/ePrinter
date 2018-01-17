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

<title>打印</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width,initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no"/>
		<link href="//netdna.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css" rel="stylesheet">        
		
		<link href='https://fonts.googleapis.com/css?family=Montserrat:400,700'		rel='stylesheet' type='text/css'>
		<link	href='https://fonts.googleapis.com/css?family=Playfair+Display:400,400italic,700,700italic'		rel='stylesheet' type='text/css'>
		<link href='https://fonts.googleapis.com/css?family=Raleway:400,700,300'	rel='stylesheet' type='text/css'>
		<link href="fonts/Stroke-Gap-Icons-Webfont/style.css" rel="stylesheet"	type="text/css" />
		<link rel="stylesheet" href="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/css/bootstrap.min.css">  
		<!-- components -->		
		<link href="vendor/owl-carousel/owl-carousel/owl.carousel.css" rel="stylesheet" type="text/css" />
		<link href="vendor/slider-pro/dist/css/slider-pro.min.css" rel="stylesheet" type="text/css" />
		<link href="vendor/slick-carousel/slick/slick.css" rel="stylesheet" type="text/css" />
		<link href="vendor/animate.css/animate.min.css" rel="stylesheet" type="text/css" />
		
		<link href="css/print.css" rel="stylesheet" type="text/css" />
		<!--文件控件-->
		<link href="css/fileinput.css" rel="stylesheet" type="text/css" />
		<style type="text/css">
		strong{
			margin-top: 5em ;
		}
		</style>
</head>

<body data-scrolling-animations="true">
       
     	<!-- 引用导航栏 -->
     
        <jsp:include page="model/head.jsp"></jsp:include>

		<!-- 本页内容 -->
	
	<!-- 文字介绍部分 -->
	<div >
		<div class="container" style="width: 100%">
			<div class="col-xs-offset-0 col-xs-12 col-sm-offset-0 col-sm-12 col-md-offset-2 col-md-8">
					<div class="alert alert-warning">
						<strong>非常感谢您参与本项目的打印体验。本次打印纯粹免费体验。因此限制了诸多条件 </strong><br>
						<strong>1.因打印纸机限制，请您上传小于0.5M的PDF文件 </strong><br>
						<strong>2.请您在发现打印机纸张不足的情况下，伸出友谊之手，给打印机添加纸张 </strong><br>
					</div>
				<form id="printingForm" action="print.action"enctype="multipart/form-data" method="post">
					<div class="print_course" style="margin-bottom: 20px;width: 100%" >
						<span>1. </span> 选择打印店
					</div>
					<div  class="form-group">
						<select class="form-control" id="fprinterno" name="fprinterno" style="outline:none;" required>
							<option value="0">请选择</option>
							<option value="1" >教五楼大厅打印机</option>
						<!--  <option value="2" >科协自助打印终端</option> -->	
						</select> 
					</div>
					<div class="alert alert-warning">
						<strong>请就近选择打印机，并在预定时间前往打印机所在地，领取您的材料。 </strong>
					</div>
					<div class="print_course" style="margin-bottom: 20px">
						<span>2. </span> 选择要打印的文件
					</div>
					<div class="form-group" >
						<input id="file1" type="file" multiple class="file" name="myFile">
					</div>
					<div class="alert alert-warning">
						<strong>! ! ! 选择文件后一定记得点击“上传”哦！。 </strong><br>
						<strong>! ! ! 选择文件后一定记得点击“上传”哦！。 </strong><br>
						<strong>! ! ! 选择文件后一定记得点击“上传”哦！。 </strong><br>
						<strong> 重要的事情说三遍。 </strong>
					</div>
					<div style="margin-bottom: 70px">
						<div class="col-xs-offset-1 col-xs-10 col-sm-offset-3 col-sm-4 col-md-offset-2 col-md-4"  style="margin: 20px 0 20px 20%">
							<button class="btn btn-info" data-toggle="modal" data-target="#myModal">
								更多打印参数设置
							</button>
						</div>
						<div class="marginDef col-xs-offset-0 col-xs-12 col-sm-offset-1 col-sm-4 col-md-offset-1 col-md-4" style="margin: 20px 0 20px 0">
							<table>
							<td>预约时间: &nbsp;</td>
							  	<td><select id="fplanday" name="fplanday" >
								    <option value="0">今</option>
								    <option value="1">明</option>
							  	</select>&nbsp;天&nbsp;</td>
			            		<td><select id="fplanhous" name="fplanhous" >
			            			<option value="-1"></option>
								    <option value="0">0</option><option value="1">1</option><option value="2">2</option><option value="3">3</option>
								    <option value="4">4</option><option value="5">5</option><option value="6">6</option><option value="7">7</option>
								    <option value="8">8</option><option value="9">9</option><option value="10">10</option><option value="11">11</option>
								    <option value="12">12</option><option value="13">13</option><option value="14">14</option><option value="15">15</option>
								    <option value="16">16</option><option value="17">17</option><option value="18">18</option><option value="19">19</option>
								    <option value="20">20</option><option value="21">21</option><option value="22">22</option><option value="23">23</option>
							  	</select>&nbsp;点 :&nbsp;</td>
			            		<td>
			            		<div><select id="fplanmin" name="fplanmin" onblur="checkTime()">
			            			<option value="-1"></option>
								    <option value="0">0</option><option value="1">5</option><option value="2">10</option><option value="3">15</option><option value="4">20</option>
								    <option value="5">25</option><option value="6">30</option><option value="7">35</option><option value="8">40</option><option value="9">45</option>
								    <option value="10">50</option><option value="11">55</option>
							  	</select>&nbsp;分
							  	</div></td>
							</table>				
						</div>

					</div>
						<br>

					<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
					<div class="modal-dialog">
						<div class="modal-content">
							<div class="modal-header">
								<button type="button" class="close" data-dismiss="modal" 
										aria-hidden="true">×
								</button>
								<h4 class="modal-title" id="myModalLabel">
									文档打印设置
								</h4>
							</div>
							<div class="modal-body">
					    <table class="table table-hover"> 
					 	   <caption>
					 	   		<input  id="fname" name ="fname" class="fnamecss" readonly="readonly">					 	   	
					 	   		<input   name="furl" id="furl" class="fnamecss" readonly="readonly"></input>		
					 	   </caption> 
					       <tbody>   
					            <tr>
					            	<td>单双面:</td>
					            	<td>  
					            		<select  id="fside" name="fside" >
										    <option value="1">单面</option>
										<!--     <option value="2">双面</option> -->
									  	</select>
									 </td>
					            	<td>每页版数：</td>
					            	<td>
						            	<select id="fsidenum" name="fsidenum">
										    <option value="1">1</option>
										    <option value="2">2</option>
										    <option value="4">4</option>
										    <option value="9">9</option>
										</select>
									</td>
									

					            </tr>  
					            <tr>
						             <td>是否彩印:</td>
						             <td>  
					            		<select id="fcolor" name="fcolor">
										    <option value="1">否</option>
										   <!--  <option value="5">是</option> -->
								  		</select>
									 </td>
					            	<td>纸张大小：</td> 
				            		<td>
					            		<select id="fpapersize" name="fpapersize" >
										    <option value="0">A4</option>
<!-- 										    <option value="1">16K</option>
 -->									  	</select>
								  	</td>
					            	
					            </tr>    
					            <tr>
					            	<td>总页数：</td>
					            	<td>
					            		<input class="fnumcss"  id= "fnum" name = "fnum" readonly="readonly"></input>
					            	</td>
					            	<td>打印方向：</td>
					            	<td>
						            	<select id="fstyle" name="fstyle" >
						            		<option value="2">纵向</option>
										    <option value="1">横向</option> 
										</select>
									</td>
									  
					            </tr>
					            <tr>
					            <td>打印范围：</td> 
					            </tr>  
					            <tr>
			            			<td>起始页：</td>
			            				<td><input class="fpagecss" id="fstart" name="fstart" /></td>
			            			
			            			<td>结束页：</td>
			            				<td><input class="fpagecss" id="fend" name="fend" /></td>
					            </tr>   
					             <tr>
					            	<td>份数：</td><td><input class="fnumcss" id="fcopies" name="fcopies" value="1" readonly="readonly"/> </td>
					            	
									  
					            </tr>  

					        </tbody>  
					    </table>  
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-default" 
								data-dismiss="modal">确定
						</button>
					</div>
				</div><!-- /.modal-content -->
			</div><!-- /.modal-dialog -->
		</div><!-- /.modal -->	
				<div  class="form-group">
					<button id="subbtn" name="subbtn"  type="submit" class="btn btn-warning" onclick="return myFunction();"  title="请先选择并上传文件" style="width:30%; margin: 10px 35% 20px 35%">提交订单</button>
				</div>
			</form>
		</div>
	</div>
</div>
	<!-- 底部视图 -->
	
    <jsp:include page="model/footer2.jsp"></jsp:include>
    
    <!-- Scripts -->

	<!--Bootstrap-->
	<!--Jquery-->
	<script src="js/jquery-1.11.3.min.js"></script>
	<script src="vendor/bootstrap/dist/js/bootstrap.js"	type="text/javascript"></script>
	<script src="vendor/jquery-ui/jquery-ui.min.js" type="text/javascript"></script>
	<script src="vendor/slider-pro/dist/js/jquery.sliderPro.min.js"	type="text/javascript"></script>
	<script src="vendor/jquery.mb.ytplayer/dist/jquery.mb.YTPlayer.min.js"type="text/javascript"></script>
	<script src="vendor/owl-carousel/owl-carousel/owl.carousel.min.js "		type="text/javascript "></script>
	<script src="vendor/slick-carousel/slick/slick.min.js"	type="text/javascript "></script>
	<script src="vendor/wow/dist/wow.min.js " type="text/javascript "></script>
	<script src="js/modernizr.js " type="text/javascript "></script>
	<script src="js/contact.js " type="text/javascript "></script>
	<script src="js/map.js " type="text/javascript "></script>
	<script src="js/custom.js " type="text/javascript "></script>
	
	<!-- 文件上传 -->
	<script type="text/javascript" src="js/fileinput.js"></script>
	<script	src="https://cdn.bootcss.com/bootstrap-fileinput/4.3.5/js/locales/zh.min.js""></script>
	
	<!--验证 -->
	<script src="js/bootstrapValidator.min.js" type="text/javascript "></script>
	<script src="js/printValidator.js" type="text/javascript"></script>
	
	<!--文件上传-->
	<script src="js/uploadFile.js " type="text/javascript "></script>
	<script src="js/onsubmitFun.js " type="text/javascript "></script>
	

</body>

</html>