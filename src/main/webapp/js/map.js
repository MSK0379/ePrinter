//退出
function logout(userName) {
	if(confirm("亲爱的 "+userName +" , 是否要退出")){
		 $.ajax({
	            url: "logout.action",
	            // 数据发送方式
	            type: "post",
	            // 接受数据格
	    });
		 
	    alert("你已经退出！");
	    window.location.href="index.action";  
	}
	else {
		alert("您取消了退出");
	}
}
//登陆
function SignIn(){
	//跳转到登陆页面
	window.location.href="SignIn.action";
}

//跳转
function SignUp() {
	//跳转到注册页面
	window.location.href="SignUp.action";
}
var map;
function initialize() {
    var Options = {
        center: new google.maps.LatLng(56, 37),
        zoom: 8,
        scrollwheel: false,
        navigationControl: false,
        mapTypeControl: false,
        scaleControl: false,
        mapTypeId: google.maps.MapTypeId.ROADMAP
    };
    map = new google.maps.Map(document.getElementById("contactMap"), Options);
}
function initializeBigMap() {
    // Create an array of styles.
    var styles = [
        {
            stylers: [
                {hue: "#686868"},
                {saturation: -100},
                {lightness: -40}
            ]
        }
    ];
    var myLatLng = new google.maps.LatLng(55.743635, 37.624201);
    var styledMap = new google.maps.StyledMapType(styles,
            {name: "Styled Map"});
    var mapOptions = {
        zoom: 11,
        scrollwheel: false,
        center: myLatLng,
        mapTypeControlOptions: {
            mapTypeIds: [google.maps.MapTypeId.ROADMAP, 'map_style']
        }
    };
    var map = new google.maps.Map(document.getElementById('bigMap'),
            mapOptions);
    var image = 'img/google-marker.png';

    var myMarker = new google.maps.Marker({
        position: myLatLng,
        map: map,
        icon: image
    });
    map.mapTypes.set('map_style', styledMap);
    map.setMapTypeId('map_style');
}
google.maps.event.addDomListener(window, 'load', initializeBigMap);
