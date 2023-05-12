package iotbay.model.dao;

import java.sql.Connection;

/**
 *
 * @author james
 */
public abstract class DB {
    protected String URL = "jdbc:derby://localhost:1527/";
    protected String db = "IoTBay-Users";
    protected String dbuser = "IoTBay";
    protected String dbpass = "password";
    protected String driver = "org.apache.derby.jdbc.ClientDriver";
    protected Connection conn;
    
}
