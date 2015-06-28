/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Database;

import java.sql.*;
/**
 *
 * @author benjaminmathre
 */
public abstract class Database {
    
    /*
        The connection is made by using JCDB connection 
        Username is Creator
        Password is Bjsmbxfprj3
    */
    public void connection(){
        DBHelper.loadDriver("org.apache.derby.jdbc.ClientDriver");
    }
}
