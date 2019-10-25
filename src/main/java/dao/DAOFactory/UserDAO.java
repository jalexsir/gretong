package dao.DAOFactory;

import entity.User;

import java.security.NoSuchAlgorithmException;
import java.util.List;

public interface UserDAO {
    public List<User> getAllUsers();

    public User getUserByLogin(String login);

    public void updateUser(User user);

    public void insertUser(User user);

    public User getUserByLoginAndPass(String login, String password) throws NoSuchAlgorithmException;
}
