<%@ page import = "java.io.*,java.util.*,java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
        String usrname=request.getParameter("usrname");
        String pass=request.getParameter("pass");
       
        if(usrname.equals("admin") && pass.equals("admin"))
            {
            session.setAttribute("usrname",usrname);
            response.sendRedirect("afterlogin.jsp");
            }
        else if(usrname.equals("%setpassword%"))
    		{
        		com.timetable.pass.set(pass);
        		response.sendRedirect("front.jsp");
    		}
        else if(usrname.equals("%resetdbase%") && pass.equals(com.timetable.pass.get()))
		{
        	Class.forName("com.mysql.cj.jdbc.Driver");
    		Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/ttdb","root",pass);
    		Statement stmt=conn.createStatement();
    		com.timetable.engine.resetdatabase(stmt);
    		response.sendRedirect("admlogin.jsp");
		}
        else
        {
        	request.setAttribute("usrname",usrname);
        	RequestDispatcher rd=request.getRequestDispatcher("admlogin.jsp");
            rd.forward(request,response);
        }
        %>
    </body>
</html>