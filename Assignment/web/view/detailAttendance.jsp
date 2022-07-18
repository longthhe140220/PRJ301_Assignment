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
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <link href="css/style.css" rel="stylesheet" type="text/css"/>
        <title>JSP Page</title>
    </head>
    <body>
        <div>
            <h1 class="display-4">Attendance in class ${requestScope.attList[0].group.groupName} </h1>
        </div>
        <div>
            <h1>Attendance for ${requestScope.attList[0].group.groupName} with ${requestScope.attList[0].lecturer.lecturerFirstName}
                ${requestScope.attList[0].lecturer.lecturerMiddleName} ${requestScope.attList[0].lecturer.lecturerLastName}
                at slot ${requestScope.attList[0].session.slot}
                on ${requestScope.attList[0].session.teachDate} in room ${requestScope.attList[0].room.roomCode} at ${requestScope.attList[0].room.campus} </h1>
        </div>
      
            <div>
            <table class="table">
                <tr>
                    <th scope="col">No</th>
                    <th scope="col">Group</th>
                    <th scope="col">Code</th>
                    <th scope="col">Student name</th>
                    <th scope="col">Status</th>
                    <th scope="col">Comment</th>
                    <th scope="col">Teacher</th>
                    <th scope="col">Record Time</th>
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
                <div class="text-center">
                    <a class="btn btn-primary" href="updateAttendance?id=${requestScope.attList[0].session.sessionID}">Edit</a>          
                    <a class="btn btn-primary" href="weeklyTimetable" >Cancel</a>
                </div>
            
      
        
    </body>
</html>
