/*
 * 核对时间选择
 * 
 */
var way = "de";
function checkTime(){
    var fplanmin = $("#fplanmin").val(); 
    var fplanhous = $("#fplanhous").val(); 
    var fplanday = $("#fplanday").val(); 
    var fcopies = $("#fcopies").val(); 
    var fnum = $("#fnum").val(); 
   // alert("调用的参数是"+way);
    way = "jsp";
    var flag = true;
    //验证时间
    if(fnum != null && fplanhous != -1  && fplanmin != -1){
		//alert("当前天："+fplanday+"当前天："+fplanhous+"当前天："+fplanmin);
		var day = parseInt(288*fplanday);
		var hous = parseInt(12*fplanhous)
		var plantime = day + hous + parseInt(fplanmin);
		
		//alert("当前天："+day+"当前天："+hous+"当前天："+fplanmin +"和为"+plantime);
		var myDate = new Date();
		var nowtime =  12*myDate.getHours()+myDate.getMinutes()/5+2;
		nowtime = parseInt(nowtime);
		//alert("当前时间为"+nowtime+"预约时间为"+plantime);
		if(plantime < nowtime){
			var firsthous = parseInt(nowtime/12);
			var firstmin = (nowtime%12)*5;
			alert("预约时间有误，最早应预约"+firsthous+"点"+firstmin+"分以后");
			$("#fplanhous").val(-1);
			$("#fplanmin").val(-1);
			flag = false ;
		}
    }
    if(flag){
    	if(fnum != ""&& fplanhous != "" && fplanmin != ""){
    		$.ajax({  
    			async:false,
    			url:"checkTime.action",    
    			type:"post",  
    			dataType:"text",  
    			data:{  
    				fplanday: fplanday, //为ajax方法传递参数  
    				fplanhous:fplanhous, 
    				fplanmin: fplanmin,
    				fnum: fnum,
    				fcopies: fcopies
    			},  
    			success: function(date){
//    			alert("返回值为"+date);
    				if(date == "UNSUCCESS"){
    					way = "js";
    					alert("参数为"+way);
    					alert("非常抱歉，因为预约太火爆，本时间段预约用户过多，请您预约其他时间。");  
    					$("#fplanmin").val(""); 
    					$("#fplanhous").val(""); 
    				}
    			},  
    			error: function(){  
    				alert("出错了，请重试，或联系管理员！");  
    			}  
    		});  
    	}else{
    		flag = true;
    		alert("请上传文件并正确填写预约时间！");  
    		$("#fplanmin").val(""); 
    		$("#fplanhous").val(""); 
    	}	
    	
    }
}


/**
 * 暂时使用js验证，因为在后台验证较为麻烦，需要解析json数据，最近比较忙所以暂时使用js实现验证。
 * 因为牵扯资金问题，所以暂时即使有人修改前端代码，也仅仅多大几页内容。但是还是希望大家能够按照要求，做一个受人尊敬的大学生。
 * @author MSK
 * @returns 验证结果
 */

function myFunction() {
	//alert("进入onclick");
	var fstart = $("#fstart").val();//获取开始页
	var fend = $("#fend").val();//获取结束页
	var fcolor = $("#fcolor").val();//获取是否彩印
	var fside = $("#fside").val();//获取单双面
	var fcopies = $("#fcopies").val();//获取份数
	var fplanday = $("#fplanday").val();//获取预约时间
	var fplanhous = $("#fplanhous").val();
	var fplanmin = $("#fplanmin").val();
	var fnum = $("#fnum").val();//获取总页数
	
	//转型为整形
	var needMoney = 0;
	checkTime(way);
	if(way == "js"){
		return false;
	}
	if(fnum==null || fnum == 0){
		alert("请选择文件，并点击上传，否则我们无法解析您的文件");
		return false;
	}
	fstart = parseInt(fstart); 
	fend = parseInt(fend); 	
	fcolor = parseInt(fcolor); 	
	fside = parseInt(fside); 	
	fcopies = parseInt(fcopies); 
	fnum = parseInt(fnum); 
//	alert("总页数为"+fnum +"-----"+fstart+"++++"+fend);//测试用
	//判断是页数选择是否正确
	if(parseInt(fend) > parseInt(fnum)){
		alert("打印结束页必须小于或等于文档总页数，结束页将自动置为"+fnum);
		$("#fend").val(fnum);
		return false;
	}else if(parseInt(fstart) > parseInt(fend)){
		alert("打印订单开始页必须小于或等于所选结束页，开始页将自动置为1");
		$("#fstart").val(1);
		return false;
	}else if(fstart != "" &&fend != "" && fcolor != null && fside != null &&fcopies  != null && fplanhous != -1  && fplanmin != -1){
		//alert("当前天："+fplanday+"当前天："+fplanhous+"当前天："+fplanmin);
		var day = parseInt(288*fplanday);
		var hous = parseInt(12*fplanhous)
		var plantime = day + hous + parseInt(fplanmin);
		
		//alert("当前天："+day+"当前天："+hous+"当前天："+fplanmin +"和为"+plantime);
		var myDate = new Date();
		var nowtime =  12*myDate.getHours()+myDate.getMinutes()/5+2;
		nowtime = parseInt(nowtime);
		//alert("当前时间为"+nowtime+"预约时间为"+plantime);
		if(plantime < nowtime){
			var firsthous = parseInt(nowtime/12);
			var firstmin = (nowtime%12)*5;
			alert("预约时间有误，最早应预约"+firsthous+"点"+firstmin+"分以后");
			$("#fplanhous").val(-1);
			$("#fplanmin").val(-1);
			return false;
		}else{
			//alert("时间选择合适");
			needMoney = (fend - fstart + 1) * fstart * fside*fcopies;
			alert("非常感谢您按照所给步骤完成了订单的提交，本次测试免费为大家打印资料，所以有诸多限制，希望您能够体谅。本次打印共需: "+needMoney+"  积分（积分由我方赠送）");
		//	alert(fstart+"--"+fend+"--"+fcolor+"--"+fside+"--"+fcopies+"用来计算价格，未完成，但不影响暂时提交");
			return true;
		}
//		document.getElementById("printingForm").submit();
	}else{
		alert("请先上传文件并填写打印参数");
		return false;
	}

}
$(function () { $('#myModal').on('hide.bs.modal', function () {
	alert("请填写预约时间(为了确保您的订单可以按时完成)");
	$("#fplanhous").val(-1);
	$("#fplanmin").val(-1);
    });
 });

