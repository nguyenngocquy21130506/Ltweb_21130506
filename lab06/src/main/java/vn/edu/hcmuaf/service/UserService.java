package vn.edu.hcmuaf.service;

import vn.edu.hcmuaf.User;

import java.util.HashMap;
import java.util.Map;

public class UserService {

    private static Map<String, String> map = new HashMap<>();

    static {
        map.put("nnquy@gmail.com", "123");
        map.put("user@gmail.com", "123");
    }

    private static UserService instence;

    public static UserService getInstance() {
        if (instence == null) instence = new UserService();
        return instence;
    }

    public User checkLogin(String username, String password) {
        if (!map.containsKey(username)) return null;
        if (map.get(username).equals(password)) {
            System.out.println(map.get(username).equals(password));
            User u = new User();
            u.setUsername(username);
            u.setPassword(password);
            return u;
        }
        return null;
    }
}
