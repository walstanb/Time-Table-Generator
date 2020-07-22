<%@ page import = "java.io.*,java.util.*,java.sql.*"%>
<%@ page import = "javax.servlet.http.*,javax.servlet.*" %>

<!DOCTYPE html>
<html>
<head>
</head>
<body>

<%
    Class.forName("com.mysql.cj.jdbc.Driver");
  Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/ttdb","root",com.timetable.pass.get());
  Statement stmt=conn.createStatement();
  String yr = request.getParameter("year");

  ResultSet rs1=stmt.executeQuery("select * from yr"+yr+"dv3 where slot like '%SUB' order by slot;");
  
  int i=1;
  String[][] sub=new String[20][20];
  while(rs1.next())
  {
    for(int j=1;j<=6;j++)
      sub[i][j]=(rs1.getString(j+1));
    if(i==2)
    	i=4;
    i++;
  }
  
  ResultSet rs2=stmt.executeQuery("select * from yr"+yr+"dv3 where slot like '%FAC' order by slot;");
  i=1;
  String[][] fac=new String[20][20];
  while(rs2.next())
  {
    for(int j=1;j<=6;j++)
      fac[i][j]=(rs2.getString(j+1));
    if(i==2)
    	i=4;
    i++;
  }

  ResultSet rs4=stmt.executeQuery("select * from yr"+yr+"dv3 where slot like '%LAB' order by slot;");
  i=1;
  String[][] lab=new String[20][20];
  while(rs4.next())
  {
    for(int j=1;j<=6;j++)
      lab[i][j]=(rs4.getString(j+1));
    i++;
  }

  ResultSet rs3=stmt.executeQuery("select * from yr"+yr+"dv3 where slot REGEXP '[ABCD]FAC' order by slot;");
  i=1;
  String[][] lfac=new String[20][20];
  while(rs3.next())
  {
    for(int j=1;j<=6;j++)
      lfac[i][j]=(rs3.getString(j+1));
    i++;
  }
%>
<table>
  <tr>
    <th width="4%">Slot</th>
    <th width="9%">Time/Day</th>
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
    <td><% out.print(fac[1][1]);%></td>
    </tr>
    </table>
      
    </td>
     <td>
    <table class="innr">
    <tr>
    <td><% out.print(sub[1][2]);%></td>
    <td><% out.print(fac[1][2]);%></td>
    </tr>
    
    </table>
    
    </td>
         <td>
    <table class="innr">
    <tr>
    <td><% out.print(sub[1][3]);%></td>
    <td><% out.print(fac[1][3]);%></td>
    </tr>
    
    </table>
    
    </td> <td>
    <table class="innr">
    <tr>
    <td><% out.print(sub[1][4]);%></td>
    <td><% out.print(fac[1][4]);%></td>
    </tr>
    
    </table>
    
    </td> <td>
    <table class="innr">
    <tr>
    <td><% out.print(sub[1][5]);%></td>
    <td><% out.print(fac[1][5]);%></td>
    </tr>
    
    </table>
    
    </td>
    
    <td>
    <table class="innr">
    <tr>
    <td><% out.print(sub[1][6]);%></td>
    <td><% out.print(fac[1][6]);%></td>
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
    <td><% out.print(fac[2][1]);%></td>
    </tr>
    
    </table>
    
    </td> <td>
    <table class="innr">
    <tr>
    <td><% out.print(sub[2][2]);%></td>
    <td><% out.print(fac[2][2]);%></td>
    </tr>
    
    </table>
    
    </td> <td>
    <table class="innr">
    <tr>
    <td><% out.print(sub[2][3]);%></td>
    <td><% out.print(fac[2][3]);%></td>
    </tr>
    
    </table>
    
    </td> <td>
    <table class="innr">
    <tr>
    <td><% out.print(sub[2][4]);%></td>
    <td><% out.print(fac[2][4]);%></td>
    </tr>
    
    </table>
    
    </td> <td>
    <table class="innr">
    <tr>
    <td><% out.print(sub[2][5]);%></td>
    <td><% out.print(fac[2][5]);%></td>
    </tr>
    
    </table>
    
    </td> <td>
    <table class="innr">
    <tr>
    <td><% out.print(sub[2][6]);%></td>
    <td><% out.print(fac[2][6]);%></td>
    </tr>
    
    </table>
    
    </td>
  </tr>

<tr>
  <td colspan="8" align="center"> 
   <%
    if(yr.equals("3")||yr.equals("4"))
      out.print("15 min");
    else
      out.print("45 min");
  %>
  </td>
  </tr>

  <tr>

  <td height="91">3</td>
    <td>
        <%
    if(yr.equals("3")||yr.equals("4")){
      %>12:15-1:15<%
      }else{
        %>12:45-1:45<%
      } %>
    </td>
    <td rowspan="2">
      <table class="innr" width="139">
        <tr>
          <td width="67">faculty</td>
            <td width="60" colspan="2">lab</td>
        </tr>
        <tr>
        <td><% out.print(lab[1][1]);%></td>
        <td>A</td>
        <td><% out.print(lfac[1][1]);%></td>
        </tr>
        <tr>
        <td><% out.print(lab[2][1]);%></td>
        <td>B</td>
        <td><% out.print(lfac[2][1]);%></td>
        </tr>
         <tr>
        <td><% out.print(lab[3][1]);%></td>
        <td>C</td>
        <td><% out.print(lfac[3][1]);%></td>
        </tr>
        <tr>
        <td><% out.print(lab[4][1]);%></td>
        <td>D</td>
        <td><% out.print(lfac[4][1]);%></td>
        </tr>
        </table>
    </td>
    <td rowspan="2"><table class="innr">
      <tr>
        <td width="64">faculty</td>
        <td width="60" colspan="2">lab</td>
      </tr>
      <tr>
        <td><% out.print(lab[1][2]);%></td>
        <td>A</td>
        <td><% out.print(lfac[1][2]);%></td>
      </tr>
      <tr>
        <td><% out.print(lab[2][2]);%></td>
        <td>B</td>
        <td><% out.print(lfac[2][2]);%></td>
      </tr>
      <tr>
        <td><% out.print(lab[3][2]);%></td>
        <td>C</td>
        <td><% out.print(lfac[3][2]);%></td>
      </tr>
      <tr>
        <td><% out.print(lab[4][2]);%></td>
        <td>D</td>
        <td><% out.print(lfac[4][2]);%></td>
      </tr>
    </table></td>
    <td rowspan="2"><table class="innr">
      <tr>
        <td width="64">faculty</td>
        <td width="60" colspan="2">lab</td>
      </tr>
      <tr>
        <td><% out.print(lab[1][3]);%></td>
        <td>A</td>
        <td><% out.print(lfac[1][3]);%></td>
      </tr>
      <tr>
        <td><% out.print(lab[2][3]);%></td>
        <td>B</td>
        <td><% out.print(lfac[2][3]);%></td>
      </tr>
      <tr>
        <td><% out.print(lab[3][3]);%></td>
        <td>C</td>
        <td><% out.print(lfac[3][3]);%></td>
      </tr>
      <tr>
        <td><% out.print(lab[4][3]);%></td>
        <td>D</td>
        <td><% out.print(lfac[4][3]);%></td>
      </tr>
    </table></td>
    <td rowspan="2">
    <table class="innr">
      <tr>
        <td width="64">faculty</td>
        <td width="60" colspan="2">lab</td>
      </tr>
      <tr>
        <td><% out.print(lab[1][4]);%></td>
        <td>A</td>
        <td><% out.print(lfac[1][4]);%></td>
      </tr>
      <tr>
        <td><% out.print(lab[2][4]);%></td>
        <td>B</td>
        <td><% out.print(lfac[2][4]);%></td>
      </tr>
      <tr>
        <td><% out.print(lab[3][4]);%></td>
        <td>C</td>
        <td><% out.print(lfac[3][4]);%></td>
      </tr>
      <tr>
        <td><% out.print(lab[4][4]);%></td>
        <td>D</td>
        <td><% out.print(lfac[4][4]);%></td>
      </tr>
    </table></td><td rowspan="2"><table class="innr">
      <tr>
        <td width="64">faculty</td>
        <td width="60" colspan="2">lab</td>
      </tr>
      <tr>
        <td><% out.print(lab[1][5]);%></td>
        <td>A</td>
        <td><% out.print(lfac[1][5]);%></td>
      </tr>
      <tr>
        <td><% out.print(lab[2][5]);%></td>
        <td>B</td>
        <td><% out.print(lfac[2][5]);%></td>
      </tr>
      <tr>
        <td><% out.print(lab[3][5]);%></td>
        <td>C</td>
        <td><% out.print(lfac[3][5]);%></td>
      </tr>
      <tr>
        <td><% out.print(lab[4][5]);%></td>
        <td>D</td>
        <td><% out.print(lfac[4][5]);%></td>
      </tr>
    </table></td><td rowspan="2">
      <table class="innr">
        <tr>
          <td>faculty</td>
            <td width="50" colspan="2">lab</td>
          </tr>
        <tr>
        <td><% out.print(lab[1][6]);%></td>
        <td>A</td>
        <td><% out.print(lfac[1][6]);%></td>
        </tr>
        <tr>
        <td><% out.print(lab[2][6]);%></td>
        <td>B</td>
        <td><% out.print(lfac[2][6]);%></td>
        </tr>
         <tr>
        <td><% out.print(lab[3][6]);%></td>
        <td>C</td>
        <td><% out.print(lfac[3][6]);%></td>
        </tr>
        <tr>
        <td><% out.print(lab[4][6]);%></td>
        <td>D</td>
        <td><% out.print(lfac[4][6]);%></td>
        </tr>
        </table>
    </td>
  </tr>
  <tr>
    <td height="68">4</td>
   <td>
     <%
    if(yr.equals("3")||yr.equals("4")){
      %> 1:15-2:15 <%
      }else{
        %> 1:45-2:45 <%
      } %>
    </td>
   
  </tr>
  <tr>
  <td colspan="8" align="center"> 
  <%
    if(yr.equals("3"))
      out.print("45 min");
    else
      out.print("15 min");
  %>
  </td>
  </tr>
  <tr>
    <td>5</td>
    <td> 3:00-4:00 </td>
     <td>
    <table class="innr">
    <tr>
    <td><% out.print(sub[5][1]);%></td>
    <td><% out.print(fac[5][1]);%></td>
    </tr>
    
    </table>
    
    </td> <td>
    <table class="innr">
    <tr>
    <td><% out.print(sub[5][2]);%></td>
    <td><% out.print(fac[5][2]);%></td>
    </tr>
    
    </table>
    
    </td> <td>
    <table class="innr">
    <tr>
    <td><% out.print(sub[5][3]);%></td>
    <td><% out.print(fac[5][3]);%></td>
    </tr>
    
    </table>
    
    </td> <td>
    <table class="innr">
    <tr>
    <td><% out.print(sub[5][4]);%></td>
    <td><% out.print(fac[5][4]);%></td>
    </tr>
    
    </table>
    
    </td> <td>
    <table class="innr">
    <tr>
    <td><% out.print(sub[5][5]);%></td>
    <td><% out.print(fac[5][5]);%></td>
    </tr>
    
    </table>
    
    </td> <td>
    <table class="innr">
    <tr>
    <td><% out.print(sub[5][6]);%></td>
    <td><% out.print(fac[5][6]);%></td>
    </tr>
    
    </table>
    
    </td>
  </tr>
  <tr>
    <td>6</td>
    <td> 4:00-5:00 </td>
    <td>
    <table class="innr">
    <tr>
    <td><% out.print(sub[6][1]);%></td>
    <td><% out.print(fac[6][1]);%></td>
    </tr>
    
    </table>
    
    </td> <td>
    <table class="innr">
    <tr>
    <td><% out.print(sub[6][2]);%></td>
    <td><% out.print(fac[6][2]);%></td>
    </tr>
    
    </table>
    
    </td> <td>
    <table class="innr">
    <tr>
    <td><% out.print(sub[6][3]);%></td>
    <td><% out.print(fac[6][3]);%></td>
    </tr>
    
    </table>
    
    </td> <td>
    <table class="innr">
    <tr>
    <td><% out.print(sub[6][4]);%></td>
    <td><% out.print(fac[6][4]);%></td>
    </tr>
    
    </table>
    
    </td> <td>
    <table class="innr">
    <tr>
    <td><% out.print(sub[6][5]);%></td>
    <td><% out.print(fac[6][5]);%></td>
    </tr>
    
    </table>
    
    </td> <td>
    <table class="innr">
    <tr>
    <td><% out.print(sub[6][6]);%></td>
    <td><% out.print(fac[6][6]);%></td>
    </tr>
    </table>
    </td>  
  </tr>
</table>

</body>
</html>
