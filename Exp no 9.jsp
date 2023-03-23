Creating Jdbc Connection And Displaying Students

<html> 
<head> 
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1"> 
<title>Students</title> 
</head> 
<body>
</body>
<form method="post">
<table border="2">
<tr>
<td>StudentId</td>
<td>Fname</td>
<td>Lname</td>
<td>Age</td>
<td>Department</td>
</tr>
<form method="post"> 
<table border="2"> 
<tr> 
<td>StudentId</td>
<td>Fname</td> 
<td>Lname</td> 
<td>Age</td>
<td>Department</td> 
</tr> 
<% 
try { 
Class.forName("com.mysql.jdbc.Driver");
String url="jdbc:mysql://localhost/test";
String username="root";
String password="root";
String query="select * from jsp1";
Connection conn=DriverManager.getConnection(url,username,password);
Statement stmt=conn.createStatement();
ResultSet rs=stmt.executeQuery(query);
while(rs.next()){
%>
<tr>
<td>
<%=rs.getInt("StudentId")
%>
</td>
<td>
<%=rs.getString("Fname")
%>
</td>
<td>
<%=rs.getString("Lname")
%>
</td>
<td>
<%=rs.getString("Age") 
%>
</td>
<td>
<%=rs.getString("Department") 
%>
</td>
</tr>
<% } %>
</table> 
<% rs.close();
stmt.close();
conn.close();
}
catch(Exception e)
{
e.printStackTrace();
}
%>
</form>
</html>

Average age

int total = 18+21+24;
    int avg = (total)/3;
    int percent = avg;
    String Age="";

Department with Highest Number of Students 
<%
        int dept1= Integer.parseInt(request.getParameter("t1"));
        int dept2= Integer.parseInt(request.getParameter("t2"));
        int dept3= Integer.parseInt(request.getParameter("t3"));
    %>
    <h1>Department with Highest Number of Students is:</h1>
    <%
        if ((dept1>dept2) && (dept1>dept3))
            out.println(dept1);
        else if (dept2>dept3)
            out.println(dept2);
        else
            out.println(dept3);
    %>

