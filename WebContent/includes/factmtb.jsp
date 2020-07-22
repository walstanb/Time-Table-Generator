<%@ page import = "java.io.*,java.util.*,java.sql.*"%>
<%@ page import = "javax.servlet.http.*,javax.servlet.*" %>


<!DOCTYPE html>
<html>
<head>
	<link rel="stylesheet" href="css/styles.css">
</head>
<body>
<%
  	Class.forName("com.mysql.cj.jdbc.Driver");
	Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/ttdb","root",com.timetable.pass.get());
	Statement stmt=conn.createStatement();
	//String fac = request.getParameter("nof");
	String fac="yvs";
	ResultSet rs1=stmt.executeQuery("select * from "+fac+" where slot like '%SUB' order by slot;");
	
	int i=1;
	String[][] sub=new String[7][7];
	while(rs1.next())
	{
		for(int j=1;j<=6;j++)
			sub[i][j]=(rs1.getString(j+1));
		i++;
	}
	
	ResultSet rs2=stmt.executeQuery("select * from "+fac+" where slot like '%CL' order by slot;");
	i=1;
	String[][] cl=new String[7][7];
	while(rs2.next())
	{
		for(int j=1;j<=6;j++)
			cl[i][j]=(rs2.getString(j+1));
		i++;
	}
%>

<center>
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
    <td>10</td>
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
  <td>60</td>
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
    <td>20</td>
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
    <td>30</td>
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
    <td>40</td>
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
    <td>50</td>
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
</body>
</html>
