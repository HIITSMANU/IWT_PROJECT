<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Signup Processed</title>
    <script>
        function alertAndRedirect(message, signupPage) {
            alert(message);
            window.location.href = signupPage;
        }
    </script>
</head>
<body>
    <%
        String name = request.getParameter("name");
        String qualification = request.getParameter("qualification");
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        String confirmPassword = request.getParameter("confirm-password");

        // Simulate static authentication (check if passwords match)
        String nameValue = "Manohar";
        String qualificationValue = "Btech";
        String emailValue = "manohar@123";
        String passwordValue = "123456";
        String conpasswordValue = "123456";
        boolean isAuthenticated = name.equals(nameValue) && qualification.equals(qualificationValue) && email.equals(emailValue) && password.equals(passwordValue) && confirmPassword.equals(conpasswordValue);

        if (isAuthenticated) {
    %>
             <script>
                alert("Signup Successful!");
            </script>
    <%
        } else if (!password.equals(conpasswordValue)) {
    %>
    		<script>
                alertAndRedirect("Passwords do not match. Please write the correct password.", "signup.html");
            </script>
    <%
        } else {
    %>
            <script>
                alertAndRedirect("Authentication failed, try again !!!", "signup.html");
            </script>
    <%
        }
    %>
</body>
</html>