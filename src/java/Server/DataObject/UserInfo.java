/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Server.DataObject;

import com.fasterxml.jackson.core.type.TypeReference;
import java.io.File;
import java.io.IOException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.fasterxml.jackson.databind.SerializationFeature;
import java.io.BufferedWriter;
import java.io.FileWriter;
import java.util.List;

/**
 *
 * @author onairo
 */
public class UserInfo extends JsonReader<UserInfo> {
    public String name;
    public String birthdate;
    public String cc;
    public String email;
    public String phone;
    public String direction;
    
    private String filePath = getPathFile("user_info.json");
    
    public UserInfo(){} 
    public UserInfo(String name, String birthdate, String cc, String email, String phone, String direction) {
        this.name = name;
        this.birthdate = birthdate;
        this.cc = cc;
        this.email = email;
        this.phone = phone;
        this.direction = direction;
    }
    public UserInfo[] getData() throws IOException {
        return getData(UserInfo[].class, "user_info.json");
    }
    public String saveData(UserInfo newObject) throws IOException {
        ObjectMapper objectMapper = new ObjectMapper();
        objectMapper.enable(SerializationFeature.INDENT_OUTPUT);
        
        try {
            List<Object> existingData = objectMapper.readValue(new File(filePath), new TypeReference<List<Object>>() {});
            existingData.add(newObject);

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
