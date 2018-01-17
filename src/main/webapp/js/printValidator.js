$(function () {
	$('#printingForm').bootstrapValidator({
		message: 'This value is not valid',
        feedbackIcons: {
            valid: 'glyphicon glyphicon-ok',
            invalid: 'glyphicon glyphicon-remove',
            validating: 'glyphicon glyphicon-refresh'
        },
        fields: {
		    fprinterno: {
		    	message :'打印机验证失败!',
		    	validators:{
		    		notEmpty:{
		    			message:'请选择打印机'
		            },
		            callback: {
		              message: '请选择一个打印机',
		              callback: function(value, validator) {
		
		                  if (value == 0) {
		                      return false;
		                  } else {
		                      return true;
		                  }
		
		              }
		            }
		    	}
		    },
		    myFile: {
		    	message: '文件上传失败',
		    	validators: {
		    		notEmpty: {
		    			message: '请选择文件并上传文件'
		    		}
		    	}
		    },
		    fplanmin: {
		    	message: '文件上传失败',
		    	validators: {
		    		notEmpty: {
		    			message: '请填写文件'
		    		},
		            callback: {
			              message: '请选择上传文件后，填写预约时间',
			              callback: function(value, validator) {
			
			                  if (value == -1) { 
			                      return false;
			                  } else {
			                	  if($("#fplanhous").val() == -1){
			                		  return false;
			                	  }
			                      return true;
			                  }
			
			              }
		    		}
		    		
		    	}
		    }
		    
		  }
	
	});
		
});
