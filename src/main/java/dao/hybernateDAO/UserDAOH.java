package dao.hybernateDAO;

import dao.DAOFactory.UserDAO;
import entity.User;
import org.hibernate.query.Query;
import utilweb.EncryptPassw;

import javax.persistence.EntityManager;
import javax.persistence.Persistence;
import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Root;
import java.security.NoSuchAlgorithmException;
import java.util.List;

public class UserDAOH implements UserDAO {
    private EntityManager em = Persistence.createEntityManagerFactory("MYSITE").createEntityManager();
    private CriteriaBuilder criteriaBuilder = em.getCriteriaBuilder();
    private CriteriaQuery<Object> criteriaQuery;

    @Override
    public List<User> getAllUsers() {
        return null;
    }

    @Override
    public User getUserByLogin(String login) {
        em.getTransaction().begin();
        criteriaQuery = criteriaBuilder.createQuery();
        Root<User> fromRoot = criteriaQuery.from(User.class);
        criteriaQuery.select(fromRoot);
        criteriaQuery.where(criteriaBuilder.equal(fromRoot.get("login"), login));
        List<Object> resultList = em.createQuery(criteriaQuery).getResultList();
        User user = null;
        if (!resultList.isEmpty()) {
            user = (User) resultList.get(0);
        }
        em.getTransaction().commit();
        return user;
    }

    @Override
    public void updateUser(User user) {
        em.getTransaction().begin();
        Query query = (Query) em.createQuery("update User set name = :name, region = :region, gender= :gender, comment= :comment where login = :login");
        query.setParameter("name", user.getName());
        query.setParameter("region", user.getRegion());
        query.setParameter("gender", user.isGender());
        query.setParameter("comment", user.getComment());
        query.setParameter("login", user.getLogin());
        int result = query.executeUpdate();
        System.out.println(result);
        em.getTransaction().commit();
    }

    @Override
    public void insertUser(User user) {
        em.getTransaction().begin();
        em.merge(user);
        em.getTransaction().commit();
    }

    @Override
    public User getUserByLoginAndPass(String login, String password) throws NoSuchAlgorithmException {
        em.getTransaction().begin();
        criteriaQuery = criteriaBuilder.createQuery();
        Root<User> fromRoot = criteriaQuery.from(User.class);
        criteriaQuery.select(fromRoot);
        criteriaQuery.where(criteriaBuilder.equal(fromRoot.get("login"), login),
                criteriaBuilder.equal(fromRoot.get("password"), new EncryptPassw().toHashWithSalt(password)));
        List<Object> resultList = em.createQuery(criteriaQuery).getResultList();
        User user = null;
        if (!resultList.isEmpty()) {
            user = (User) resultList.get(0);
        }
        em.getTransaction().commit();
        return user;
    }
}
