package models;

import beans.Categories_type;
import beans.Category;
import beans.Course;
import beans.Product;
import org.sql2o.Connection;
import org.sql2o.Sql2o;
import utils.DbUtils;
import java.util.ArrayList;
import java.util.Arrays;

import java.util.List;
import java.util.Optional;

public class CategoryModel {
    public static List<Category> getAllCategory () {
        String sql = "select * from categories";
        try (Connection con = DbUtils.getConnection()) {
            return con.createQuery(sql).executeAndFetch(Category.class);
        }
    }

    public  static Optional<Category> findById(int id) {
        final String sql = "select * from categories where CatID = :CatID";
        try(Connection con = DbUtils.getConnection()) {
            List<Category> list = con.createQuery(sql)
                    .addParameter("CatID", id)
                    .executeAndFetch(Category.class);
            if(list.size() == 0) {
                return Optional.empty();
            }
            return Optional.ofNullable(list.get(0));

        }

    }
    public static void saveCategory(Category c) {
        final String sql = "INSERT INTO categories (CatName) VALUES (:CatName)";
        try (Connection con = DbUtils.getConnection()) {
            con.createQuery(sql)
                    .addParameter("CatName", c.getCatName())
                    .executeUpdate();
        }
    }
    public static void delete(int id) {
        final String sql = "delete from categories where CatID = :CatID";
        try (Connection con = DbUtils.getConnection()) {
            con.createQuery(sql)
                    .addParameter("CatID", id)
                    .executeUpdate();
        }
    }

    public static void update(Category c) {
        final String sql = "update categories set CatName = :CatName, id_type =:id_type where CatID = :CatID";
        try (Connection con = DbUtils.getConnection()) {
            con.createQuery(sql)
                    .addParameter("CatID", c.getCatID())
                    .addParameter("id_type",c.getId_type())
                    .addParameter("CatName", c.getCatName())
                    .executeUpdate();
        }
    }
    public static List<Category> getAllCategoryByid(int id_type) {
        final String sql = "select * from categories where id_type = :id_type";
        try(Connection con = DbUtils.getConnection()) {
            return con.createQuery(sql)
                    .addParameter("id_type", id_type)
                    .executeAndFetch(Category.class);
        }
    }

}
//    public static List<Category> getAll() {
//        return new ArrayList<>(
//                Arrays.asList(
//                new Category(1, "Sách"),
//                new Category(2, "Quần áo"),
//                new Category(3, "Điện thoại"),
//                new Category(4, "Váy"),
//                new Category(5, "Loa"),
//                new Category(6, "Máy tính bảng")
//                )
//        );
//    }

