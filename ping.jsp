<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="newpackage.NewClass" %>
<body>
<%  
    String S1=request.getParameter("S1");
    String b= request.getParameter("b");
    String b1 =request.getParameter("b1");
    String m=request.getParameter("m");
    String site=new String("http://localhost:52948/WebApplication1/graph.jsp");
     NewClass obj=new NewClass();
    if("Test".equals(b))
    {  
try
{
   Class.forName("org.apache.derby.jdbc.ClientDriver");
   Connection con = DriverManager.getConnection("jdbc:derby://localhost:1527/PingData", "PingPoller", "PingPoller");
   PreparedStatement ps = con.prepareStatement("SELECT * FROM LINK_MASTER");
   ResultSet rs = ps.executeQuery(); 
        %>
        <img src="loading.gif" style="width: 100px" style="height:100px">
        <a>Processing...</a>
        <h5>Click View Details-->Regular to check recent updates</h5>
        <%
    while(rs.next())
    {
        String link=rs.getString("LINK_ID");
        String isp=rs.getString("ISP_NAME");
        obj.Ping(S1,link,isp); 
}
}
catch(Exception e)
{
    
}     
         }
    else if("Stop".equals(b))
        {
          obj.Stop();      
        }
   
else if("Regular".equals(b1))
    {
      %>

<table align="center" top="30px" >
    <h4 align="center" left="250px"><font><strong>PING</strong></font></h4>
<tr>
<tr bgcolor="#727272">
<th><b>LINK_ID</b></th>   
<th><b>DOWNDATE</b></th>
<th><b>DOWNTIME</b></th>
<th><b>UPDATE</b></th>
<th><b>UPTIME</b></th>
<th><b>DURATION</b></th>
</tr><br>
<%
try{ 
   Class.forName("org.apache.derby.jdbc.ClientDriver");
   Connection con = DriverManager.getConnection("jdbc:derby://localhost:1527/PingData", "PingPoller", "PingPoller");
   Statement statement=con.createStatement();
   String sql ="SELECT * FROM PING";
   ResultSet resultSet = statement.executeQuery(sql);
   while(resultSet.next()){
%>

<tr>
<td><%=resultSet.getString("link_id") %></td>  
<td><%=resultSet.getString("down_date") %></td>
<td><%=resultSet.getString("down_time") %></td>
<td><%=resultSet.getString("up_date") %></td>
<td><%=resultSet.getString("up_time") %></td>
<td><%=resultSet.getString("duration") %></td>
</tr><br>

<% 
}

} catch (Exception e)
{
  e.printStackTrace();
}
}
else if("Graphical".equals(b1))
{
    response.setStatus(response.SC_MOVED_TEMPORARILY);
       response.setHeader("Location",site);
}

else if("Up details".equals(b1))
{
%>

<table align="center" top="30px" >
    <h4 align="center" left="250px"><font><strong>Monthly Uptime Percent</strong></font></h4>
<tr>
<tr bgcolor="#727272">
<th><b>MONTH</b></th>   
<th><b>ISP</b></th>
<th><b>UPTIME</b></th>
<th><b>UPTIME PERCENT</b></th>
</tr><br>
<%
try{ 
   Class.forName("org.apache.derby.jdbc.ClientDriver");
   Connection con = DriverManager.getConnection("jdbc:derby://localhost:1527/PingData", "PingPoller", "PingPoller");
   Statement statement=con.createStatement();
   String sql ="SELECT * FROM PERCENTAGE_UPTIME";
   ResultSet resultSet = statement.executeQuery(sql);
   while(resultSet.next()){
%>

<tr>
<td><%=resultSet.getString("month") %></td>  
<td><%=resultSet.getString("isp") %></td>
<td><%=resultSet.getString("uptime") %></td>
<td><%=resultSet.getString("uptime_percent") %></td>
</tr><br>

<% 
}

} catch (Exception e) {
e.printStackTrace();
}


}
else if("Down details".equals(b1))
{
%>
 
<table align="center" top="30px" >
    <h4 align="center" left="250px"><font><strong>Monthly View:Summary</strong></font></h4>
<tr>
<tr bgcolor="#727272">
<th><b>MONTH</b></th>   
<th><b>ISP</b></th>
<th><b>LINK ID</b></th>
<th><b>TOTAL</b></th>
</tr><br>
<%
try{ 
   Class.forName("org.apache.derby.jdbc.ClientDriver");
   Connection con = DriverManager.getConnection("jdbc:derby://localhost:1527/PingData", "PingPoller", "PingPoller");
   Statement statement=con.createStatement();
   String sql ="SELECT * FROM DOWNTIME_SUMMARY";
   ResultSet resultSet = statement.executeQuery(sql);
   while(resultSet.next()){
%>

<tr>
<td><%=resultSet.getString("month") %></td>  
<td><%=resultSet.getString("isp") %></td>
<td><%=resultSet.getString("link_id") %></td>
<td><%=resultSet.getString("total") %></td>
</tr><br>

<% 
}

} catch (Exception e) {
e.printStackTrace();
}


}

%>
</table>
   </body>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>PingPoller</title>
	<style>
		body{
	margin:0;
	padding: 20px;
	background: url(datacenter.jpeg);
	background-size:cover;
    background-position:center;
    font-family: oswald;
}
form{
    backgroud-color:#000;
	color:#fff;
	top:30%;
	left:20%;
	position: absolute;
	transform: translate(-50%,-50%);
	padding: 0px;
	font-size: 30px;
	font-weight: bold;
}
input{
	width: 100%;
	border-radius:5px;
	font-weight: bold;
        margin-top:5px;
        padding:10px;
        font-size: 15px;
        background:black;
	color:#fff;
        opacity: 0.65;
       

}


input [type="Submit"]
{
	border: none;
	outline: none;
	
	


}
 input[type="Submit"]:hover
{       
	cursor: pointer;
	background:#7dabf2;
	color: #fff;
        opacity: 0.8;
}
p{
       
	font-size: 24px;
}
table{
    top:60px;
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
  transform:translate(200px,90px);
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
select{
    width:100%;
    font-size:20px;
    padding:10px;
    background:#000;
    color: #fff;
    opacity: 0.65;
}
div ul{
    list-style: none;
     margin-top:5px;
        font-size: 15px;
        text-align: center;
        margin-left: -20%;
        font-family: oswald;
}
div ul li{
       border: none;
	outline: none;
	padding:10px;
	border-radius:5px;
	font-weight: bold;
        width: 91%;
        background:#000;
        color: #fff;
        opacity: 0.65;
}
div ul li:hover{
        cursor: pointer;
	background:#7dabf2;
	color: #fff;
        opacity: 0.8;
}
div ul ul{
    display: none;
    margin-left:75%;
    top: 190px;
    position: absolute;
    width: 67%;

}
div ul li:hover>ul{
    display: block;
}
div ul ul ul{
    margin-left:50%;
    top:38px;
    display: none;
    position: absolute;
    
}
div ul ul li:hover>ul{
    display: block;
}

div ul ul ul ul{
    margin-left: 47%;
    top:-5px;
    display: none;
    position: absolute;
    
}
div ul ul ul li:hover>ul{
    display: block;
}
div select{
    margin-left:43%;
    top: 50px;
    position: absolute;
    display: none;
}
.rarrow{
    position: absolute;
    font-size: 10px;
    right: -2px;
    
}
img{
    position: relative;
    left: 50%;
    opacity: 0.65;
}
a{
    position: relative;
    left: 43%;
    top: 30px;
    color: white;
    font-size: 22px;
    font-family:oswald;
}
h5{
    position: relative;
    left: 43%;
    color: white;
    top: 35px;
}
div input{
    border: none;
    padding:0;
}

	</style>
   </head>
	<body>
            

		
            <form method="post">
                  <%

try
{
Class.forName("org.apache.derby.jdbc.ClientDriver");
   Connection con = DriverManager.getConnection("jdbc:derby://localhost:1527/PingData", "PingPoller", "PingPoller");
PreparedStatement ps = con.prepareStatement("SELECT * FROM LINK_MASTER");
ResultSet rs = ps.executeQuery(); 
%>
               
                        <p>SELECT LINK ID:</p>
                        <select name="S1">
                                               
                                <%
    while(rs.next())
    {
        String link=rs.getString("LINK_ID");
        String ip=rs.getString("IP_ADDRESS");
        %>
        
        <option value="<%=ip %>"><%=link %></option>
        
<%
}
}
catch(Exception e)
{
    
}
    
 %>
</select><br>
                        
                        <input type="Submit" name="b" value="Test">
			<input type="Submit" name="b" value="Stop">
                        <div>
                            <ul> 
                                <li>View Details<span class="rarrow">&#9654</span>
                                    <ul>
                                        <li><input type="submit" name="b1" value="Regular"></li>
                                    <li>Monthly<span class="rarrow">&#9654</span>
                                        <ul>
                                        <li>Tabular<span class="rarrow">&#9654</span>
                                            <ul>
                                            <li><input type="submit" name="b1" value="Up details"></li>
                                            <li><input type="submit" name="b1" value="Down details"></li>
                                        </ul>
                                    </li>
                                        <li><input type="submit" name="b1" value="Graphical"></li>
                                        <ul>
                                            <%

try
{
Class.forName("org.apache.derby.jdbc.ClientDriver");
   Connection con = DriverManager.getConnection("jdbc:derby://localhost:1527/PingData", "PingPoller", "PingPoller");
PreparedStatement ps = con.prepareStatement("SELECT * FROM DOWNTIME_SUMMARY");
ResultSet rs = ps.executeQuery(); 
%>
                                        
                                        <select name="m">
                                            <%
    while(rs.next())
    {
        String month=rs.getString("MONTH");
        %>
        
        <option value="<%=month%>"><%=month%></option>
        
<%
}
}
catch(Exception e)
{
    
}
    
 %>
                                                
                                        </select>
                                        </ul>
                                    </ul>
                                </li>
                                </ul>
                            </li>
                            </ul>
                        </div>
            </form>
        </body>
</html>