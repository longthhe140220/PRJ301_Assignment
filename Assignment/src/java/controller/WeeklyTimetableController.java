/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

package controller;

import dal.WeeklyDBContext;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.sql.Date;
import java.time.LocalDate;
import java.time.Month;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashSet;
import java.util.Set;
import model.Lecturer;
import model.Session;
import model.Slot;

/**
 *
 * @author Admin
 */
public class WeeklyTimetableController extends HttpServlet {
   
    /** 
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code> methods.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet WeeklyTimetable</title>");  
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet WeeklyTimetable at " + request.getContextPath () + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    } 

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /** 
     * Handles the HTTP <code>GET</code> method.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        WeeklyDBContext db = new WeeklyDBContext();
        ArrayList<Lecturer> lecturers = db.getLecturerList();
        Lecturer lec = lecturers.get(0);
        request.setAttribute("lecturer",lec);
        request.setAttribute("lecturerList", lecturers);
        WeeklyDBContext db1 = new WeeklyDBContext();
        ArrayList<Date> dateList = db1.getDateList();
        ArrayList<LocalDate> dateMondayList = new ArrayList<>();
        for(Date dt : dateList){
            Calendar c= Calendar.getInstance();
            c.setTime(dt);
            if(c.get(Calendar.DAY_OF_WEEK) == 2){          
                dateMondayList.add(dt.toLocalDate());
            }
        }
        Set<LocalDate> set = new HashSet<>(dateMondayList);
        ArrayList<LocalDate> dateResultMondayList = new ArrayList<>(set);
        request.setAttribute("dateList", dateResultMondayList);
        //LocalDate currentDate = LocalDate.now();
        LocalDate currentDate = LocalDate.of(2022, Month.JULY, 4);
        ArrayList<LocalDate> currentDayOfWeek = new ArrayList<>();
        for(LocalDate ld : dateResultMondayList){
            if(currentDate.compareTo(ld) == 0 || currentDate.compareTo(ld.plusDays(6)) == 0 || currentDate.compareTo(ld) == 1 && currentDate.compareTo(ld.plusDays(6)) == -1){
                for(int i = 0;i<=6;i++){
                    currentDayOfWeek.add(ld.plusDays(i));
                }
            }  
        }
        request.setAttribute("currentDateOfWeek", currentDayOfWeek);
        WeeklyDBContext db3 = new WeeklyDBContext();
        ArrayList<Session> sessList = db3.getSessionListOneWeek(lec.getLecturerID());
        request.setAttribute("sessList", sessList);
        WeeklyDBContext db4 = new WeeklyDBContext();
        ArrayList<Slot> slotList = db4.getSlotList();
        request.setAttribute("slotList", slotList);
        request.getRequestDispatcher("view/weeklyTimetable.jsp").forward(request, response);
    } 
         
    
    /** 
     * Handles the HTTP <code>POST</code> method.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        processRequest(request, response);
    }

    /** 
     * Returns a short description of the servlet.
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
