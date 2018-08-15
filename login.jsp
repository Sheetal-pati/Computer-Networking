<%@page import="java.io.*,java.util.*" %>
<body>
<%
    
  String str1=request.getParameter("t1");
  String str2=request.getParameter("t2");
  String site=new String("http://localhost:52948/WebApplication1/entryscreen.jsp");

  if(str1.equalsIgnoreCase("system") && str2.equals("emil_it"))
  {
    //out.println("<h3>Thankyou, you are VALID</h3>");
      response.setStatus(response.SC_MOVED_TEMPORARILY);
       response.setHeader("Location",site);
   }           
  else
  {
    out.println("<h3>INVALID CREDENTIALS</h3>");    
  }
%>
</body>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
<head>
    <title>PingPoller</title>
<h1><strong>DEPARTMENT OF IT, EMIL</strong></h1>
    <style>
        body{
	margin:0;
	padding: 0;
	background: url(datacenter.jpeg);
	background-size: cover;
	background-position: center;
	font-family: sans-serif;

}
h1{
	padding: 30px 35%;
	color: white;
	font-size: 30px;
	text-align: center;
	font-family: oswald;
}
.loginbox{
	width:320px;
	height:420px;
	background: #000;
	color:#fff;
	top:50%;
	left:50%;
	position: absolute;
	transform: translate(-50%,-50%);
	box-sizing: border-box;
	padding: 70px 30px;
        opacity: 0.75;
}
.loginicon{
	width: 100px;
	height: 100px;
	border-radius: 50%;
	position:absolute;
	top:-25px;
	left:calc(50% - 50px);


}
.loginbox p{
	margin: 0;
	padding: 0;
	font-weight: bold;

}
.loginbox input{
	width: 100%;
	margin-bottom: 20px;

}
.loginbox input[type="text"], input[type="password"]
{
	border: none;
	border-bottom: 1px solid #fff;
	background: transparent;
	outline: none;
	height: 40px;
	color: #fff;
	font-size: 16px;

}
.loginbox input[type="submit"]
{
	border: none;
	outline: none;
	background: #ffc107;
	color: #fff;
	font-size: 18px;
	border-radius: 10px;

}
.loginbox input[type="submit"]:hover
{
	cursor: pointer;
	background: #fb2525;
	color: #000;
}
.loginbox a{
    text-decoration: none;
	font-size: 12px;
	line-height: 20px;
	color: darkgrey;
	padding: 0 0 0 30%;

}
.loginbox a:hover
{
	color: #ffc107;

}
.hint{
    display:none;
}
.des{
    margin-top: 15px !important;
    transform: translateX(80px);
    font-size: 0.8rem;
    opacity: 0.8;
}
    </style>
    <body>
        <div class="loginbox">
            <img src="loginicon.jpeg" class= "loginicon">
            <form method="post"> 
                <h3
                <p>Username</p>
                <input type="text" name="t1" placeholder="Enter Username" required="">
                <p>Password</p>
                <input type="Password" name="t2" placeholder="Enter Password" required="">
                <input type="Submit" name="" value="Login">
                <a href="#">Forgot Password?</a><br>
                <p class="hint des">username-system<br>
                password-emil_it</p>
                </h3>
            </form>
        </div>
        <script>
            var fp=document.querySelector("a");
            var message=document.querySelector("hint");
            fp.addEventListener("click",function(){
                    message.classList.remove("hint");});  
        </script>
    </body>

</head>
</html>

