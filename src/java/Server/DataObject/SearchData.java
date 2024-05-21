/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Server.DataObject;

import com.fasterxml.jackson.databind.ObjectMapper;
import java.io.IOException;
import java.io.File;
import java.util.HashSet;
import java.util.Set;

/**
 *
 * @author onairo
 */
public class SearchData {
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
        ObjectMapper objectMapper = new ObjectMapper();
        String pathJson = "/home/onairo/Documents/Proyectos/NetBeansProjects/WebServer/src/java/Server/data/productos.json";
        dataObject = objectMapper.readValue(new File(pathJson), SearchData[].class);
        
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
