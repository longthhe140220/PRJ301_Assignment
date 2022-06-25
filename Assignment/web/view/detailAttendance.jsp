<%-- 
    Document   : detailAttendance
    Created on : Jun 7, 2022, 1:32:06 AM
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
            <h1>Attendance in class SE1500</h1>
        </div>
        <div>
            <p>Attendance for SE1500 with Lưu Trường Giang at slot 1
                on 2020-06-06 in room 1 at FU-HL </p>
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
                <tr>
                    <td>1</td>
                    <td>SE1500</td>
                    <td>HE1000</td>
                    <td>Vũ Minh Chi</td>
                    <td>Present</td>
                    <td></td>
                    <td>Lưu Trường Giang</td>
                    <td>2022-06-06</td>
                </tr>
                <tr>
                    <td>2</td>
                    <td>SE1500</td>
                    <td>HE1001</td>
                    <td>Ma Quang Đức</td>
                    <td>Present</td>
                    <td></td>
                     <td>Lưu Trường Giang</td>
                    <td>2022-06-06</td>
                </tr>
                <tr>
                    <td>3</td>
                    <td>SE1500</td>
                    <td>HE1002</td>
                    <td>Dương Diễm Quỳnh</td>
                    <td>Present</td>
                    <td></td>
                     <td>Lưu Trường Giang</td>
                    <td>2022-06-06</td>
                </tr>
                <tr>
                    <td>4</td>
                    <td>SE1500</td>
                    <td>HE1003</td>
                    <td>Phan Thảo Anh</td>
                    <td>Absent</td>
                    <td></td>
                     <td>Lưu Trường Giang</td>
                    <td>2022-06-06</td>
                </tr>
                <tr>
                    <td>5</td>
                    <td>SE1500</td>
                    <td>HE1004</td>
                    <td>Ngô Nguỵệt Ánh</td>
                    <td>Present</td>
                    <td></td>
                     <td>Lưu Trường Giang</td>
                    <td>2022-06-06</td>
                </tr>
                <tr>
                    <td>6</td>
                    <td>SE1500</td>
                    <td>HE1005</td>
                    <td>Ngô An Dương</td>
                    <td>Present</td>
                    <td></td>
                     <td>Lưu Trường Giang</td>
                    <td>2022-06-06</td>
                </tr>
                <tr>
                    <td>7</td>
                    <td>SE1500</td>
                    <td>HE1006</td>
                    <td>Lưu Thu Hiền</td>
                    <td>Present</td>
                    <td></td>
                     <td>Lưu Trường Giang</td>
                    <td>2022-06-06</td>
                </tr>
                <tr>
                    <td>8</td>
                    <td>SE1500</td>
                    <td>HE1007</td>
                    <td>Nguyễn Tuấn Kiệt</td>
                    <td>Present</td>
                    <td></td>
                     <td>Lưu Trường Giang</td>
                    <td>2022-06-06</td>
                </tr>
                <tr>
                    <td>9</td>
                    <td>SE1500</td>
                    <td>HE1008</td>
                    <td>Đỗ Thanh Loan</td>
                    <td>Present</td>
                    <td></td>
                     <td>Lưu Trường Giang</td>
                    <td>2022-06-06</td>
                </tr>
                <tr>
                    <td>10</td>
                    <td>SE1500</td>
                    <td>HE1009</td>
                    <td>Nguyễn Phương Thảo Ly</td>
                    <td>Present</td>
                    <td></td>
                     <td>Lưu Trường Giang</td>
                    <td>2022-06-06</td>
                </tr>
                <tr>
                    <td>11</td>
                    <td>SE1500</td>
                    <td>HE1010</td>
                    <td>Nguyễn Hoàng Tùng</td>
                    <td>Present</td>
                    <td></td>
                     <td>Lưu Trường Giang</td>
                    <td>2022-06-06</td>
                </tr>
                <tr>
                    <td>12</td>
                    <td>SE1500</td>
                    <td>HE1011</td>
                    <td>Đàm Minh Vũ</td>
                    <td>Absent</td>
                    <td></td>
                     <td>Lưu Trường Giang</td>
                    <td>2022-06-06</td>
                </tr>
                <tr>
                    <td>13</td>
                    <td>SE1500</td>
                    <td>HE1012</td>
                    <td>Nguyễn Thị Hải Yến </td>
                    <td>Present</td>
                    <td></td>
                     <td>Lưu Trường Giang</td>
                    <td>2022-06-06</td>
                </tr>
                <tr>
                    <td>14</td>
                    <td>SE1500</td>
                    <td>HE1013</td>
                    <td>Chu Bảo Khánh</td>
                    <td>Present</td>
                    <td></td>
                     <td>Lưu Trường Giang</td>
                    <td>2022-06-06</td>
                </tr>
                <tr>
                    <td>15</td>
                    <td>SE1500</td>
                    <td>HE1014</td>
                    <td>Vũ Hồng Quyên</td>
                    <td>Present</td>
                    <td></td>
                     <td>Lưu Trường Giang</td>
                    <td>2022-06-06</td>
                </tr>
                <tr>
                    <td>16</td>
                    <td>SE1500</td>
                    <td>HE1015</td>
                    <td>Đinh Ngọc Anh Thư</td>
                    <td>Present</td>
                    <td></td>
                     <td>Lưu Trường Giang</td>
                    <td>2022-06-06</td>
                </tr>
                <tr>
                    <td>17</td>
                    <td>SE1500</td>
                    <td>HE1016</td>
                    <td>Nguyễn Thị Thu Trang</td>
                    <td>Present</td>
                    <td></td>
                     <td>Lưu Trường Giang</td>
                    <td>2022-06-06</td>
                </tr>
                <tr>
                    <td>18</td>
                    <td>SE1500</td>
                    <td>HE1017</td>
                    <td>Lương Thị Hoàng Yến</td>
                    <td>Present</td>
                    <td></td>
                     <td>Lưu Trường Giang</td>
                    <td>2022-06-06</td>
                </tr>
                <tr>
                    <td>19</td>
                    <td>SE1500</td>
                    <td>HE1018</td>
                    <td>Nguyễn Ngọc Diệp</td>
                    <td>Present</td>
                    <td></td>
                     <td>Lưu Trường Giang</td>
                    <td>2022-06-06</td>
                </tr>
                <tr>
                    <td>20</td>
                    <td>SE1500</td>
                    <td>HE1019</td>
                    <td>Hà Minh Tú</td>
                    <td>Present</td>
                    <td></td>
                     <td>Lưu Trường Giang</td>
                    <td>2022-06-06</td>
                </tr>
                <tr>
                    <td>21</td>
                    <td>SE1500</td>
                    <td>HE1020</td>
                    <td>Hồ Anh Tuấn </td>
                    <td>Present</td>
                    <td></td>
                     <td>Lưu Trường Giang</td>
                    <td>2022-06-06</td>
                </tr>
                <tr>
                    <td>22</td>
                    <td>SE1500</td>
                    <td>HE1021</td>
                    <td>Nguyễn Mai Hương</td>
                    <td>Present</td>
                    <td></td>
                    <td>Lưu Trường Giang</td>
                    <td>2022-06-06</td>
                </tr>
                <tr>
                    <td>23</td>
                    <td>SE1500</td>
                    <td>HE1022</td>
                    <td>Nguyễn Nhật Đăng</td>
                    <td>Present</td>
                    <td></td>
                     <td>Lưu Trường Giang</td>
                    <td>2022-06-06</td>
                </tr>
                <tr>
                    <td>24</td>
                    <td>SE1500</td>
                    <td>HE1023</td>
                    <td>Đỗ Đức Anh</td>
                    <td>Present</td>
                    <td></td>
                     <td>Lưu Trường Giang</td>
                    <td>2022-06-06</td>
                </tr>
                <tr>
                    <td>25</td>
                    <td>SE1500</td>
                    <td>HE1024</td>
                    <td>Lưu Quốc Anh</td>
                    <td>Present</td>
                    <td></td>
                     <td>Lưu Trường Giang</td>
                    <td>2022-06-06</td>
                </tr>
                <tr>
                    <td>26</td>
                    <td>SE1500</td>
                    <td>HE1025</td>
                    <td>Trần Quỳnh Anh</td>
                    <td>Absent</td>
                    <td></td>
                     <td>Lưu Trường Giang</td>
                    <td>2022-06-06</td>
                </tr>
                <tr>
                    <td>27</td>
                    <td>SE1500</td>
                    <td>HE1026</td>
                    <td>Nguyễn Ngọc Linh Linh</td>
                    <td>Absent</td>
                    <td></td>
                     <td>Lưu Trường Giang</td>
                    <td>2022-06-06</td>
                </tr>
                <tr>
                    <td>28</td>
                   <td>SE1500</td>
                    <td>HE1027</td>
                    <td>Phạm Thanh Long</td>
                    <td>Present</td>
                    <td></td>
                     <td>Lưu Trường Giang</td>
                    <td>2022-06-06</td>
                </tr>
                <tr>
                    <td>29</td>
                    <td>SE1500</td>
                    <td>HE1028</td>
                    <td>Hoàng Mai Phương</td>
                    <td>Present</td>
                    <td></td>
                     <td>Lưu Trường Giang</td>
                    <td>2022-06-06</td>
                </tr>
                <tr>
                    <td>30</td>
                    <td>SE1500</td>
                    <td>HE1029</td>
                    <td>Lưu Thanh Tiến</td>
                    <td>Present</td>
                    <td></td>
                     <td>Lưu Trường Giang</td>
                    <td>2022-06-06</td>
                </tr>         
            </table>
        </div>
            <div><input type="submit" value="edit"/></div>
            <div><input type="submit" value="cancel"/></div>
        </form>
        
    </body>
</html>
