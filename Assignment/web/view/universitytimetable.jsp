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
                <tr>
                    <td>FU-HL</td>
                    <td>
                        <table>
                            <tr><td><a href="">Data Structures and Algorithms Using Java(CSD201)</a></td></tr>
                            <tr><td><a href="">Introduction to Computing(CSI101)</a></td></tr>
                            <tr><td><a href="">Introduction to Computing for Business(CSI102)</a></td></tr>
                            <tr><td><a href="">Introduction to Databases(DBI201)</a></td></tr>
                            <tr><td><a href="">Data Warehousing Fundamentals(DBW301)</a></td></tr>
                            <tr><td><a href="">Digital Fundamentals(DGT201)</a></td></tr>
                            <tr><td><a href="">Digital Signal Processing(DGT301)</a></td></tr>
                            <tr><td><a href="">Basic Micro Economics(ECO111)</a></td></tr>
                            <tr><td><a href="">English 1 - Top Notch Fundamental(ENT001)</a></td></tr>
                            <tr><td><a href="">English 2 - Top Notch 1(ENT101)</a></td></tr>
                            <tr><td><a href="">English 3 - Top Notch 2(ENT201)</a></td></tr>
                            <tr><td><a href="">English 4 - Top Notch 3(ENT301)</a></td></tr>
                            <tr><td><a href="">English 5 - Summit 1(ENT401)</a></td></tr>     
                        </table>
                    </td>
                    <td>
                        <table>
                            <tr>
                                <td><a href="">SE1500</a></td>
                                <td><a href="">SE1501</a></td>
                                <td><a href="">SE1502</a></td>
                                <td><a href="">SE1503</a></td>
                            </tr>
                            <tr>
                                <td><a href="">SE1504</a></td>
                                <td><a href="">SE1505</a></td>
                                <td><a href="">SE1506</a></td>
                                <td><a href="">SE1507</a></td>
                            </tr>
                        </table>
                    </td>
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
                    <th>Code</th>
                    <th>SurName</th>   
                    <th>Middle Name</th> 
                    <th>Given Name</th> 
                </tr>
                <tr>
                    <td>1</td>
                    <td>HE1000</td>
                    <td>Vũ</td>
                    <td>Minh</td>
                    <td>Chu</td>
                </tr>
                <tr>
                    <td>2</td>
                    <td>HE1001</td>
                    <td>Ma</td>
                    <td>Quang</td>
                    <td>Đức</td>
                </tr>
                <tr>
                    <td>3</td>
                    <td>HE1002</td>
                    <td>Dương</td>
                    <td>Diễm</td>
                    <td>Quỳnh</td>
                </tr>
                <tr>
                    <td>4</td>
                    <td>HE1003</td>
                    <td>Phan</td>
                    <td>Thảo</td>
                    <td>Anh</td>
                </tr>
                <tr>
                    <td>5</td>
                    <td>HE1004</td>
                    <td>Ngô</td>
                    <td>Nguyệt</td>
                    <td>Ánh</td>
                </tr>
                <tr>
                    <td>6</td>
                    <td>HE1005</td>
                    <td>Ngô</td>
                    <td>An</td>
                    <td>Dương</td>
                </tr>
                <tr>
                    <td>7</td>
                    <td>HE1006</td>
                    <td>Lưu</td>
                    <td>Thu</td>
                    <td>Hiền</td>
                </tr>
                <tr>
                    <td>8</td>
                    <td>HE1007</td>
                    <td>Nguyễn</td>
                    <td>Tuấn</td>
                    <td>Kiệt</td>
                </tr>
                <tr>
                    <td>9</td>
                    <td>HE1008</td>
                    <td>Đỗ</td>
                    <td>Thanh</td>
                    <td>Loan</td>
                </tr>
                <tr>
                    <td>10</td>
                    <td>HE1009</td>
                    <td>Nguyễn</td>
                    <td>Phương Thảo</td>
                    <td>Ly</td>
                </tr>
                <tr>
                    <td>11</td>
                    <td>HE1010</td>
                    <td>Nguyễn </td>
                    <td>Hoàng</td>
                    <td>Tùng</td>
                </tr>
                <tr>
                    <td>12</td>
                    <td>HE1011</td>
                    <td>Đàm</td>
                    <td>Minh</td>
                    <td>Vũ</td>
                </tr>
                <tr>
                    <td>13</td>
                    <td>HE1012</td>
                    <td>Nguyễn</td>
                    <td>Thị Hải</td>
                    <td>Yến</td>
                </tr>
                <tr>
                    <td>14</td>
                    <td>HE1013</td>
                    <td>Chu</td>
                    <td>Bảo</td>
                    <td>Khánh</td>
                </tr>
                <tr>
                    <td>15</td>
                    <td>HE1014</td>
                    <td>Vũ</td>
                    <td>Hồng</td>
                    <td>Quyên</td>
                </tr>
                <tr>
                    <td>16</td>
                    <td>HE1015</td>
                    <td>Đinh</td>
                    <td>Ngọc Anh</td>
                    <td>Thư</td>
                </tr>
                <tr>
                    <td>17</td>
                    <td>HE1016</td>
                    <td>Nguyễn</td>
                    <td>Thị Thu</td>
                    <td>Trang</td>
                </tr>
                <tr>
                    <td>18</td>
                    <td>HE1017</td>
                    <td>Lương</td>
                    <td>Thị Hoàng</td>
                    <td>Yến</td>
                </tr>
                
                <tr>
                    <td>19</td>
                    <td>HE1018</td>
                    <td>Nguyễn</td>
                    <td>Ngọc</td>
                    <td>Diệp</td>
                </tr>
                <tr>
                    <td>20</td>
                    <td>HE1019</td>
                    <td>Hà </td>
                    <td>Minh</td>
                    <td>Tú</td>
                </tr>
                
                <tr>
                    <td>21</td>
                    <td>HE1020</td>
                    <td>Hồ </td>
                    <td>Anh</td>
                    <td>Tuấn</td>
                </tr>
                <tr>
                    <td>22</td>
                    <td>HE1021</td>
                    <td>Nguyễn</td>
                    <td>Mai</td>
                    <td>Hương</td>
                </tr>
                
                <tr>
                    <td>23</td>
                    <td>HE1022</td>
                    <td>Nguyễn</td>
                    <td>Nhật</td>
                    <td>Đăng</td>
                </tr>
                <tr>
                    <td>24</td>
                    <td>HE1023</td>
                    <td>Đỗ </td>
                    <td>Đức</td>
                    <td>Anh</td>
                </tr>
                <tr>
                    <td>25</td>
                    <td>HE1024</td>
                    <td>Lưu</td>
                    <td>Quốc</td>
                    <td>Anh</td>
                </tr>
                <tr>
                    <td>26</td>
                    <td>HE1025</td>
                    <td>Trần</td>
                    <td>Quỳnh</td>
                    <td>Anh</td>
                </tr>
                <tr>
                    <td>27</td>
                    <td>HE1026</td>
                    <td>Nguyễn</td>
                    <td>Ngọc Linh</td>
                    <td>Linh</td>
                </tr>
                <tr>
                    <td>28</td>
                    <td>HE1027</td>
                    <td>Phạm</td>
                    <td>Thanh</td>
                    <td>Long</td>
                </tr>
                <tr>
                    <td>29</td>
                    <td>HE1028</td>
                    <td>Hoàng</td>
                    <td>Mai</td>
                    <td>Phương</td>
                </tr>
                <tr>
                    <td>30</td>
                    <td>HE1029</td>
                    <td>Lưu</td>
                    <td>Thanh</td>
                    <td>Tiến</td>
                </tr>
            </table>
        </div>
            
    </body>
</html>
