package dao.hybernateDAO;

import dao.DAOFactory.ProductDAO;
import entity.Product;
import org.hibernate.query.Query;

import javax.persistence.EntityManager;
import javax.persistence.Persistence;
import java.util.List;

public class ProductDAOH implements ProductDAO {
    private EntityManager em = Persistence.createEntityManagerFactory("MYSITE").createEntityManager();

    @Override
    public List<Product> getAllProducts() {
        return em.createQuery("SELECT t from " + Product.class.getSimpleName() + " t").getResultList();
    }

    @Override
    public List<Product> getProductsByCategory(int cat) {
        Query query = (Query) em.createQuery("from Product where category = :category");
        query.setParameter("category", cat);
        return query.list();
    }

    @Override
    public Product getProductById(int id) {
        return em.find(Product.class, id);
    }
}
