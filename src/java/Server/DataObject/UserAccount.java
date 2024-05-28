/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Server.DataObject;

import com.fasterxml.jackson.core.type.TypeReference;
import java.io.IOException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.fasterxml.jackson.databind.SerializationFeature;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileWriter;
import java.util.List;

/**
 *
 * @author onairo
 */
public class UserAccount extends JsonReader<UserAccount> {
    public String email;
    public String password;
    
    private String filePath = getPathFile("user_account.json");
    
    public UserAccount() {}
    public UserAccount(String email, String password) {
        this.email = email;
        this.password = password;
    }
    public UserAccount[] getData() throws IOException {
        return getData(UserAccount[].class, "user_account.json");
    }
    
    public String saveData(UserAccount newData) throws IOException {
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

