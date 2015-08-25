/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package polimorfismo;

/**
 *
 * @author MiiGuee V
 */
public class Tambor extends Instrumento {
     public void tocar() {
        System.out.println("Tambor.tocar()");
    }

    public String tipo() {
        return "Tambor";
    }

    public void afinar() {
    }
}
    
    

