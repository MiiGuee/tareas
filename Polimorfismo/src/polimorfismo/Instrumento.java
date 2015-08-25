/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package polimorfismo;

import java.util.*;
/**
 *
 * @author MiiGuee V
 */
public class Instrumento {
       public void tocar() {
        System.out.println("Instrumento.tocar()");
    }
       public void re(){
        System.out.print("Instrumento.re()");
           
    }
       public void mi(){
        System.out.print("Instrumento.mi()");
    }
       public void fa(){
        System.out.print("Instrumento.fa()");  
    }
       public void sol(){
        System.out.print("Instrumento.sol()");  
    }

    public String tipo() {
        return "Instrumento";
    }

    public void afinar() {
    }
}

