<%@ page import = "java.io.*,java.util.*,java.sql.*"%>
<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import = "javax.servlet.http.*,javax.servlet.*" %>

<!doctype html>
<html>
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="initial-scale=1.0">
  <title>FACULTY</title>
  <link rel="stylesheet" href="css/standardize.css">
  <link rel="stylesheet" href="css/faculty-grid.css">
  <link rel="stylesheet" href="css/faculty.css">
  <script>
function printDiv(divName) {
	
     var originalContents = document.body.innerHTML;
     document.getElementById("facn").innerHTML = "<br><h1 style='font-size:32; color:black;'><%=request.getParameter(request.getParameter("nof"))%></h1><br>";
     document.body.innerHTML = document.getElementById(divName).innerHTML;
     window.print();
     document.body.innerHTML = originalContents;
}
</script>
</head>
<body class="body page-faculty clearfix">

  <p onClick="window.location='front.jsp';" class="text"><span><span>TIME TABLE GENERATOR</span></span></p>
  <button tabindex="3" onClick="window.location='front.jsp';" class="_button _button-1">HOME</button>
   <input type="button" onclick="printDiv('wr')" style="font-size:18px; margin: 35px 0 0 1.82943%; width: 4%;" class="_button _button-1" value="🖶"/>
  <button tabindex="4" onClick="window.location='admlogin.jsp';" class="_button _button-2">LOGIN</button>
  
  <%
	Class.forName("com.mysql.cj.jdbc.Driver");
	Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/ttdb","root",com.timetable.pass.get());
  	ResultSet rs1,rs2=null;
  %>
  
  
  <form name="frm" action="faculty.jsp" method="post">
  <select tabindex="1" class="_select" name="nof">
  	<option value="nul" <%=(request.getParameter("nof").equals("nul")?"selected":"")%>>NAME</option>
	<%
	 Statement stmtx=conn.createStatement();
	 ResultSet rs=stmtx.executeQuery("select * from faculty_details order by fid;");
	while(rs.next()) 
	{
	%>
	<option value="<%=rs.getString(2)%>" <%=(request.getParameter("nof").equals(rs.getString(2))?"selected":"")%> ><%=rs.getString(3)%></option>
	<%}
	%>
  </select>
  <%
  rs.beforeFirst();
  while(rs.next()) 
	{
	%>
	<input type="hidden" name="<%=rs.getString(2)%>" value="<%=rs.getString(3)%>"/>
	<%} 
	stmtx.close();%>
  <input tabindex="2" type="submit" name="btn" value="VIEW" class="_button _button-3"/>
  </form>
  
  <%
	  if (request.getParameter("nof").equals("nul")) {
	     conn.close();
	  }
	  else{
		 try{ 
		 Statement stmt=conn.createStatement();
		String fac = request.getParameter("nof");
		//String fac="yvs";
		rs1=stmt.executeQuery("select * from "+fac+" where slot like '%SUB' order by slot;");
		
		int i=1;
		String[][] sub=new String[7][7];
		while(rs1.next())
		{
			for(int j=1;j<=6;j++)
				sub[i][j]=(rs1.getString(j+1));
			i++;
		}
		
		rs2=stmt.executeQuery("select * from "+fac+" where slot like '%CL' order by slot;");
		i=1;
		String[][] cl=new String[7][7];
		while(rs2.next())
		{
			for(int j=1;j<=6;j++)
				cl[i][j]=(rs2.getString(j+1));
			i++;
		}
	%>
	<div id="wr" class="wrapper">  <!--<iframe width="100%" height="100%" src="factmtb.jsp"></iframe>-->
	<div id="facn"></div>
	<table>
  <tr>
    <th>Slot</th>
    <th>Time/Day</th>
    <th>Monday</th>
    <th>Tuesday</th>
    <th>Wednesday</th>
    <th>Thursday</th>
    <th>Friday</th>
    <th>Saturday</th>
  </tr>
  <tr>
    <td>1</td>
    <td>10:00-11:00</td>
    <td>
	    <table class="innr">
	    
	    <tr>
	    <td><% out.print(sub[1][1]);%></td>
	    <td><% out.print(cl[1][1]);%></td>
	    </tr>
	    
	    </table>
    </td>
    <td>
	    <table class="innr">
	    <tr>
	    <td><% out.print(sub[1][2]);%></td>
	    <td><% out.print(cl[1][2]);%></td>
	    </tr>
    	</table>
    
    </td>
    <td>
    <table class="innr">
    <tr>
    <td><% out.print(sub[1][3]);%></td>
    <td><% out.print(cl[1][3]);%></td>
    </tr>
    
    </table>
    
    </td>
    <td>
    <table class="innr">
    <tr>
    <td><% out.print(sub[1][4]);%></td>
    <td><% out.print(cl[1][4]);%></td>
    </tr>
    
    </table>
    
    </td>
    <td>
    <table class="innr">
    <tr>
    <td><% out.print(sub[1][5]);%></td>
    <td><% out.print(cl[1][5]);%></td>
    </tr>
    
    </table>
    
    </td><td>
    <table class="innr">
    <tr>
    <td><% out.print(sub[1][6]);%></td>
    <td><% out.print(cl[1][6]);%></td>
    </tr>
    
    </table>
    
    </td>
    
  </tr>
  <tr>
  <td>2</td>
  <td>11:00-12:00</td>
<td>
    <table class="innr">
    <tr>
    <td><% out.print(sub[2][1]);%></td>
    <td><% out.print(cl[2][1]);%></td>
    </tr>
    
    </table>
    
    </td>
    <td>
    <table class="innr">
    <tr>
    <td><% out.print(sub[2][2]);%></td>
    <td><% out.print(cl[2][2]);%></td>
    </tr>
    
    </table>
    
    </td>
    <td>
    <table class="innr">
    <tr>
    <td><% out.print(sub[2][3]);%></td>
    <td><% out.print(cl[2][3]);%></td>
    </tr>
    
    </table>
    
    </td>
    <td>
    <table class="innr">
    <tr>
   <td><% out.print(sub[2][4]);%></td>
    <td><% out.print(cl[2][4]);%></td>
    </tr>
    
    </table>
    
    </td>
    <td>
    <table class="innr">
    <tr>
    <td><% out.print(sub[2][5]);%></td>
    <td><% out.print(cl[2][5]);%></td>
    </tr>
    
    </table>
    
    </td>
    <td>
    <table class="innr">
    <tr>
    <td><% out.print(sub[2][6]);%></td>
    <td><% out.print(cl[2][6]);%></td>
    </tr>
    
    </table>
    
    </td>
    
  
  </tr>
  <tr>
  <td colspan="8" align="center"> 15 min
  </td>
  
  </tr>
  <tr>
    <td>3</td>
    <td>12:15-1:15&nbsp</td>
    <td>
    <table class="innr">
    <tr>
    <td><% out.print(sub[3][1]);%></td>
    <td><% out.print(cl[3][1]);%></td>
    </tr>
    
    
    
    </table>
    
    </td>
     <td>
    <table class="innr">
    <tr>
    <td><% out.print(sub[3][2]);%></td>
    <td><% out.print(cl[3][2]);%></td>
    </tr>
    
    </table>
    
    </td>
         <td>
    <table class="innr">
    <tr>
    <td><% out.print(sub[3][3]);%></td>
    <td><% out.print(cl[3][3]);%></td>
    </tr>
    
    </table>
    
    </td> <td>
    <table class="innr">
    <tr>
    <td><% out.print(sub[3][4]);%></td>
    <td><% out.print(cl[3][4]);%></td>
    </tr>
    
    </table>
    
    </td> <td>
    <table class="innr">
    <tr>
    <td><% out.print(sub[3][5]);%></td>
    <td><% out.print(cl[3][5]);%></td>
    </tr>
    
    </table>
    
    </td>
    
    <td>
    <table class="innr">
    <tr>
    <td><% out.print(sub[3][6]);%></td>
    <td><% out.print(cl[3][6]);%></td>
    </tr>
    
    </table>
    
    </td>
  </tr>
  <tr>
    <td>4</td>
    <td>1:15-2:15&nbsp</td>
    <td>
    <table class="innr">
    <tr>
    <td><% out.print(sub[4][1]);%></td>
    <td><% out.print(cl[4][1]);%></td>
    </tr>
    
    </table>
    
    </td> <td>
    <table class="innr">
    <tr>
    <td><% out.print(sub[4][2]);%></td>
    <td><% out.print(cl[4][2]);%></td>
    </tr>
    
    </table>
    
    </td> <td>
    <table class="innr">
    <tr>
    <td><% out.print(sub[4][3]);%></td>
    <td><% out.print(cl[4][3]);%></td>
    </tr>
    
    </table>
    
    </td> <td>
    <table class="innr">
    <tr>
    <td><% out.print(sub[4][4]);%></td>
    <td><% out.print(cl[4][4]);%></td>
    </tr>
    
    </table>
    
    </td> <td>
    <table class="innr">
    <tr>
    <td><% out.print(sub[4][5]);%></td>
    <td><% out.print(cl[4][5]);%></td>
    </tr>
    
    </table>
    
    </td> <td>
    <table class="innr">
    <tr>
    <td><% out.print(sub[4][6]);%></td>
    <td><% out.print(cl[4][6]);%></td>
    </tr>
    
    </table>
    
    </td>
  </tr>
   <tr>
  <td colspan="8" align="center"> 45 min
  </td>
  
  </tr>
  <tr>
    <td>5</td>
    <td>3:00-4:00&nbsp&nbsp</td>
     <td>
    <table class="innr">
    <tr>
    <td><% out.print(sub[5][1]);%></td>
    <td><% out.print(cl[5][1]);%></td>
    </tr>
    
    </table>
    
    </td> <td>
    <table class="innr">
    <tr>
    <td><% out.print(sub[5][2]);%></td>
    <td><% out.print(cl[5][2]);%></td>
    </tr>
    
    </table>
    
    </td> <td>
    <table class="innr">
    <tr>
    <td><% out.print(sub[5][3]);%></td>
    <td><% out.print(cl[5][3]);%></td>
    </tr>
    
    </table>
    
    </td> <td>
    <table class="innr">
    <tr>
    <td><% out.print(sub[5][4]);%></td>
    <td><% out.print(cl[5][4]);%></td>
    </tr>
    
    </table>
    
    </td> <td>
    <table class="innr">
    <tr>
    <td><% out.print(sub[5][5]);%></td>
    <td><% out.print(cl[5][5]);%></td>
    </tr>
    
    </table>
    
    </td> <td>
    <table class="innr">
    <tr>
    <td><% out.print(sub[5][6]);%></td>
    <td><% out.print(cl[5][6]);%></td>
    </tr>
    
    </table>
    
    </td>
  </tr>
  <tr>
    <td>6</td>
    <td>4:00-5:00&nbsp&nbsp</td>
    <td>
    <table class="innr">
    <tr>
    <td><% out.print(sub[6][1]);%></td>
    <td><% out.print(cl[6][1]);%></td>
    </tr>
    
    </table>
    
    </td> <td>
    <table class="innr">
    <tr>
    <td><% out.print(sub[6][2]);%></td>
    <td><% out.print(cl[6][2]);%></td>
    </tr>
    
    </table>
    
    </td> <td>
    <table class="innr">
    <tr>
    <td><% out.print(sub[6][3]);%></td>
    <td><% out.print(cl[6][3]);%></td>
    </tr>
    
    </table>
    
    </td> <td>
    <table class="innr">
    <tr>
    <td><% out.print(sub[6][4]);%></td>
    <td><% out.print(cl[6][4]);%></td>
    </tr>
    
    </table>
    
    </td> <td>
    <table class="innr">
    <tr>
    <td><% out.print(sub[6][5]);%></td>
    <td><% out.print(cl[6][5]);%></td>
    </tr>
    
    </table>
    
    </td> <td>
    <table class="innr">
    <tr>
    <td><% out.print(sub[6][6]);%></td>
    <td><% out.print(cl[6][6]);%></td>
    </tr>
    
    </table>
    
    </td>
    
  </tr>
  
  
</table>
	
	</div>
	


<%
	conn.close();
	  }
	catch(Exception e)
	{
		out.print(e);
	}
	  }
%>
</body>
</html>