<html>
<head>
</head>
<body background="bg1.jpg">
<%@ page import="java.sql.*"%>
<%@ page import="java.lang.*"%>
<%@ page import="oracle.jdbc.driver.*"%>
<%@ page import="oracle.sql.*"%>
<%
String name=request.getParameter("uname");
String pass=request.getParameter("pass");
String email=request.getParameter("email");
String pno=request.getParameter("pno");
%>
<%
try{
Class.forName("oracle.jdbc.driver.OracleDriver");
Connection con=null;
con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","praveen","akshaya");
Statement st=con.createStatement();
String s="insert into sahayak values('"+name+"','"+pass+"','"+email+"','"+pno+"')";
ResultSet rs=st.executeQuery(s);
out.println("<h1>HAI  "+name+"  YOU HAVE REGISTERED SUCCESSFULLY</h1>");
con.close();
}
catch(Exception e){
out.println("exception is due to:"+e);
}
%>
</body>
</html>