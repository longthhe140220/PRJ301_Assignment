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
import model.Session;
import model.Student;

/**
 *
 * @author Admin
 */
public class DetailDBContext extends DBContext<Session> {

    public ArrayList<Session> getListStudent(int id){
         ArrayList<Session> se = new ArrayList<>();
        try {
            String sql = "Select GroupName,RoleNumber,TeachDate,Absent,stu.StudentID,sess.SessionID,FirstName,MiddleName,LastName,LecturerFirstName,LecturerLastName,LecturerMiddeName \n"
                    + "   from [Session] sess inner join [Attendance] att on sess.SessionID = att.SessionID\n"
                    + "   inner join [Student] stu on stu.StudentID = att.StudentID \n"
                    + "   inner join [Group] gr on sess.GroupID = gr.GroupID\n"
                    + "   inner join [Lecturer] le on gr.GroupID = le.LecturerID\n"
                    + "   where sess.SessionID = ?";
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setInt(1, id);
            ResultSet rs = stm.executeQuery();
            while (rs.next()) {
                Session s = new Session();
                s.setSessionID(id);
                s.setTeachDate(rs.getDate("TeachDate"));
                s.setSlot(rs.getInt("Slot"));
                Attendance att = new Attendance();
                att.setAbsent(rs.getBoolean("Absent"));
                att.setSessionID(id);
                att.setStudentID(rs.getInt("StudentID"));
                s.setAttendance(att);
                Student stu = new Student();
                stu.setRoleNumber(rs.getString("RoleNumber"));
                stu.setFirstName(rs.getString("FirstName"));
                stu.setMiddleName(rs.getString("MiddleName"));
                stu.setLastName(rs.getString("LastName"));
                stu.setStudentID(rs.getInt("StudentID"));
                s.setStudent(stu);
                Group g = new Group();
                g.setGroupName(rs.getString("GroupName"));
                s.setGroup(g);
                Lecturer l = new Lecturer();
                l.setLecturerFirstName(rs.getString("LecturerFirstName"));
                l.setLecturerMiddleName(rs.getString("LecturerMiddeName"));
                l.setLecturerLastName(rs.getString("LecturerLastName"));
                s.setLecturer(l);
                se.add(s);          
            }
        } catch (SQLException ex) {
            Logger.getLogger(WeeklyDBContext.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            try {
                connection.close();
            } catch (SQLException ex) {
                Logger.getLogger(WeeklyDBContext.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
        return se;
    }

    @Override
    public Session get(int id) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public void insert(Session model) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public void update(Session model) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public void delete(Session model) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public ArrayList<Session> list() {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

}
