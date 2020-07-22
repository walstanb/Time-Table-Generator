<!doctype html>
<html>
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="initial-scale=1.0">
  <title>ADMIN</title>
  <link rel="stylesheet" href="css/standardize.css">
  <link rel="stylesheet" href="css/afterlogin-grid.css">
  <link rel="stylesheet" href="css/afterlogin.css">
  <style>
	#myProgress {
	 border-radius: 3px;
	  margin: 48vh 0 0 35.08203%;
	  width: 30%;
	  background-color: #ddd;
	}
	#myBar {
	border-radius: 3px;
	  width: 0%;
	  height: 15px;
	  background-color: #000000;
	}
	</style>
	<script>
	function move() {
	  var elem = document.getElementById("myBar");   
	  var width = 1;
	  var id = setInterval(frame, 200);
	  function frame() {
	    if (width >= 100) {
	      clearInterval(id);
	    } else {
	      width++; 
	      elem.style.width = width + '%'; 
	    }
	  }
	}
	</script>
</head>
<body class="body page-afterlogin clearfix">
  <p onClick="window.location='front.jsp';" class="text text-1"><span><span>TIME TABLE GENERATOR</span></span></p>
  <button tabindex="6" onClick="window.location='front.jsp';" class="_button _button-1">HOME</button>
  
 
  
  <form action="Generate" method="post" onsubmit="move()">
  <p class="text text-2">SELECT SEM :</p>
  <label class="radio-label radio-label-1 clearfix">
    <input tabindex="1" class="radio" name="term" value="odd" type="radio" required>
    <span class="point-text"><span>ODD</span></span>
  </label>
  <label class="radio-label radio-label-2 clearfix">
    <input class="radio" name="term" value="even" type="radio" required>
    <span tabindex="2"class="point-text">EVEN</span>
  </label>
  
  <input tabindex="3" type="submit" class="_button _button-2" value="Generate Time Table"/>
   <input type="hidden" name="results" value="0">
  </form>
  <button tabindex="4" onClick="window.location='submodify.jsp';" class="_button _button-2">Edit Subject Details</button>
  <button tabindex="5" onClick="window.location='facmodify.jsp?scr=01';" class="_button _button-2">Edit Faculty Details</button>
  
   <div id="myProgress">
  <div id="myBar"></div>
	</div>
	<div class="wrapper">
	
   <% 
  if(request.getAttribute("results")!=null)
  {
	 %>
	<center>
 	<p>TimeTable Generated Successfully ! </p>
    <%} %>
</div>
  
</body>
</html>