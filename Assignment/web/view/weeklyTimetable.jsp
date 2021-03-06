<%-- 
    Document   : weeklyTimtable
    Created on : Jun 9, 2022, 12:38:06 AM
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
        <script>
            function formSubmit() {
                document.getElementById("theForm").submit();
            }
        </script>

    </head>
    <body>
        <h1>FPT University Academic Portal</h1>
        <div>
            <form action="searchByLecturer" method="post">
                <div class="input-group col-3"> 
                <h2>Lecturer: </h2>
                <select class="custom-select" name="lecturerID">
                    <c:forEach items="${requestScope.lecturerList}" var="c">
                        <option <c:if test="${c.lecturerID eq requestScope.lecturerSelected}">selected="selected"</c:if>
                                                                                              value="${c.lecturerID}">${c.lecturerFirstName} ${c.lecturerMiddleName} ${c.lecturerLastName}</option>
                    </c:forEach>
                </select>
                <input type="submit" value="Search" class="btn btn-primary"/>
                </div>   
            </form>
        </div>
        <form id="theForm" action="weeklyTimetable" method="post">
            <table class="table">
                <thead>
                    <tr>
                        <th></th>
                        <th scope="col">Monday</th>
                        <th scope="col">Tuesday</th>
                        <th scope="col">Wednesday</th>
                        <th scope="col">Thursday</th>
                        <th scope="col">Friday</th>
                        <th scope="col">Saturday</th>
                        <th scope="col">Sunday</th>
                    </tr>    
                <input type="hidden" name="lecturerID" value="${requestScope.lecturerSelected}"/>
                </thead>
                <tbody>
                    <tr>
                        <td>
                            <div class="input-group mb-3">                                             
                            <select class="custom-select" name="date" onchange="formSubmit()">
                                <c:forEach var="d" items="${requestScope.dateList}">
                                    <option  <c:if test="${d eq requestScope.localDate}">selected="selected"</c:if>
                                            value="${d}" >${d} To ${d.plusDays(6)}</option>
                                </c:forEach>
                            </select>
                            </div></td>
                            <c:forEach items="${requestScope.currentDateOfWeek}" var="d">
                            <td>${d}</td>
                        </c:forEach>
                    </tr>
                    <c:forEach var="s" items="${requestScope.slotList}">
                        <tr>
                            <td>${s.slotCode}</td>
                            <c:forEach var="d" items="${requestScope.currentDateOfWeek}">
                                <td>
                                    <a <c:forEach var="c" items="${requestScope.sessList}" >
                                            <c:if test="${c.slot eq s.slotID and c.teachDate.toLocalDate() eq d}">
                                                <c:if test="${c.status eq true}">href="details?id=${c.sessionID}"</c:if>
                                                <c:if test="${c.status eq false}">href="attend?id=${c.sessionID}"</c:if>
                                                > ${c.group.groupName}<br/>-${c.subject.subjectCode}<br/>-at ${c.room.roomCode}
                                            </c:if>
                                        </c:forEach> </a><br/>
                                    <label> <c:forEach var="c" items="${requestScope.sessList}" >
                                            <c:if test="${c.slot eq s.slotID and c.teachDate.toLocalDate() eq d}">
                                                (${c.status?"Present":"Absent"})
                                            </c:if>
                                        </c:forEach></label>


                                </td>
                            </c:forEach>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
        </form>
    </body>
</html>
