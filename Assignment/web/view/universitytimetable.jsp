<%-- 
    Document   : universitytimetable
    Created on : Jun 7, 2022, 1:54:16 AM
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
            <h1>FPT University Academic Portal</h1>
        </div>
        <div>
            <a href="weeklyTimetable.jsp">Weekly Timetable</a>
        </div>
         <div>
            <h1>Select a course, then a group...</h1>
        </div>
        <div>
            <table border="1 solid black">
                <tr>
                    <th>Campus</th>
                    <th>Course</th>
                    <th>Group</th>       
                </tr>
                
            </table>
        </div>
        <div>
            <h1>
                ...then see student list(Export Data)
            </h1>
        </div>
        <div>
             <table border="1 solid black">
                <tr>
                    <th>No</th>
                    <th>Member</th>
                    <th>Code</th>
                    <th>SurName</th>   
                    <th>Middle Name</th> 
                    <th>Given Name</th> 
                </tr>
            </table>
        </div>
            
    </body>
</html>
