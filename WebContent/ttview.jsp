<%@ page import = "java.io.*,java.util.*,java.sql.*"%>
<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import = "javax.servlet.http.*,javax.servlet.*" %>

<!doctype html>
<html>
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="initial-scale=1.0">
  <title>VIEW TIMETABLE</title>
  <link rel="stylesheet" href="css/standardize.css">
  <link rel="stylesheet" href="css/ttview-grid.css">
  <link rel="stylesheet" href="css/ttview.css">
  <script>
	function printDiv(divName) {
	     var originalContents = document.body.innerHTML;
	     document.getElementById("yrdv").innerHTML = "<br><h1 style='font-size:32; color:black;'>Year= <%=request.getParameter("year")%>      Division= <%=request.getParameter("div")%></h1><br>";
	     document.body.innerHTML = document.getElementById(divName).innerHTML;
	     window.print();
	     document.body.innerHTML = originalContents;
	}
</script>
</head>
<body class="body page-ttview clearfix">
  <p  onClick="window.location='front.jsp';"  class="text"><span><span>TIME TABLE GENERATOR</span></span></p>
  <button tabindex="4" onClick="window.location='front.jsp';" class="_button _button-1">HOME</button>
  <input type="button" onclick="printDiv('wr')" style="font-size:18px; margin: 35px 0 0 1.82943%; width: 4%;" class="_button _button-1" value="🖶"/>
  <button tabindex="5" onClick="window.location='admlogin.jsp';" class="_button _button-2">LOGIN</button>
  <% 
  	String yr=request.getParameter("year");
	String dv=request.getParameter("div");
  %>
  <form name="frm" action="ttview.jsp">
  <select tabindex="1" class="_select _select-1" name="year">
    <option value="" <%=(yr.equals("")?"selected":"") %>>SELECT YEAR</option>
    <option value="1" <%=(yr.equals("1")?"selected":"") %>>1st Year</option>
    <option value="2" <%=(yr.equals("2")?"selected":"") %>>2nd Year</option>
    <option value="3" <%=(yr.equals("3")?"selected":"") %>>3rd Year</option>
    <option value="4" <%=(yr.equals("4")?"selected":"") %>>4th Year</option>
  </select>
  <select tabindex="2" class="_select _select-2" name="div">
    <option value="" <%=(dv.equals("")?"selected":"") %>>SELECT DIVISION</option>
    <option value="1" <%=(dv.equals("1")?"selected":"") %>>Division 1</option>
    <option value="2" <%=(dv.equals("2")?"selected":"") %>>Division 2</option>
    <option value="3" <%=(dv.equals("3")?"selected":"") %>>Division 3</option>
  </select>
  <input tabindex="3" type="submit" class="_button _button-3" value="VIEW"/>
  </form>
  <br><br><br><br><br><br><br><br><br><br><br><br>
  <div id="wr">
  <div id="yrdv"></div>
  <center>
	<%
		if(!request.getParameter("year").equals("") && !request.getParameter("div").equals(""))
		{
			String year=request.getParameter("year");
			String div=request.getParameter("div");
			if(div.equals("1"))
			{
			%>
			<jsp:include page="/includes/tmtbd1.jsp" flush="true">
    			<jsp:param name="yr" value="<%=year%>"/>
			</jsp:include>
			<%
			}
			else if(div.equals("2"))
			{
			%>
			<jsp:include page="/includes/tmtbd2.jsp" flush="true">
    			<jsp:param name="yr" value="<%=year%>"/>
			</jsp:include>
			<%
			}
			else if(div.equals("3"))
			{
			%>
			<jsp:include page="/includes/tmtbd3.jsp" flush="true">
    			<jsp:param name="yr" value="<%=year%>"/>
			</jsp:include>
			<%
			}
		}
	%>
	</div>
</body>
</html>