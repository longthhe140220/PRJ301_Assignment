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
public class DetailDBContext extends DBContext<Attendance> {

    public ArrayList<Attendance> getAttendanceList(int id) {
        ArrayList<Attendance> attList = new ArrayList<>();
        try {
            String sql = "select s.SessionID,att.StudentID,RoleNumber,FirstName,MiddleName,LastName,Absent,TeachDate,Slot,GroupName,LecturerFirstName,LecturerMiddeName,LecturerLastName,RoomCode,Campus\n"
                    + "from Attendance att inner join Session s on att.SessionID = s.SessionID\n"
                    + "inner join [Group] g on s.GroupID = g.GroupID\n"
                    + "inner join [Lecturer] le on g.LecturerID = le.LecturerID\n"
                    + "inner join [Room] r on g.Room = r.RoomID\n"
                    + "inner join [Student] stu on att.StudentID = stu.StudentID\n"
                    + "where s.SessionID = ?";
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setInt(1, id);
            ResultSet rs = stm.executeQuery();
            while (rs.next()) {
                Attendance att = new Attendance();
                att.setAbsent(rs.getBoolean("Absent"));
                att.setSessionID(id);
                att.setStudentID(rs.getInt("StudentID"));
                Student stu = new Student();
                stu.setStudentID(rs.getInt("StudentID"));
                stu.setFirstName(rs.getString("FirstName"));
                stu.setMiddleName(rs.getString("MiddleName"));
                stu.setLastName(rs.getString("LastName"));
                stu.setRoleNumber(rs.getString("RoleNumber"));
                att.setStudent(stu);
                Session se = new Session();
                se.setTeachDate(rs.getDate("TeachDate"));
                se.setSlot(rs.getInt("Slot"));
                se.setSessionID(id);
                att.setSession(se);
                Group g = new Group();
                g.setGroupName(rs.getString("GroupName"));
                att.setGroup(g);
                Lecturer l = new Lecturer();
                l.setLecturerFirstName(rs.getString("LecturerFirstName"));
                l.setLecturerMiddleName(rs.getString("LecturerMiddeName"));
                l.setLecturerLastName(rs.getString("LecturerLastName"));
                att.setLecturer(l);
                Room r = new Room();
                r.setRoomCode(rs.getString("RoomCode"));
                r.setCampus(rs.getString("Campus"));
                att.setRoom(r);
                attList.add(att);
            }
        } catch (SQLException ex) {
            Logger.getLogger(DetailDBContext.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            try {
                connection.close();
            } catch (SQLException ex) {
                Logger.getLogger(DetailDBContext.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
        return attList;
    }

    public void updateAttendance(Session model) {
        try {
            connection.setAutoCommit(false);
            for (Attendance att : model.getAttends()) {
                String sql = "UPDATE [Attendance]\n"
                        + "   SET [Absent] = ?\n"
                        + " WHERE [SessionID] = ? AND [StudentID] = ?";
                PreparedStatement stm = connection.prepareStatement(sql);
                stm.setBoolean(1, att.getAbsent());
                stm.setInt(2, model.getSessionID());
                stm.setInt(3, att.getStudentID());
                stm.executeUpdate();
            }
            connection.commit();
        } catch (SQLException ex) {
            Logger.getLogger(DetailDBContext.class.getName()).log(Level.SEVERE, null, ex);
            try {
                connection.rollback();
            } catch (SQLException ex1) {
                Logger.getLogger(DetailDBContext.class.getName()).log(Level.SEVERE, null, ex1);
            }
        } finally {
            try {
                connection.setAutoCommit(true);
            } catch (SQLException ex) {
                Logger.getLogger(DetailDBContext.class.getName()).log(Level.SEVERE, null, ex);
            }
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
