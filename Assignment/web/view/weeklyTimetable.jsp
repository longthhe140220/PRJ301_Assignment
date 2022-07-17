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
        <title>JSP Page</title>
        <script>
            function getDate(obj){
                var options = obj.children;         
                var html1 = '';
                var html2 = '';
                var html3 = '';
                var html4 = '';
                var html5 = '';
                var html6 = '';
                var html7 = '';
                
                
                for (var i = 0; i < options.length; i++){
                    if (options[i].selected){
                        html1 += '<th>'+(LocalDate)options[i].value.+'</th>';
                        html2 += '<th>'+options[i].value+'</th>';
                        html3 += '<th>'+options[i].value+'</th>';
                        html4 += '<th>'+options[i].value+'</th>';
                        html5 += '<th>'+options[i].value+'</th>';
                        html6 += '<th>'+options[i].value+'</th>';
                        html7 += '<th>'+options[i].value+'</th>';
                    }
                }
 
                document.getElementById('monday').innerHTML = html1;
                document.getElementById('tuesday').innerHTML = html2;
                document.getElementById('wednesday').innerHTML = html3;
                document.getElementById('thursday').innerHTML = html4;
                document.getElementById('friday').innerHTML = html5;
                document.getElementById('saturday').innerHTML = html6;
                document.getElementById('sunday').innerHTML = html7;
            }
        </script>
            
    </head>
    <body>
        <h1>FPT University Academic Portal</h1>
        <a href="universityTimetable.jsp">University Timetable</a>
        <div>
            Lecturer: <select name="lecturerID">
                <c:forEach items="${requestScope.lecturerList}" var="c">
                    <option value="${c.lecturerID}">${c.lecturerFirstName} ${c.lecturerMiddleName} ${c.lecturerLastName}</option>
                </c:forEach>
            </select>
            <input type="submit" value="Search" />
        </div>
            
        <table border ="1px solid black">
            <thead>
                <tr>
                    <th></th>
                    <th>Monday</th>
                    <th>Tuesday</th>
                    <th>Wednesday</th>
                    <th>Thursday</th>
                    <th>Friday</th>
                    <th>Saturday</th>
                    <th>Sunday</th>
                </tr>
                <tr>
                    <th>
                        <select name="date" onchange="getDate(this)">
                                    <c:forEach var="d" items="${requestScope.dateList}">
                                        <option onclick="" value="${d}" >${d} To ${d.plusDays(7)}</option>
                                    </c:forEach>
                        </select>
                    </th>
                    <th id="monday"></th>
                    <th id="tuesday"></th>
                    <th id="wednesday"></th>
                    <th id="thursday"></th>
                    <th id="friday"></th>
                    <th id="saturday"></th>
                    <th id="sunday"></th>
                    
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>Slot1</td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td> 
                </tr>
                <tr>
                    <td>Slot2</td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                </tr>
                <tr>
                    <td>Slot3</td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                </tr>
                <tr>
                    <td>Slot4</td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                </tr>
                <tr>
                    <td>Slot5</td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                </tr>
                <tr>
                    <td>Slot6</td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                </tr>
                <tr>
                    <td>Slot7</td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                </tr>
                <tr>
                    <td>Slot8</td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                </tr>
            </tbody>
        </table>
    </body>
</html>
