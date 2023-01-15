package database;
import java.sql.*;
import javax.swing.*;

public class dbclass {
    public static Connection con;
    public static Statement st;
    
    static{
       
    
    try{
    
    con = DriverManager.getConnection("jdbc:mysql://localhost:3306/expmanage","root","");
    st = con.createStatement();
    }catch (Exception ex){
        JOptionPane.showMessageDialog(null ,ex);
            }
}
}
