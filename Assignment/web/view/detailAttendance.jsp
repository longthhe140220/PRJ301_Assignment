<%-- 
    Document   : detailAttendance
    Created on : Jun 7, 2022, 1:32:06 AM
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
        <div>
            <h1>Attendance in class</h1>
        </div>
        <div>
            <p>Attendance for class with lecturer teacher at slot 
                on time, semester in room room at FU-HL </p>
        </div>
        <form action="attendance" method="post" >
            <div>
            <table border="1 solid black">
                <tr>
                    <th>No</th>
                    <th>Group</th>
                    <th>Code</th>
                    <th>Student name</th>
                    <th>Status</th>
                    <th>Comment</th>
                    <th>Teacher</th>
                    <th>Record Time</th>
                </tr>
            </table>
        </div>
            <div><input type="submit" name="edit"/></div>
            <div><input type="submit" name="cancel"/></div>
        </form>
        
    </body>
</html>
