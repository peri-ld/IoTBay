/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package iotbay.model.dao;

/**
 *
 * @author aaron
 */
import com.mongodb.BasicDBObject;
import java.util.ArrayList;
import uts.isd.model.*;
import com.mongodb.client.MongoCursor;
import com.mongodb.client.MongoCollection;
import com.mongodb.client.model.Filters;
import com.mongodb.client.model.Updates;
import java.util.Iterator;
import java.util.List;
import java.util.function.Consumer;
import org.bson.Document;
import org.bson.conversions.Bson;

/**
 * @author George Connect to MongoDB Atlas and perform CRUD operations
 * https://docs.mongodb.com/drivers/java/ [Java MongoDB Connection]
 * https://mvnrepository.com/ [JAR Repository]
 *
 */
public class MongoDBManager extends MongoDB {

    private MongoCollection<Document> collection;

    public MongoDBManager(String owner, String password, String role, String db) {
        super(owner, password, role, db);
    }

    public void connect(String name) {
        this.collection = super.database.getCollection(name);
    }

    public void create(/* Insert the required parameters here*/) {     
         //insert your code here  
    }

    public void update(String id, String password) {     
         //insert your code here 
    }

    public void read(String id, String password) { 
          //insert your code here      
    }

    public void delete(String id, String password) {       
        //insert your code here
    }

    //View MongoDB Collections associated with credentials
    public void viewDatabase() {   
        System.out.println("MongoDB database information::");
        System.out.println("Database :: " + super.database.getName());
        System.out.println("Credentials :: " + super.credential);
        for (String name : super.database.listCollectionNames()) {
            System.out.println("Collections :: " + name);
        }    
    }

    //View a collection data as Json format
    public void showCollection() { 
       MongoCursor<Document> cursor = this.collection.find().iterator();
            while (cursor.hasNext()) {
                PrettyJson.printJSON(cursor.next());
            }      
    }
}