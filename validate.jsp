<html>
<head>
</head>
<body background="bg1.jpg">
<%@ page import="java.sql.*"%>
<%@ page import="java.lang.*"%>
<%@ page import="oracle.jdbc.driver.*"%>
<%@ page import="oracle.sql.*"%>
<%
int count=0;
String name=request.getParameter("uname");
String pass=request.getParameter("pass");
try{
Class.forName("oracle.jdbc.driver.OracleDriver");
Connection con=null;
con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","praveen","akshaya");
Statement st=con.createStatement();
String s="select * from sahayak";
ResultSet rs=st.executeQuery(s);
while(rs.next()){
String s1=rs.getString("name");
String s2=rs.getString("password");
if(name.equals(s1)&&pass.equals(s2))
{ out.println("<h1>Hai "+name+" you are an Registered User</h1>");
  count=1;
  break;
}
}
if(count==0)
  out.println("<h1>PLEASE REGISTER TO LOGIN</h1>");
con.close();
}
catch(Exception e){
out.println("exception is due to:"+e);
}
%>
</body>
</html>