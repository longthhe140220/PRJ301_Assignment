<%-- 
    Document   : attendance
    Created on : Jul 18, 2022, 10:40:00 PM
    Author     : Admin
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <title>JSP Page</title>
    </head>
    <body>
        <div>
            <h1>Attendance Activity</h1>
        </div>
        <form action="attend" method="post" >
            <div>
            <table class="table">
                <tr>
                    <th scope="col">No</th>
                    <th scope="col">Group</th>
                    <th scope="col">Code</th>
                    <th scope="col">Student name</th>
                    <th scope="col">Present</th>
                    <th scope="col">Absent</th>
                    <th scope="col">Comment</th>
                    <th scope="col">Teacher</th>
                </tr>
                <%! int count = 0; %>
                
                <c:forEach var="c" items="${requestScope.sessList}">
                    <tr>
                        <td><%= count + 1%></td>
                        <td>${c.group.groupName}</td>
                        <input type="hidden" name="studentID<%= count + 1 %>" value="${c.student.studentID}"/>
                        <input type="hidden" name="sessionID" value="${c.sessionID}"/>
                        <td>${c.student.roleNumber}</td>
                        <td>${c.student.firstName} ${c.student.middleName} ${c.student.lastName}</td>
                        <td><input type="radio"   name="attend<%= count + 1 %>" value="present"/>Present</td>
                        <td><input type="radio" checked name="attend<%= count + 1 %>" value="absent"/>Absent</td>
                        <input type="hidden" name="index" value="<%= count + 1 %>"/>
                        <td></td>
                        <td>${c.lecturer.lecturerFirstName}
                ${c.lecturer.lecturerMiddleName} ${c.lecturer.lecturerLastName}</td>                    
                    </tr>
                     <% count += 1; %>
               </c:forEach>
            </table>
        </div>
        <div class="text-center">
            <input class="btn btn-primary" type="submit" value="Save"/>
        </div>
        </form>
    </body>
</html>
