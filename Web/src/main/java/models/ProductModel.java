package models;

import beans.Product;
import org.sql2o.Connection;
import utils.DbUtils;

import java.util.List;

public class ProductModel {
    public static List<Product> getAllProducts () {
        String sql = "select * from products";
        try (Connection con = DbUtils.getConnection()) {
            return con.createQuery(sql).executeAndFetch(Product.class);
        }
    }
    public  static List<Product> findByCatId(int catID) {
        String sql = "select * from products where CatID = :CatID";
        try(Connection con = DbUtils.getConnection()) {
           return con.createQuery(sql)
                   .addParameter("CatID", catID)
                   .executeAndFetch(Product.class);
        }

    }
}
