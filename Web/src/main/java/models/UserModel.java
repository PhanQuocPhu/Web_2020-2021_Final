package models;

import org.sql2o.Connection;
import utils.DbUtils;

import java.util.List;
import java.util.Optional;
import beans.User;
public class UserModel {
    public static void add(User c) {
        final String sql= "INSERT INTO users (username, password, name, email, dob, permission) VALUES (:username,:password,:name,:email,:dob,:permission)";
        try(Connection con = DbUtils.getConnection()){
            con.createQuery(sql)
                    .addParameter("username", c.getUsername())
                    .addParameter("password", c.getPassword())
                    .addParameter("name", c.getName())
                    .addParameter("email", c.getEmail())
                    .addParameter("dob", c.getDob())
                    .addParameter("permission", c.getPermission())
                    .executeUpdate();
        }
    }


    public static Optional<User> findByUserName(String username) {
        final String sql = "select * from users where username = :username";
        try (Connection con = DbUtils.getConnection()) {
            List<User> list = con.createQuery(sql)
                    .addParameter("username", username)
                    .executeAndFetch(User.class);
            if (list.size() == 0) {
                return Optional.empty();
            }
            return Optional.ofNullable(list.get(0));
        }

    }

}

