/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Server.DataObject;

import com.fasterxml.jackson.databind.ObjectMapper;
import java.io.IOException;
import java.io.File;

/**
 *
 * @author onairo
 */
public class CategoryData {
    public String name;
    public String img;
    public String href;
    
    public CategoryData[] getData() throws IOException {
        ObjectMapper objectMapper = new ObjectMapper();
        String pathJson = "/home/onairo/Documents/Proyectos/NetBeansProjects/WebServer/src/java/Server/data/categories.json";
        CategoryData[] dataObject = objectMapper.readValue(new File(pathJson), CategoryData[].class);
        
        return dataObject;
    }
}
