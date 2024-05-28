/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Server.DataObject;

import com.fasterxml.jackson.core.type.TypeReference;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.fasterxml.jackson.databind.SerializationFeature;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.util.List;

/**
 *
 * @author onairo
 * @param <T>
 */
public class JsonWriter<T> {
    private final String pathJson = "/home/onairo/Documents/Proyectos/NetBeansProjects/WebServer/src/java/Server/data/"; 
    public String saveData(Class<T> valueType, T newData, String fileName) throws IOException {
        String filePath = pathJson +  fileName;
        
        ObjectMapper objectMapper = new ObjectMapper();
        objectMapper.enable(SerializationFeature.INDENT_OUTPUT);
        
        try {
            List<Object> existingData = objectMapper.readValue(new File(filePath), new TypeReference<List<Object>>() {});
            existingData.add(newData);

            objectMapper.writeValue(new File(filePath), existingData);
            
        } catch (IOException e) {
           try (BufferedWriter writer = new BufferedWriter(new FileWriter(filePath, true))) {
                writer.write("}]");
                return "done";
            }
        }
        return null;
    }
}
