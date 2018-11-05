/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Interface;

import Models.Marca;
import java.util.List;

/**
 *
 * @author CandidoAcevedo
 */
public interface CRUD {
    public List listar();
    public Marca list(int id);
    public boolean agregar(Marca marca);
    public boolean editar(Marca marca);
    public boolean eliminar(int id);
}
