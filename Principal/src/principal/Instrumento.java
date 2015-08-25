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
public class Instrumento {
    String nombre;
    String categoria;
    String nota_musical;
    
    public Instrumento ( String nombre, String categoria, String nota_musical){
        this.nombre = nombre;
        this.categoria = categoria;
        this.nota_musical = nota_musical;     
    }
    
    public String Mostrar(){
      return "Tu instrumnto es:"+nombre+"\nSu categoria es:"
                +categoria+"\nTu nota musical es:"+nota_musical;  
       
    }
}
