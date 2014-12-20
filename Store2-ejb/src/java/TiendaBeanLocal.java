/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package beans;

import javax.ejb.Local;

/**
 *
 * @author jose
 */
@Local
public interface TiendaBeanLocal {
    
    java.util.List<Producto> getProductos();
    
    void addProductos(Producto producto);
}
