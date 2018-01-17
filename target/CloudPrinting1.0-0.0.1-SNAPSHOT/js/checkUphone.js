
function checkUphone() {  
	
    var uphone = $("#uphone").val(); 
    var reg = /\d{11}$/;
    if(reg.test(uphone)){
/*    	
    	alert("输入的电话号为"+uphone);*/
    	$.ajax({  
    		async:false,
    		url:"checkUphone.action",    
    		type:"post",  
    		dataType:"text",  
    		data:{  
    			uphone:uphone //为ajax方法传递uphone参数  
    		},  
    		success: function(date){
//    			alert("返回值为"+date);
    			if(date == "UNSUCCESS"){
    				alert("该用户已经注册，请验证并输入自己的手机号或直接登陆");  
    				$("#uphone").val(""); 
    			}
    		},  
    		error: function(){  
    			alert("出错了，请重试，或联系管理员！");  
    		}  
    	});  
    }
}       