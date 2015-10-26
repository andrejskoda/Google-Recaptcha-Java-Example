<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="com.journaldev.utils.STokenUtils" %>

<%
  String siteKey = "6LcvTg8TAAAAAEQXiHS9YlxCvkxCU8c66UNZ-eDe";
  String siteSecret = "6LcvTg8TAAAAAD3EJFoMI1YdMlQ6-PC3gp84nP4W";
%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login</title>
        <script src='//www.google.com/recaptcha/api.js'></script>
    </head>
    <body>
        <form action="LoginServlet" method="post">

		Username: <input type="text" name="user"> <br> 
                Password: <input type="password" name="pwd"> <br>
                <div class="g-recaptcha" 
                     data-sitekey="<%=siteKey%>"
                     data-stoken="<%=STokenUtils.createSToken(siteSecret)%>">
                </div>
		<br> <input type="submit" value="Login">
	</form>
    </body>
</html>
