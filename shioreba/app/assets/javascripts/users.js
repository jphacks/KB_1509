$(document).ready(function(){
  var img_num = $("li").length
  console.log(img_num)
  if(img_num < 2){
  	//level1
  	$("#img_area").html("<img src='/level1.JPG' alt='level1'>")
  }else if(img_num < 5){
  	//level2
  	$("#img_area").html("<img src='/level1.JPG' alt='level2'>")
  }else if(img_num < 10){
  	//level3
  	$("#img_area").html("<img src='/level1.JPG' alt='level3'>")
  }else if(img_num < 15){
  	//level4
  	$("#img_area").html("<img src='/level1.JPG' alt='level4'>")
  }
});