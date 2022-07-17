/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Model;

/**
 *
 * @author ASUS G731G
 */
public class Account {
    private String username;
    private String password;
    private String dislayname;

    public Account() {
    }

    public Account(String username, String password, String dislayname) {
        this.username = username;
        this.password = password;
        this.dislayname = dislayname;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getDislayname() {
        return dislayname;
    }

    public void setDislayname(String dislayname) {
        this.dislayname = dislayname;
    }
    
    
    
}
