/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Models;

import java.io.Serializable;

/**
 *
 * @author CandidoAcevedo
 */
public class Marca implements Serializable {
    
    private int idMarca;
    private String marca;
    
    public Marca(){}
    
    public Marca(int idMarca, String marca){
    this.idMarca = idMarca;
    this.marca = marca;
    }

    public int getIdMarca() {
        return idMarca;
    }

    public void setIdMarca(int idMarca) {
        this.idMarca = idMarca;
    }

    public String getMarca() {
        return marca;
    }

    public void setMarca(String marca) {
        this.marca = marca;
    }
    
    
}
