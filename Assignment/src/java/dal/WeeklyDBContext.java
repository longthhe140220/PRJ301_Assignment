/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import java.sql.Date;
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
import model.Slot;
import model.Student;
import model.Subject;

/**
 *
 * @author Admin
 */
public class WeeklyDBContext extends DBContext<Session> {

    public ArrayList<Lecturer> getLecturerList() {
        ArrayList<Lecturer> lecturers = new ArrayList<>();
        try {
            String sql = "SELECT * from Lecturer";
            PreparedStatement stm = connection.prepareStatement(sql);
            ResultSet rs = stm.executeQuery();
            while (rs.next()) {
                Lecturer l = new Lecturer();
                l.setLecturerID(rs.getInt("LecturerID"));
                l.setLecturerFirstName(rs.getString("LecturerFirstName"));
                l.setLecturerMiddleName(rs.getString("LecturerMiddeName"));
                l.setLecturerLastName(rs.getString("LecturerLastName"));
                lecturers.add(l);
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
        return lecturers;
    }

    public ArrayList<Date> getDateList() {
        ArrayList<Date> dateList = new ArrayList<>();
        try {
            String sql = "select TeachDate from Session";
            PreparedStatement stm = connection.prepareStatement(sql);
            ResultSet rs = stm.executeQuery();
            while (rs.next()) {
                dateList.add(rs.getDate("TeachDate"));
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
        return dateList;
    }

    public ArrayList<Session> getSessionListOneWeek(int lecturerID) {
        ArrayList<Session> sessList = new ArrayList<>();
        try {
            String sql = "select GroupName,SubjectCode,RoomCode,SessionID,TeachDate,Slot,Status \n"
                    + "from [Group] g  inner join [Subject] s on g.SubjectID = s.SubjectID\n"
                    + "inner join [Room] r on g.Room = r.RoomID\n"
                    + "inner join [Session] sess on g.GroupID = sess.GroupID\n"
                    + "where LecturerID = ?";
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setInt(1, lecturerID);
            ResultSet rs = stm.executeQuery();
            while (rs.next()) {
                Session s = new Session();
                Group g = new Group();
                g.setGroupName(rs.getString("GroupName"));
                s.setGroup(g);
                Room r = new Room();
                r.setRoomCode(rs.getString("RoomCode"));
                s.setRoom(r);
                Subject sub = new Subject();
                sub.setSubjectCode(rs.getString("SubjectCode"));
                s.setSubject(sub);
                s.setSessionID(rs.getInt("SessionID"));
                s.setSlot(rs.getInt("Slot"));
                s.setTeachDate(rs.getDate("TeachDate"));
                s.setStatus(rs.getBoolean("Status"));
                sessList.add(s);
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
        return sessList;
    }

    public ArrayList<Slot> getSlotList() {
        ArrayList<Slot> slotList = new ArrayList<>();
        try {
            String sql = "select * from Slot";
            PreparedStatement stm = connection.prepareStatement(sql);
            ResultSet rs = stm.executeQuery();
            while (rs.next()) {
                Slot s = new Slot();
                s.setSlotID(rs.getInt("SlotID"));
                s.setSlotCode(rs.getString("SlotCode"));
                slotList.add(s);
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
        return slotList;
    }

    @Override
    public ArrayList<Session> list() {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
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

}
