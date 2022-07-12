/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

import java.sql.Date;
import java.util.ArrayList;

/**
 *
 * @author Admin
 */
public class Session {
    private int sessionID;
    private int groupID;
    private Date teachDate;
    private int slot;
    private ArrayList<Attendance> attends = new ArrayList<>();
    

    public Session() {
    }

    public ArrayList<Attendance> getAttends() {
        return attends;
    }

    public void setAttends(ArrayList<Attendance> attends) {
        this.attends = attends;
    }

    public int getSessionID() {
        return sessionID;
    }

    public void setSessionID(int sessionID) {
        this.sessionID = sessionID;
    }

    public int getGroupID() {
        return groupID;
    }

    public void setGroupID(int groupID) {
        this.groupID = groupID;
    }

    public Date getTeachDate() {
        return teachDate;
    }

    public void setTeachDate(Date teachDate) {
        this.teachDate = teachDate;
    }

    public int getSlot() {
        return slot;
    }

    public void setSlot(int slot) {
        this.slot = slot;
    }
    
    
}
