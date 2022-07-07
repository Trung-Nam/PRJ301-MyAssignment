/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Model;

import java.sql.Date;
import java.util.ArrayList;

/**
 *
 * @author ASUS G731G
 */
public class Student_Lession {
    ArrayList<Student> students;
    ArrayList<Lession> lessions;
    private boolean status;
    private Date record_time;

    public Student_Lession() {
    }

    public Student_Lession(ArrayList<Student> students, ArrayList<Lession> lessions, boolean status, Date record_time) {
        this.students = students;
        this.lessions = lessions;
        this.status = status;
        this.record_time = record_time;
    }

    public ArrayList<Student> getStudents() {
        return students;
    }

    public void setStudents(ArrayList<Student> students) {
        this.students = students;
    }

    public ArrayList<Lession> getLessions() {
        return lessions;
    }

    public void setLessions(ArrayList<Lession> lessions) {
        this.lessions = lessions;
    }

    public boolean isStatus() {
        return status;
    }

    public void setStatus(boolean status) {
        this.status = status;
    }

    public Date getRecord_time() {
        return record_time;
    }

    public void setRecord_time(Date record_time) {
        this.record_time = record_time;
    }
    
}
