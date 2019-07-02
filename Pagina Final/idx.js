function login(showhide){
		if(showhide == "show"){
    		document.getElementById('popupbox').style.visibility="visible";
		}else if(showhide == "hide"){
    		document.getElementById('popupbox').style.visibility="hidden"; 
		}
	}
	var popupWindow = null;
	function centeredPopup(url,winName,w,h,scroll){
		LeftPosition = (screen.width) ? (screen.width-w)/2 : 0;
		TopPosition = (screen.height) ? (screen.height-h)/2 : 0;
		settings =
		'height='+h+',width='+w+',top='+TopPosition+',left='+LeftPosition+',scrollbars='+scroll+',resizable'
		popupWindow = window.open(url,winName,settings)
	}