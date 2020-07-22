<%@ page import = "java.io.*,java.util.*,java.sql.*"%>
<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html>

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="initial-scale=1.0">
  <title>Faculty Modify</title>
  <link rel="stylesheet" href="css/standardize.css">
  <link rel="stylesheet" href="css/modify-grid.css">
  <link rel="stylesheet" href="css/modify.css">
  <style>
	html {
	  scroll-behavior: smooth;
	}
</style>
</head>
<body onload="document.documentElement.scrollTop = <%=request.getParameter("scr")%>.getBoundingClientRect().top-30;" class="body page-modify clearfix">
<p onClick="window.location='front.jsp';"  class="text"><span><span>TIME TABLE GENERATOR</span></span></p>
  <button onClick="window.location='afterlogin.jsp';" class="_button">Back</button>
  <form action="facmodify.jsp" method="post" id="f2">
  <input type="hidden" name="chk2" value="one">  
  </form>
  <form action="facmodify.jsp" method="post">
  <br>
  <div>
 
 
  <input type="button" onclick="document.getElementById('nabr').focus();" style="margin: 7px 0 0 1.82943%;" class="_button" value="Add New"/>
  <input type="submit" style="position:fixed; float: right; margin: 3.8% 0 0 76.5%;" class="_button" value="Apply" />
   <input type="reset" style="position:fixed; float: right; margin: 3.8% 0 0 86.68%;" class="_button" value="Reset"/>
  <input type="hidden" name="chk" value="one">
  
  <%
    Class.forName("com.mysql.cj.jdbc.Driver");
  Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/ttdb","root",com.timetable.pass.get());
  Statement stmt=conn.createStatement();
  ResultSet rs=stmt.executeQuery("select * from faculty_details order by fid;");
  
	rs.last();
	int cn=rs.getRow();
	
	if(request.getParameter("chk2")!= null)
	{
		PreparedStatement ps = conn.prepareStatement("insert into faculty_details values(?,?,?,?,?,?,?,?,?,?,?,?)");
		ps.setInt(1,Integer.parseInt(request.getParameter("fid")));
		ps.setString(2,request.getParameter("fabbr"));
		ps.setString(3,request.getParameter("fname"));
		ps.setString(4,request.getParameter("sub1"));
		ps.setString(5,request.getParameter("sub2"));
		ps.setString(6,request.getParameter("sub3"));
		ps.setString(7,request.getParameter("sub4"));
		ps.setString(8,request.getParameter("sub5"));
		ps.setString(9,request.getParameter("sub6"));
		ps.setString(8,request.getParameter("sub7"));
		ps.setString(9,request.getParameter("sub8"));
		ps.setInt(10,Integer.parseInt(request.getParameter("fload")));
		ps.executeUpdate();
		response.sendRedirect("facmodify.jsp?scr="+request.getParameter("fabbr"));
	}
		
if(request.getParameter("chk")!= null)
{
	  //out.print(request.getParameterValues("del"));
	  String[] fid= request.getParameterValues("fid");
	  String[] fabbr= request.getParameterValues("fabbr");
	  String[] fname= request.getParameterValues("fname");
	  String[] sub1= request.getParameterValues("sub1");
	  String[] sub2= request.getParameterValues("sub2");
	  String[] sub3= request.getParameterValues("sub3");
	  String[] sub4= request.getParameterValues("sub4");
	  String[] sub5= request.getParameterValues("sub5");
	  String[] sub6= request.getParameterValues("sub6");
	  String[] sub7= request.getParameterValues("sub7");
	  String[] sub8= request.getParameterValues("sub8");
	  String[] load= request.getParameterValues("load");
	  String[] id= request.getParameterValues("id");
	  
	  if(request.getParameter("del") != null)
		{
			PreparedStatement psd = conn.prepareStatement("delete from faculty_details where fabbr='"+request.getParameter("del")+"'");
			psd.executeUpdate();
		}
	  for(int i=0;i<cn;i++)
	  {
		 if(!fid[i].isEmpty())
		 {
			PreparedStatement ps1 = conn.prepareStatement("update faculty_details set fid='"+fid[i]+"' where fabbr='"+id[i]+"'");
			ps1.executeUpdate();
		 }
		 if(!fname[i].isEmpty())
		 {
			PreparedStatement ps1 = conn.prepareStatement("update faculty_details set fname='"+fname[i]+"' where fabbr='"+id[i]+"'");
			ps1.executeUpdate();
		 }
		 if(!load[i].isEmpty())
		 {
			PreparedStatement ps1 = conn.prepareStatement("update faculty_details set `load`="+load[i]+" where fabbr='"+id[i]+"'");
			ps1.executeUpdate();
		 }
		 if(!sub1[i].isEmpty())
		 {
		 	if(sub1[i].equals("null")||sub1[i].equals(" "))
		 		sub1[i]="";
			PreparedStatement ps1 = conn.prepareStatement("update faculty_details set sub1='"+sub1[i]+"' where fabbr='"+id[i]+"'");
			ps1.executeUpdate();
		 }
		 if(!sub2[i].isEmpty())
		 {
		 	if(sub2[i].equals("null")||sub2[i].equals(" "))
		 		sub2[i]="";
			PreparedStatement ps1 = conn.prepareStatement("update faculty_details set sub2='"+sub2[i]+"' where fabbr='"+id[i]+"'");
			ps1.executeUpdate();
		 }
		 if(!sub3[i].isEmpty())
		 {
		 	if(sub3[i].equals("null")||sub3[i].equals(" "))
		 		sub3[i]="";
			PreparedStatement ps1 = conn.prepareStatement("update faculty_details set sub3='"+sub3[i]+"' where fabbr='"+id[i]+"'");
			ps1.executeUpdate();
		 }
		 if(!sub4[i].isEmpty())
		 {
		 	if(sub4[i].equals("null")||sub4[i].equals(" "))
		 		sub4[i]="";
			PreparedStatement ps1 = conn.prepareStatement("update faculty_details set sub4='"+sub4[i]+"' where fabbr='"+id[i]+"'");
			ps1.executeUpdate();
		 }
		 if(!sub5[i].isEmpty())
		 {
		 	if(sub5[i].equals("null")||sub5[i].equals(" "))
		 		sub5[i]="";
			PreparedStatement ps1 = conn.prepareStatement("update faculty_details set sub5='"+sub5[i]+"' where fabbr='"+id[i]+"'");
			ps1.executeUpdate();
		 }
		 if(!sub6[i].isEmpty())
		 {
		 	if(sub6[i].equals("null")||sub6[i].equals(" "))
		 		sub6[i]="";
			PreparedStatement ps1 = conn.prepareStatement("update faculty_details set sub6='"+sub6[i]+"' where fabbr='"+id[i]+"'");
			ps1.executeUpdate();
		 }
		 if(!sub7[i].isEmpty())
		 {
		 	if(sub7[i].equals("null")||sub7[i].equals(" "))
		 		sub7[i]="";
			PreparedStatement ps1 = conn.prepareStatement("update faculty_details set sub7='"+sub7[i]+"' where fabbr='"+id[i]+"'");
			ps1.executeUpdate();
		 }
		 if(!sub8[i].isEmpty())
		 {
		 	if(sub8[i].equals("null")||sub8[i].equals(" "))
		 		sub8[i]="";
			PreparedStatement ps1 = conn.prepareStatement("update faculty_details set sub8='"+sub8[i]+"' where fabbr='"+id[i]+"'");
			ps1.executeUpdate();
		 }
		 if(!fabbr[i].isEmpty())
		 {
			PreparedStatement ps1 = conn.prepareStatement("update faculty_details set fabbr='"+fabbr[i]+"' where fabbr='"+id[i]+"'");
			ps1.executeUpdate();
		 }
	  }
	  response.sendRedirect("facmodify.jsp");
  }
  rs.beforeFirst();
  
  //int cn=rs.getMetaData().getColumnCount();
  %>
   <br><br><br><br><br>
  <center>
  <table width="80%">
  <tr>
  	<th>FID</th>
  	<th>Abbreviation</th>
  	<th>Name</th>
  	<th>Sub1</th>
  	<th>Sub2</th>
  	<th>Sub3</th>
  	<th>Sub4</th>
  	<th>Sub5</th>
  	<th>Sub6</th>
  	<th>Sub7</th>
  	<th>Sub8</th>
  	<th>Load</th>
  	<th>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp</th>
  </tr>
  <%
  //int n;
  while(rs.next())
  {
	  //n=rs.getInt(1);
	  %>
	<tr id="<%=rs.getString(2)%>">
		<td><input type="text" name="fid"  placeholder="<%=rs.getString(1)%>" size="3"></td>
		<td><input type="text" name="fabbr"  placeholder="<%=rs.getString(2)%>" size="5"><input type="hidden" name="id" value="<%=rs.getString(2)%>"></td>
		<td><input type="text" name="fname"  placeholder="<%=rs.getString(3)%>" size="28"></td>
		<td><input type="text" name="sub1"  placeholder="<%=rs.getString(4)%>" size="5"></td>
		<td><input type="text" name="sub2"  placeholder="<%=rs.getString(5)%>" size="5"></td>
		<td><input type="text" name="sub3"  placeholder="<%=rs.getString(6)%>" size="5"></td>
		<td><input type="text" name="sub4"  placeholder="<%=rs.getString(7)%>" size="5"></td>
		<td><input type="text" name="sub5"  placeholder="<%=rs.getString(8)%>" size="5"></td>
		<td><input type="text" name="sub6"  placeholder="<%=rs.getString(9)%>" size="5"></td>
		<td><input type="text" name="sub7"  placeholder="<%=rs.getString(10)%>" size="5"></td>
		<td><input type="text" name="sub8"  placeholder="<%=rs.getString(11)%>" size="5"></td>
		<td><input type="text" name="load" placeholder="<%=rs.getString(12)%>" size="3"></td>
		<td><button style="color:red;" name="del" type="submit" value="<%=rs.getString(2)%>">&nbspx&nbsp</button></td>
	</tr>
   <%
  }
	%>
	<tr id="nnew">
		<td><input id="nabr" type="text" name="fid" size="3" form="f2" required></td>
		<td><input type="text" name="fabbr" size="5" form="f2" required></td>
		<td><input type="text" name="fname" size="28" form="f2"></td>
		<td><input type="text" name="sub1" size="5" form="f2"></td>
		<td><input type="text" name="sub2" size="5" form="f2"></td>
		<td><input type="text" name="sub3" size="5" form="f2"></td>
		<td><input type="text" name="sub4" size="5" form="f2"></td>
		<td><input type="text" name="sub5" size="5" form="f2"></td>
		<td><input type="text" name="sub6" size="5" form="f2"></td>
		<td><input type="text" name="sub7" size="5" form="f2"></td>
		<td><input type="text" name="sub8" size="5" form="f2"></td>
		<td><input type="text" name="fload" size="3" form="f2" required></td>
		<td><button style="color:green;" type="submit" form="f2">✓&nbsp</button><button style="color:red;" type="reset" form="f2">x</button></td>
	</tr>
  </table>
  </div>
  </form>
  <br><br><br><br>
  <%conn.close(); %>
</body>
</html>