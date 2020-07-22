<%@ page import = "java.io.*,java.util.*,java.sql.*"%>
<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html>

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="initial-scale=1.0">
  <title>Subject Modify</title>
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
  <form action="submodify.jsp" method="post" id="f2">
  <input type="hidden" name="chk2" value="one">  
  </form>
  <form action="submodify.jsp" method="post">
  <br>
  <div>
 
  <!-- <button class="_button" style="margin: 7px 0 0 1.82943%;"><a href="#nnew" style="color:white; padding:10px 26px 10px 26px;">Add New</a></button> -->
  <input type="button" onclick="document.getElementById('nabr').focus();" style="margin: 7px 0 0 1.82943%;" class="_button" value="Add New"/>
  <input type="submit" style="position:fixed; float: right; margin: 3.8% 0 0 76.5%;" class="_button" value="Apply" />
   <input type="reset" style="position:fixed; float: right; margin: 3.8% 0 0 86.68%;" class="_button" value="Reset"/>
  <input type="hidden" name="chk" value="one">
  
  <%
    Class.forName("com.mysql.cj.jdbc.Driver");
  Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/ttdb","root",com.timetable.pass.get());
  Statement stmt=conn.createStatement();
  ResultSet rs=stmt.executeQuery("select * from sub_details order by sem;");
  
	rs.last();
	int cn=rs.getRow();
	
	if(request.getParameter("chk2")!= null)
	{
		PreparedStatement ps = conn.prepareStatement("insert into sub_details values(?,?,?,?,?,?)");
		
		ps.setString(1,request.getParameter("sbabbr"));
		ps.setString(2,request.getParameter("sbname"));
		ps.setInt(3,Integer.parseInt(request.getParameter("code")));
		ps.setInt(4,Integer.parseInt(request.getParameter("sem")));
		ps.setInt(5,Integer.parseInt(request.getParameter("nlec")));
		ps.setInt(6,Integer.parseInt(request.getParameter("nlab")));
		ps.executeUpdate();
		response.sendRedirect("submodify.jsp?scr="+request.getParameter("sbabbr"));
	}
		
if(request.getParameter("chk")!= null)
{
	  //out.print(request.getParameterValues("del"));
	  String[] sbabbr= request.getParameterValues("sbabbr");
	  String[] sbname= request.getParameterValues("sbname");
	  String[] code= request.getParameterValues("code");
	  String[] sem= request.getParameterValues("sem");
	  String[] nlec= request.getParameterValues("nlec");
	  String[] nlab= request.getParameterValues("nlab");
	  String[] id= request.getParameterValues("id");
	  
	  if(request.getParameter("del") != null)
		{
			PreparedStatement psd = conn.prepareStatement("delete from sub_details where sbabbr='"+request.getParameter("del")+"'");
			psd.executeUpdate();
			
		}
	  for(int i=0;i<cn;i++)
	  {
		 if(!sbname[i].isEmpty())
		 {
			PreparedStatement ps1 = conn.prepareStatement("update sub_details set sbname='"+sbname[i]+"' where sbabbr='"+id[i]+"'");
			ps1.executeUpdate();
		 }
		 if(!code[i].isEmpty())
		 {
		 	if(code[i].equals("null")||code[i].equals(" "))
		 		code[i]="";
			PreparedStatement ps1 = conn.prepareStatement("update sub_details set code='"+code[i]+"' where sbabbr='"+id[i]+"'");
			ps1.executeUpdate();
		 }
		 if(!sem[i].isEmpty())
		 {
		 	if(sem[i].equals("null")||sem[i].equals(" "))
		 		sem[i]="";
			PreparedStatement ps1 = conn.prepareStatement("update sub_details set sem='"+sem[i]+"' where sbabbr='"+id[i]+"'");
			ps1.executeUpdate();
		 }
		 if(!nlec[i].isEmpty())
		 {
		 	if(nlec[i].equals("null")||nlec[i].equals(" "))
		 		nlec[i]="";
			PreparedStatement ps1 = conn.prepareStatement("update sub_details set nlec='"+nlec[i]+"' where sbabbr='"+id[i]+"'");
			ps1.executeUpdate();
		 }
		 if(!nlab[i].isEmpty())
		 {
		 	if(nlab[i].equals("null")||nlab[i].equals(" "))
		 		nlab[i]="";
			PreparedStatement ps1 = conn.prepareStatement("update sub_details set nlab='"+nlab[i]+"' where sbabbr='"+id[i]+"'");
			ps1.executeUpdate();
		 }
		 if(!sbabbr[i].isEmpty())
		 {
			PreparedStatement ps1 = conn.prepareStatement("update sub_details set sbabbr='"+sbabbr[i]+"' where sbabbr='"+id[i]+"'");
			ps1.executeUpdate();
		 }
	  }
	  response.sendRedirect("submodify.jsp");
  }
  rs.beforeFirst();
  
  //int cn=rs.getMetaData().getColumnCount();
  %>
   <br><br><br><br><br>
  <center>
  <table width="80%">
  <tr>
  	<th>Abbrevation</th>
  	<th>Subject Name</th>
  	<th>Subject Code</th>
  	<th>Sem</th>
  	<th>No. of Lec</th>
  	<th>No. of Labs</th>
  	<th>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp</th>
  </tr>
  <%
  //int n;
  while(rs.next())
  {
	  //n=rs.getInt(1);
	  %>
	<tr id="<%=rs.getString(1)%>">
		<td><input type="text" name="sbabbr"  placeholder="<%=rs.getString(1)%>" size="10"><input type="hidden" name="id" value="<%=rs.getString(1)%>"></td>
		<td><input type="text" name="sbname"  placeholder="<%=rs.getString(2)%>" size="43"></td>
		<td><input type="text" name="code"  placeholder="<%=rs.getString(3)%>" size="7"></td>
		<td><input type="text" name="sem"  placeholder="<%=rs.getString(4)%>" size="7"></td>
		<td><input type="text" name="nlec"  placeholder="<%=rs.getString(5)%>" size="7"></td>
		<td><input type="text" name="nlab"  placeholder="<%=rs.getString(6)%>" size="7"></td>
		<td><button style="color:red;" name="del" type="submit" value="<%=rs.getString(1)%>">&nbspx&nbsp</button></td>
	</tr>
   <%
  }
	%>
	<tr id="nnew">
		<td><input id="nabr" type="text" name="sbabbr" size="10" form="f2" required></td>
		<td><input type="text" name="sbname" size="43" form="f2" required></td>
		<td><input type="text" name="code" size="7" form="f2" required></td>
		<td><input type="text" name="sem" size="7" form="f2" required></td>
		<td><input type="text" name="nlec" size="7" form="f2" required></td>
		<td><input type="text" name="nlab" size="7" form="f2" required></td>
		<td><button style="color:green;" type="submit" form="f2">✓&nbsp</button><button style="color:red;" type="reset" form="f2">x</button></td>
	</tr>
  </table>
  </div>
  </form>
  <br><br><br><br>
  <%conn.close(); %>
</body>
</html>