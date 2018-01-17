function JudgeUserName() {
	$.ajax({
		type : "POST",
		url : "check.action",
		dataType : "html",
		data : "uphone=" + $("#uphone").val(),
		success : function(msg) {
			$("#showResult").html(msg);
			$("#showResult").css("color", "red");
		},
		complete : function(XMLHttpRequest, textStatus) {
			// 隐藏正在查询图片
		},
		error : function() {
			// 错误处理
		}
	});
}