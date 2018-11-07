/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Interface;

import Models.Categoria;
import java.util.List;

/**
 *
 * @author CandidoAcevedo
 */
public interface CRUDCategoria {
    public List listar();
    public Categoria list(int id);
    public boolean agregar(Categoria categoria);
    public boolean editar(Categoria categoria);
    public boolean eliminar(int id);
    
}
