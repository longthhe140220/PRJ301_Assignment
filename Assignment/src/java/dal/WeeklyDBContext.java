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
import model.Group;
import model.Lecturer;

/**
 *
 * @author Admin
 */
public class WeeklyDBContext extends DBContext<Group>{

    public ArrayList<Lecturer> getLecturerList(){
        ArrayList<Lecturer> lecturers = new ArrayList<>();
        try {
            String sql = "SELECT * from Lecturer";
            PreparedStatement stm = connection.prepareStatement(sql);
            ResultSet rs = stm.executeQuery();
            while(rs.next())
            {
                Lecturer l = new Lecturer();
                l.setLecturerID(rs.getInt("LecturerID"));
                l.setLecturerFirstName(rs.getString("LecturerFirstName"));
                l.setLecturerMiddleName(rs.getString("LecturerMiddeName"));
                l.setLecturerLastName(rs.getString("LecturerLastName"));
                lecturers.add(l);
            }
        } catch (SQLException ex) {
            Logger.getLogger(WeeklyDBContext.class.getName()).log(Level.SEVERE, null, ex);
        }
        finally
        {
            try {
                connection.close();
            } catch (SQLException ex) {
                Logger.getLogger(WeeklyDBContext.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
        return lecturers;
    }
    @Override
    public ArrayList<Group> list() {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public Group get(int id) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public void insert(Group model) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public void update(Group model) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public void delete(Group model) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }
    
   
}
