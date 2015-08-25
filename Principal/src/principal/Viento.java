/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package principal;

/**
 *
 * @author dell
 */
public class Viento extends Instrumento {
    String melodia;
    
    public Viento(String nombre, String categoria, String nota_musical,String melodia){
        super (nombre,categoria,nota_musical);
        this.melodia = melodia;
    }
    public String Mostrar(){
        return super.Mostrar()+"\nTu melodia es:"+melodia;
    }
}
