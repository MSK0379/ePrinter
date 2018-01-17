//文件上传
	$("#file1").fileinput({   
	    language: 'zh',  
	    uploadUrl: 'upload.action', // you must set a valid URL here else you will get an error  
	    allowedFileExtensions: ['pdf', 'PDF'],
	    maxFileSize: 512000,
	    showUpload: true,
	    maxFileCount: 1, //表示允许同时上传的最大文件个数
	    showCaption: true,//是否显示标题
	    slugCallback: function(filename) {
	        return filename.replace('(', '_').replace(']', '_');
	    }
	    
	});
	//上传完成
	$("#file1").on("fileuploaded", function (event, data, previewId, index) {	
		var response = data.response;
		//给前台写入
		$("#fname").val(response.fileName); 
		$("#furl").val(response.furl);; 
		$("#furl").hide();
		$("#fnum").val(response.page);
		$("#fend").value=response.page; 
		$("#fstart").val("1"); 
		$("#fend").val(response.page); 
		
	/*	$("#subbtn").disabled=false;*/
        alert(response.aa);
        
    });
	//删除
	