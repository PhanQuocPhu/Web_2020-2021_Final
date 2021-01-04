package models;

import beans.Category;
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
}
