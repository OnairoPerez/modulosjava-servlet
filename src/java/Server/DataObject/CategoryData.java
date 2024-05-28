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
public class CategoryData extends JsonReader <CategoryData> {
    public String name;
    public String img;
    public String href;
    
    public CategoryData[] getData() throws IOException {
        return getData(CategoryData[].class, "categories.json");
    }
}
