<%-- 
    Document   : login
    Created on : Jun 6, 2022, 9:24:30 PM
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
        <form action="login" method="Post" >
            <div>
                Username<input type="text" name="txtUsername"  ></input>
            </div>
             <div>
                Password<input type="text" name="txtPassword"  ></input>
            </div>
            <div>
                <input type="checkbox" name="remember" />
                <label>Remember</label>
            </div>
            <button>Login</button>
            <a href="signup.jsp">New Account?</a>
        </form>
    </body>
</html>
