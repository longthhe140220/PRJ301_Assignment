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
                        let parts = options[i].value.toString().split('-');
                        let date = new Date(parts[0],parts[1],parts[2]);
                        let dateResult1 = new Date();
                        dateResult1.setDate(date.getDate() + 1);
                         let dateResult2 = new Date();
                        dateResult2.setDate(date.getDate() + 2);
                         let dateResult3 = new Date();
                        dateResult3.setDate(date.getDate() + 3);
                         let dateResult4 = new Date();
                        dateResult4.setDate(date.getDate() + 4);
                         let dateResult5 = new Date();
                        dateResult5.setDate(date.getDate() + 5);
                         let dateResult6 = new Date();
                        dateResult6.setDate(date.getDate() + 6);
                        html1 += '<th value='+date+'>'+date.getDate()+'/'+date.getMonth()+'</th>';
                        html2 += '<th>'+dateResult1.getDate()+'/'+dateResult1.getMonth()+'</th>';
                        html3 += '<th>'+dateResult2.getDate()+'/'+dateResult2.getMonth()+'</th>';
                        html4 += '<th>'+dateResult3.getDate()+'/'+dateResult3.getMonth()+'</th>';
                        html5 += '<th>'+dateResult4.getDate()+'/'+dateResult4.getMonth()+'</th>';
                        html6 += '<th>'+dateResult5.getDate()+'/'+dateResult5.getMonth()+'</th>';
                        html7 += '<th>'+dateResult6.getDate()+'/'+dateResult6.getMonth()+'</th>';
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
                                        <option value="${d}" >${d} To ${d.plusDays(6)}</option>
                                    </c:forEach>
                        </select>
                    </th>
                    
                    <th id="monday" ></th>
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
                    <td></td>
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
    </body>
</html>
