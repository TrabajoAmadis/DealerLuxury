/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Interface;

import Models.Usuario;
import java.util.List;

/**
 *
 * @author CandidoAcevedo
 */
public interface CRUDUsuario {
    public List listar();
    public Usuario list(int id);
    public boolean agregar(Usuario user);
    public boolean editar(Usuario user);
    public boolean eliminar(int id);
}
