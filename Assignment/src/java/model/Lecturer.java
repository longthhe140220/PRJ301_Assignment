/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author Admin
 */
public class Lecturer {
    private int lecturerID;
    private String lecturerFirstName;
    private String lecturerMiddleName;
    private String lecturerLastName;

    public Lecturer() {
    }

    public Lecturer(int lecturerID, String lecturerFirstName, String lecturerMiddleName, String lecturerLastName) {
        this.lecturerID = lecturerID;
        this.lecturerFirstName = lecturerFirstName;
        this.lecturerMiddleName = lecturerMiddleName;
        this.lecturerLastName = lecturerLastName;
    }

    public int getLecturerID() {
        return lecturerID;
    }

    public void setLecturerID(int lecturerID) {
        this.lecturerID = lecturerID;
    }

    public String getLecturerFirstName() {
        return lecturerFirstName;
    }

    public void setLecturerFirstName(String lecturerFirstName) {
        this.lecturerFirstName = lecturerFirstName;
    }

    public String getLecturerMiddleName() {
        return lecturerMiddleName;
    }

    public void setLecturerMiddleName(String lecturerMiddleName) {
        this.lecturerMiddleName = lecturerMiddleName;
    }

    public String getLecturerLastName() {
        return lecturerLastName;
    }

    public void setLecturerLastName(String lecturerLastName) {
        this.lecturerLastName = lecturerLastName;
    }
    
    
}
