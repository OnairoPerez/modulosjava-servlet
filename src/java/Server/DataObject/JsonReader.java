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
 * @param <T>
 */
public class JsonReader<T> {
    private final String pathJson = "/home/onairo/Documents/Proyectos/NetBeansProjects/WebServer/src/java/Server/data/";
    public String getPathFile(String jsonFileName) {
        return pathJson + jsonFileName;
    }
    public T[] getData(Class<T[]> valueType, String jsonFileName) throws IOException {
        String jsonFilePath = getPathFile(jsonFileName);
        ObjectMapper objectMapper = new ObjectMapper();
        return objectMapper.readValue(new File(jsonFilePath), valueType);
    }
}
