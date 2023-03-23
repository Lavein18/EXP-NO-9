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
