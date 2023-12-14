<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Login Processed</title>
    <script>
        function alertAndRedirect(message, loginPage) {
            alert(message);
            window.location.href = loginPage;
        }
    </script>
</head>
<body>
    <%
        String name = request.getParameter("name");
        String password = request.getParameter("password");

        String nameValue = "Manohar";
        String passwordValue = "123456";

        boolean isAuthenticated = name.equals(nameValue)&& password.equals(passwordValue);
        if (isAuthenticated) {
    %>
            <script>
                alert("Login Successful!");
            </script>
    
    <%
        }else if{
    %>
            <script>
            	alertAndRedirect("Please give correct username and password !!!", "userlogin.html");
            </script>
    <%
        }
    %>
</body>
</html>

