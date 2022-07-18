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
            <h1>Attendance in class ${requestScope.attList[0].group.groupName} </h1>
        </div>
        <div>
            <p>Attendance for ${requestScope.attList[0].group.groupName} with ${requestScope.attList[0].lecturer.lecturerFirstName}
                ${requestScope.attList[0].lecturer.lecturerMiddleName} ${requestScope.attList[0].lecturer.lecturerLastName}
                at slot ${requestScope.attList[0].session.slot}
                on ${requestScope.attList[0].session.teachDate} in room ${requestScope.attList[0].room.roomCode} at ${requestScope.attList[0].room.campus} </p>
        </div>
      
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
                <%! int count = 0; %>
                <c:forEach var="c" items="${requestScope.attList}">
                    <tr>
                        <td><%= count + 1 %></td>
                        <td>${c.group.groupName}</td>
                        <td>${c.student.roleNumber}</td>
                        <td>${c.student.firstName} ${c.student.middleName} ${c.student.lastName}</td>
                        <td>${c.absent?"Present":"Absent"}</td>
                        <td></td>
                        <td>${c.lecturer.lecturerFirstName}
                ${c.lecturer.lecturerMiddleName} ${c.lecturer.lecturerLastName}</td>
                        <td>${c.session.teachDate}</td>
                    </tr>
                     <% count += 1; %>
                </c:forEach>
               
            </table>
        </div>
            <a  href="updateAttendance?id=${requestScope.attList[0].session.sessionID}">Edit</a>          
            <a href="weeklyTimetable" >Cancel</a>
      
        
    </body>
</html>
