/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Server.DataObject;

import java.io.IOException;

/**
 *
 * @author onairo
 */
public class UserAccount extends JsonReader<UserAccount> {
    public String email;
    public String password;
    
    public UserAccount[] getData() throws IOException {
        return getData(UserAccount[].class, "user_account.json");
    }
}

