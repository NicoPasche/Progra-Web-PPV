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


var slider = document.getElementById("range1");
var output = document.getElementById("demo1");
output.innerHTML = slider.value; // Display the default slider value

// Update the current slider value (each time you drag the slider handle)
slider.oninput = function() {
  output.innerHTML = this.value;
}