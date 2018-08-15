<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>PingPoller</title>
    <h1><strong>Entry Screen</strong></h1>
        <style>
       
  body{
	margin:0;
	padding: 0;
	background: url(datacenter.jpeg);
	background-size: cover;
        background-position:center;
        font-family: oswald;


       }
a{      
	color:white;
	text-align: center;
	margin-top: 80px;
	margin-left: 44%;
        
}
a:hover{
        
        color:#3704f2;
}
.loginbox{
	width:320px;
	height:500px;
	background: #000;
	color:#fff;
	top:55%;
	left:20%;
	position: absolute;
	transform: translate(-50%,-50%);
	box-sizing: border-box;
	padding: 70px 30px;
        opacity:0.75;
        border-radius: 5px;
        border: 1px solid #fff;
}

input[type="text"]
{
	border: none;
	border-bottom: 2px solid #fff;
	background: transparent;
	outline: none;
	height: 16px;
	color: #fff;
	font-size: 16px;
	width: 100%;

}
p{
	padding: 10px;
	margin: 0px;
	width: 100%;
	text-align: center;
        opacity:1;
}
h1{
	color: #fff;
	font-family: oswald;
	font-size: 50px;
	text-align: center;
        text-decoration:underline;

}
input[type="submit"]
{
	border: none;
	outline: none;
	background: #ffc107;
	color: #fff;
	font-size: 18px;
	border-radius: 20px;
	width: 100%;
	margin-bottom: 20px;
	padding: 2px;
        opacity:1;
   
}
 input[type="submit"]:hover
{
	cursor: pointer;
	background: #fb2525;
	color: #000;
         box-shadow: 2px 4px #cc9292;
}
table{
    top: 30px;
    position:relative;
    left:200px;
    background-color:#e1e7f2;
    color:white;
    opacity: 0.7;
}
th{
     padding:10px;
    font-weight:700;
    text-decoration: underline;
    border-bottom:1px solid black;
    border-right:1px solid black;
    margin:2px;
    background: black;
    opacity: 0.7;

}
h4{
  transform:translate(180px,80px);
  text-decoration:underline;
  color:#fff;
  
}
td{
    padding:10px;
    border-bottom:1px solid black;
    border-right:1px solid black;
    margin:2px;
    color:black;
}
input[value="SAVE"]
{
    margin: 0px;
    position: relative;
    border:1px solid #fff;
    width: 7%;
    left: 82%;
    top: 92px;
    padding:10px;
    background:#000;
    color: #fff;
    opacity: 0.6;
    border-radius: 5px;
    
}
input[value="SAVE"]:hover
{
    cursor: pointer;
	background:#7dabf2;
	color: #000;
        opacity: 0.8;
        box-shadow: none;
        
}
        </style>
    
    <body>
        <a href="http://localhost:52948/WebApplication1/ping.jsp"><u>Click here to Ping</u></a>
		<div class="loginbox">
		<form method="post" action="http://localhost:52948/WebApplication1/entryscreen.jsp">
                <input type="submit" name="b" value="View Existing Details">
                <p><strong> Location Id</strong></p>
		<input type="text" name="s1"  placeholder="">
                <p><strong> Unit Name</strong></p>
		<input type="text" name="s2" placeholder="">
                <p><strong> ISP Name</strong></p>
		<input type="text" name="s3" placeholder="">
                <p><strong> Link Id</strong></p>
		<input type="text" name="s4" placeholder=""><br>
		<p><strong>IP</strong></p>
		<input type="text" name="s5" placeholder="">
		<input type="submit" style="margin-top:10px;" name="b" value="Add Details">
                <input type="submit" style="margin-top:10px;" name="b" value="Delete Details">
		
        </form>
        </div>
        
    </body>
</head>
</html>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.io.*,java.util.*" %>
<html>
<body>
<%
    
  String b=request.getParameter("b");
  
  if("View Existing Details".equals(b))
  {
      %>

<table align="center" top="30px">
    <h4 align="center"><font><strong>LINK MASTER</strong></font></h4>
    <input type="submit" value="SAVE">
    <tr>
        <tr bgcolor="#727272">
        <th><b>LOCATION ID</b></th>
        <th><b>UNITNAME</b></th>
        <th><b>ISP</b></th>
        <th><b>IP_ADDRESS</b></th>
        <th><b>LINK ID</b></th>
</tr><br>
<%
try{ 
    Class.forName("org.apache.derby.jdbc.ClientDriver");
   Connection con = DriverManager.getConnection("jdbc:derby://localhost:1527/PingData", "PingPoller", "PingPoller");

 Statement statement=con.createStatement();
String sql ="SELECT * FROM LINK_MASTER";

ResultSet resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>

<tr>
    <td contenteditable="true"><%=resultSet.getString("location_id") %></td>
    <td contenteditable="true"><%=resultSet.getString("unit_name") %></td>
    <td contenteditable="true"><%=resultSet.getString("isp_name") %></td>
    <td contenteditable="true"><%=resultSet.getString("ip_address") %></td>
    <td contenteditable="true"><%=resultSet.getString("link_id") %></td>
</tr><br>

<% 
}

} catch (Exception e) {
e.printStackTrace();
}
  }
%>
</table>
<%
  String str1=request.getParameter("s1");
  String str2=request.getParameter("s2");
  String str3=request.getParameter("s3");
  String str4=request.getParameter("s4");
  String str5=request.getParameter("s5");
  String b1=request.getParameter("b");
  if ("Add Details".equals(b))
       {
  if(str1.equals("")||str2.equals("")||str3.equals("")||str4.equals("")||str5.equals(""))
  {
      out.println("enter all the fields to be added");
  }
  else
  {
       
           try{
   Class.forName("org.apache.derby.jdbc.ClientDriver");
   Connection con = DriverManager.getConnection("jdbc:derby://localhost:1527/PingData", "PingPoller", "PingPoller");
 
           PreparedStatement st=con.prepareStatement("insert into LINK_MASTER(LOCATION_ID,UNIT_NAME,ISP_NAME,LINK_ID,IP_ADDRESS) values('"+str1+"','"+str2+"','"+str3+"','"+str4+"','"+str5+"')");
           int i=st.executeUpdate();
           out.println("Added Successfully.Click view details to see updation");
       }
            catch(Exception e)
  {
     System.out.print(e);
        e.printStackTrace(); 
  }
  }
  }
  if("Delete Details".equals(b))
  {
      if(str4.equals(""))
      {
          out.println("Enter link id of the row you want to delete");
      }
      else
      {
        try
        {
           Class.forName("org.apache.derby.jdbc.ClientDriver");
           Connection con = DriverManager.getConnection("jdbc:derby://localhost:1527/PingData", "PingPoller", "PingPoller");
           String sql="DELETE FROM LINK_MASTER WHERE LINK_ID= '"+str4+"'";
           PreparedStatement st=con.prepareStatement(sql);
           st.executeUpdate();
           out.println("Deletion Successful.Click view details to see updation");
        }
        catch(Exception e)
        {
           System.out.print(e);
           e.printStackTrace(); 
        }
          
      }
  }
  
%>
</body>
</html>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

