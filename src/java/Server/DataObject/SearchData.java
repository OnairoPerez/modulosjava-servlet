/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Server.DataObject;

import java.io.IOException;
import java.util.HashSet;
import java.util.Set;

/**
 *
 * @author onairo
 */
public class SearchData extends JsonReader <SearchData> {
    public String codigo;
    public String nombre;
    public int precio;
    public int existencias;
    public String categoria;
    public String marca;
    public int purchased;
    public String img;
    
    private SearchData[] dataObject;
    private Set<String> brandes = new HashSet<>();
    
    public SearchData[] getData() throws IOException { 
        dataObject = getData(SearchData[].class, "productos.json");
        return dataObject;
    }
    public Set<String> getBrandes() {
        for (SearchData item : dataObject) {
            brandes.add(item.marca);
        }
        return brandes;
    }
    public int getPurchased() {
        return purchased;
    }
}
