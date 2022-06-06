<%-- 
    Document   : signup
    Created on : Jun 6, 2022, 9:45:34 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Create new Account</h1>
        <form action="signup" method="Post">
            <div>
                Username<input type="text" name="txtUsername" />
            </div>
            <div>
                Password<input type="text" name="txtPassword" />
            </div>
            <div>
                Confirm Password<input type="text" name="txtConfirmPassword" />
            </div>
            <button>Sign Up</button>
            <a href="login.jsp" >Back</a>
        </form>
    </body>
</html>
