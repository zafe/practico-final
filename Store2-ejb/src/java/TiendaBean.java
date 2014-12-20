package beans;

import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
/**
 *
 * @author jose
 */
@Stateless
public class TiendaBean implements TiendaBeanLocal {

    @PersistenceContext EntityManager em;
    @Override
    public java.util.List<Producto> getProductos(){
        return em.createNamedQuery("Producto.findAll").getResultList();
    }

    public void addProductos(Producto producto){
        em.persist(producto);
        }
    
}
