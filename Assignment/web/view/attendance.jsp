<%-- 
    Document   : attendance
    Created on : Jun 7, 2022, 1:38:37 AM
    Author     : Admin
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <div>
            <h1>Attendance Activity</h1>
        </div>
        <form action="attendance" method="post" >
            <div>
            <table border="1 solid black">
                <tr>
                    <th>No</th>
                    <th>Group</th>
                    <th>Code</th>
                    <th>Student name</th>
                    <th>Present</th>
                    <th>Absent</th>
                    <th>Comment</th>
                    <th>Teacher</th>
                </tr>
                <%! int count = 0; %>
                
                <c:forEach var="c" items="${requestScope.attList}">
                    <tr>
                        <td><%= count + 1%></td>
                        <td>${c.group.groupName}</td>
                        <input type="hidden" name="studentID<%= count + 1 %>" value="${c.studentID}"/>
                        <input type="hidden" name="sessionID" value="${c.sessionID}"/>
                        <td>${c.student.roleNumber}</td>
                        <td>${c.student.firstName} ${c.student.middleName} ${c.student.lastName}</td>
                        <td><input type="radio" ${c.absent?"checked=\"checked\"":""} name="attend<%= count + 1 %>" value="present"/>Present</td>
                        <td><input type="radio" ${!c.absent?"checked=\"checked\"":""} name="attend<%= count + 1 %>" value="absent"/>Absent</td>
                        <input type="hidden" name="index" value="<%= count + 1 %>"/>
                        <td></td>
                        <td>${c.lecturer.lecturerFirstName}
                ${c.lecturer.lecturerMiddleName} ${c.lecturer.lecturerLastName}</td>                    
                    </tr>
                     <% count += 1; %>
               </c:forEach>
            </table>
        </div>
        <div><input type="submit" value="Save"/></div>
        </form>
    </body>
</html>
