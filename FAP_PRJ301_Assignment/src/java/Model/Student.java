/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Model;

import java.sql.Date;

/**
 *
 * @author ASUS G731G
 */
class Student {
    private String student_id;
    private String first_name;
    private String middle_name;
    private String last_name;
    private Date dob;
    private boolean gender;
    private Account account;

    public Student() {
    }

    public Student(String student_id, String first_name, String middle_name, String last_name, Date dob, boolean gender, Account account) {
        this.student_id = student_id;
        this.first_name = first_name;
        this.middle_name = middle_name;
        this.last_name = last_name;
        this.dob = dob;
        this.gender = gender;
        this.account = account;
    }

    public void setStudent_id(String student_id) {
        this.student_id = student_id;
    }

    public void setFirst_name(String first_name) {
        this.first_name = first_name;
    }

    public void setMiddle_name(String middle_name) {
        this.middle_name = middle_name;
    }

    public void setLast_name(String last_name) {
        this.last_name = last_name;
    }

    public void setDob(Date dob) {
        this.dob = dob;
    }

    public void setGender(boolean gender) {
        this.gender = gender;
    }

    public void setAccount(Account account) {
        this.account = account;
    }
    
    
    
}
