<%-- 
    Document   : detailAttendance
    Created on : Jun 7, 2022, 1:32:06 AM
    Author     : Admin
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="css/style.css" rel="stylesheet" type="text/css"/>
        <title>JSP Page</title>
    </head>
    <body>
        <div>
            <h1>Attendance in class ${requestScope.sessList[1].Group.getGroupName}</h1>
        </div>
        <div>
            <p>Attendance for ${requestScope.sessList[0].Group.getGroupName} with ${requestScope.sessList[0].Lecturer.getLecturerFirstName}+
                ${requestScope.sessList[0].Lecturer.getLecturerMiddleName}+${requestScope.sessList[0].Lecturer.getLecturerLastName} at slot ${requestScope.sessList[0].getSlot}
                on ${requestScope.sessList[0].getTeachDate} in room 1 at FU-HL </p>
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
                <c:forEach var="c" items="${requestScope.sessList}">
                    <tr>
                        <td></td>
                        <td></td>
                        <td>${c.Student.roleNumber}</td>
                    </tr>
                </c:forEach>
            </table>
        </div>
            <div><input type="submit" value="edit"/></div>
            <div><input type="submit" value="cancel"/></div>
        </form>
        
    </body>
</html>
