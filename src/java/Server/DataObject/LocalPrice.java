/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Server.DataObject;

import java.util.Locale;
import java.text.NumberFormat;

/**
 *
 * @author onairo
 */
public class LocalPrice {
    public String colombia (int value) {
        int price = value;
        Locale colombia = new Locale("es", "CO");
        NumberFormat numberFormat = NumberFormat.getCurrencyInstance(colombia);
        numberFormat.setMaximumFractionDigits(0);
        String localeNumber = numberFormat.format(price);
        return localeNumber;
    }
}
