window.onload = function(){
	var oPhoto = document.getElementById('photo');
	var oLeft = document.getElementById('left');
	var oRight = document.getElementById('right');
	
	oRight.onclick = function(){
		// alert(oPhoto.src);
		switch (oPhoto.src){
			case "http://127.0.0.1:7890/images/1.jpg":
				oPhoto.src = "images/2.jpg";
				break;
			case "http://127.0.0.1:7890/images/2.jpg":
				oPhoto.src = "images/3.jpg";
				break;
			case "http://127.0.0.1:7890/images/3.jpg":
				oPhoto.src = "images/4.jpg";
				break;
			case "http://127.0.0.1:7890/images/4.jpg":
				oPhoto.src = "images/5.jpg";
				break;
			case "http://127.0.0.1:7890/images/5.jpg":
				oPhoto.src = "images/6.jpg";
				break;
			case "http://127.0.0.1:7890/images/6.jpg":
				oPhoto.src = "images/7.jpg";
				break;
			case "http://127.0.0.1:7890/images/7.jpg":
				oPhoto.src = "images/8.jpg";
				break;
			case "http://127.0.0.1:7890/images/8.jpg":
				oPhoto.src = "images/9.jpg";
				break;
			case "http://127.0.0.1:7890/images/9.jpg":
			oPhoto.src = "images/10.jpg";
			break;
			case "http://127.0.0.1:7890/images/10.jpg":
			oPhoto.src = "images/11.jpg";
			break;
			case "http://127.0.0.1:7890/images/11.jpg":
			oPhoto.src = "images/12.jpg";
			break;
			case "http://127.0.0.1:7890/images/12.jpg":
			oPhoto.src = "images/13.jpg";
			break;
			case "http://127.0.0.1:7890/images/13.jpg":
			oPhoto.src = "images/14.jpg";
			break;
			case "http://127.0.0.1:7890/images/14.jpg":
			oPhoto.src = "images/15.jpg";
			break;
			case "http://127.0.0.1:7890/images/15.jpg":
			oPhoto.src = "images/16.jpg";
			break;
			default:
				oPhoto.src = "images/16.jpg";

			}
		}
		
		oLeft.onclick = function(){
			switch (oPhoto.src){
				
				case "http://127.0.0.1:7890/images/16.jpg":
				oPhoto.src = "images/15.jpg";
				break;
				case "http://127.0.0.1:7890/images/15.jpg":
				oPhoto.src = "images/14.jpg";
				break;
				case "http://127.0.0.1:7890/images/14.jpg":
				oPhoto.src = "images/13.jpg";
				break;
				case "http://127.0.0.1:7890/images/13.jpg":
				oPhoto.src = "images/12.jpg";
				break;
				case "http://127.0.0.1:7890/images/12.jpg":
				oPhoto.src = "images/11.jpg";
				break;
				case "http://127.0.0.1:7890/images/11.jpg":
				oPhoto.src = "images/10.jpg";
				break;
				case "http://127.0.0.1:7890/images/10.jpg":
				oPhoto.src = "images/9.jpg";
				break;
				case "http://127.0.0.1:7890/images/9.jpg":
				oPhoto.src = "images/8.jpg";
				break;
				case "http://127.0.0.1:7890/images/8.jpg":
					oPhoto.src = "images/7.jpg";
					break;
				case "http://127.0.0.1:7890/images/7.jpg":
					oPhoto.src = "images/6.jpg";
					break;
				case "http://127.0.0.1:7890/images/6.jpg":
					oPhoto.src = "images/5.jpg";
					break;
				case "http://127.0.0.1:7890/images/5.jpg":
					oPhoto.src = "images/4.jpg";
					break;
				case "http://127.0.0.1:7890/images/4.jpg":
					oPhoto.src = "images/3.jpg";
					break;
				case "http://127.0.0.1:7890/images/3.jpg":
					oPhoto.src = "images/2.jpg";
					break;
				case "http://127.0.0.1:7890/images/2.jpg":
					oPhoto.src = "images/1.jpg";
					break;
				
				
				default:
					oPhoto.src = "images/1.jpg";
		
				}
		
			}
}