package models;

import beans.Course;
import beans.Product;
import org.sql2o.Connection;
import utils.DbUtils;

import java.util.List;
import java.util.Optional;
public class ProductModel {
    public static List<Course> getAllCourses () {
        String sql = "select * from course";
        try (Connection con = DbUtils.getConnection()) {
            System.out.println("hihi");
            return con.createQuery(sql).executeAndFetch(Course.class);
        }
    }
    public  static List<Product> findByCatId(int catID, int limit, int offset) {
        String sql = "select * from products where CatID = :CatID limit :limit offset :offset ";
        try(Connection con = DbUtils.getConnection()) {
           return con.createQuery(sql)
                   .addParameter("CatID", catID)
                   .addParameter("limit", limit)
                   .addParameter("offset", offset)
                   .executeAndFetch(Product.class);
        }
    }
    public  static Optional<Product> findById(int id) {
        String sql = "select * from products where ProID = :ProID";
        try(Connection con = DbUtils.getConnection()) {
            List<Product> list =
                    con.createQuery(sql)
                    .addParameter("ProID", id)
                    .executeAndFetch(Product.class);
            if(list.size() == 0) {
                return Optional.empty();
            }
            return Optional.ofNullable(list.get(0));
        }

    }
    public static int countByCatID(int catID) {
        String sql = "select count(*) from products where CatID = :CatID";
        try (Connection con = DbUtils.getConnection()) {
            return con.createQuery(sql)
                    .addParameter("CatID", catID)
                    .executeScalar(Integer.class);
        }
    }
}
