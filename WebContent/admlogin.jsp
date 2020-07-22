<%@ page import = "java.io.*,java.util.*,java.sql.*"%>
<!doctype html>
<html>
<head>
<style>
.element {
  position: absolute;
  top: 151px;
  left: 0;
  right: 0;
  width: 27.1666666666%;
  height: 200px;
  margin: 0 auto;
  border-radius: 14px;
  <%  
  if(request.getAttribute("usrname")==null)
  {
  %>background-color: rgba(255, 82, 82, 0);<%
  }
  else{
	%>background-color: rgba(255, 82, 82, 0.30);<%
	request.setAttribute("usrname",null);
  }
  %>
}
</style>
  <meta charset="utf-8">
  <meta name="viewport" content="initial-scale=1.0">
  <title>LOGIN</title>
  <link href="http://fonts.googleapis.com/css?family=Droid+Sans:700" rel="stylesheet" type="text/css">
  <link rel="stylesheet" href="css/standardize.css">
  <link rel="stylesheet" href="css/admlogin-grid.css">
  <link rel="stylesheet" href="css/admlogin.css">
</head>
<body class="body page-admlogin clearfix">
  <p onClick="window.location='front.jsp';"  class="text"><span><span>TIME TABLE GENERATOR</span></span></p>
  <button tabindex="5" onClick="window.location='front.jsp';" class="_button _button-1">HOME</button>
  <div class="element"></div>
  <form action="LoginCheck.jsp" method="post">
  <input class="_input _input-2" placeholder="Enter Username" type="text" name="usrname"  autofocus>
  <input class="_input _input-1" placeholder="Enter Password" type="password" name="pass" autofocus>
  <input type="submit" value="LOGIN" class="_button _button-3" autofocus/>
  <input type="reset" class="_button _button-2" value="CANCEL" onClick="window.location='admlogin.jsp';" autofocus/>
  
  </form>
</body>
</html>