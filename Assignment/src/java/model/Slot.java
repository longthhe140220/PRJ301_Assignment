/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author Admin
 */
public class Slot {
    private int SlotID;
    private String SlotCode;

    public Slot() {
    }

    public Slot(int SlotID, String SlotCode) {
        this.SlotID = SlotID;
        this.SlotCode = SlotCode;
    }

    public int getSlotID() {
        return SlotID;
    }

    public void setSlotID(int SlotID) {
        this.SlotID = SlotID;
    }

    public String getSlotCode() {
        return SlotCode;
    }

    public void setSlotCode(String SlotCode) {
        this.SlotCode = SlotCode;
    }
    
}
