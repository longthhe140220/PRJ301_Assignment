/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Attendance;
import model.Group;
import model.Lecturer;
import model.Room;
import model.Session;
import model.Student;

/**
 *
 * @author Admin
 */
public class AttendanceDBContext extends DBContext<Attendance> {

    public ArrayList<Session> getStudentListAttendance(int sessionID) {
        ArrayList<Session> sessList = new ArrayList<>();
        try {
            String sql = "select SessionID,GroupName,Status,stu.StudentID,RoleNumber,FirstName,MiddleName,LastName,LecturerFirstName,LecturerMiddeName,LecturerLastName\n"
                    + "from Session s inner join [Group] g on s.GroupID = g.GroupID\n"
                    + "inner join [Group_Student] gs on g.GroupID = gs.GroupID\n"
                    + "inner join [Student] stu on stu.StudentID = gs.StudentID\n"
                    + "inner join [Lecturer] le on le.LecturerID = g.LecturerID\n"
                    + "where SessionID = ?";
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setInt(1, sessionID);
            ResultSet rs = stm.executeQuery();
            while (rs.next()) {
                Session s = new Session();
                s.setSessionID(sessionID);
                s.setStatus(rs.getBoolean("Status"));
                Group g = new Group();
                g.setGroupName(rs.getString("GroupName"));
                s.setGroup(g);
                Student stu = new Student();
                stu.setStudentID(rs.getInt("StudentID"));
                stu.setFirstName(rs.getString("FirstName"));
                stu.setMiddleName(rs.getString("MiddleName"));
                stu.setLastName(rs.getString("LastName"));
                stu.setRoleNumber(rs.getString("RoleNumber"));
                s.setStudent(stu);
                Lecturer l = new Lecturer();
                l.setLecturerFirstName(rs.getString("LecturerFirstName"));
                l.setLecturerMiddleName(rs.getString("LecturerMiddeName"));
                l.setLecturerLastName(rs.getString("LecturerLastName"));
                s.setLecturer(l);
                sessList.add(s);
            }
        } catch (SQLException ex) {
            Logger.getLogger(AttendanceDBContext.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            try {
                connection.close();
            } catch (SQLException ex) {
                Logger.getLogger(AttendanceDBContext.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
        return sessList;
    }

    public void insertAttendance(Session model) {
        try {
            connection.setAutoCommit(false);
            for (Attendance att : model.getAttends()) {
                String sql = "INSERT INTO [Attendance]\n"
                        + "           ([SessionID]\n"
                        + "           ,[StudentID]\n"
                        + "           ,[Absent])\n"
                        + "     VALUES\n"
                        + "           (?,?,?)";
                PreparedStatement stm = connection.prepareStatement(sql);
                stm.setBoolean(3, att.getAbsent());
                stm.setInt(1, model.getSessionID());
                stm.setInt(2, att.getStudentID());
                stm.executeUpdate();
            }
            connection.commit();
        } catch (SQLException ex) {
            Logger.getLogger(AttendanceDBContext.class.getName()).log(Level.SEVERE, null, ex);
            try {
                connection.rollback();
            } catch (SQLException ex1) {
                Logger.getLogger(AttendanceDBContext.class.getName()).log(Level.SEVERE, null, ex1);
            }
        } finally {
            try {
                connection.setAutoCommit(true);
            } catch (SQLException ex) {
                Logger.getLogger(AttendanceDBContext.class.getName()).log(Level.SEVERE, null, ex);
            }
        }

    }

    public void setSessionStatusToTrue(int sessionID) {
        try {
            String sql = "UPDATE [dbo].[Session]\n"
                    + "   SET \n"
                    + "      [Status] = ?\n"
                    + " WHERE SessionID = ?";
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setBoolean(1, true);
            stm.setInt(2, sessionID);
            stm.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(AttendanceDBContext.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    @Override
    public ArrayList<Attendance> list() {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public Attendance get(int id) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public void insert(Attendance model) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public void update(Attendance model) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public void delete(Attendance model) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

}
