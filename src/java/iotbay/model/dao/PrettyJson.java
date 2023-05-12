/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package iotbay.model.dao;

/**
 *
 * @author aaron
 */
import org.bson.Document;
import org.json.*;

public class PrettyJson {
    public static void printJSON(Document obj) {
        JSONObject jsonObject = new JSONObject(obj);
        String prettyJson = jsonObject.toString(4);
        System.out.println(prettyJson);
    }
}