package models;

import beans.Categories_type;
import beans.Category;
import beans.Product;
import org.sql2o.Connection;
import utils.DbUtils;

import java.util.List;
import java.util.Optional;

public class CateTypeModel {
    public static List<Categories_type> getAllCateType() {
        String sql = "select * from categories_type";
        try (Connection con = DbUtils.getConnection()) {
            return con.createQuery(sql).executeAndFetch(Categories_type.class);
        }
    }
//    public static List<Categories_type> getCategoryByid() {
//        String sql = "select *from categories, categories_type where id_type =: id_type ";
//        try (Connection con = DbUtils.getConnection()) {
//            return con.createQuery(sql).executeAndFetch(Categories_type.class);
//        }
//    }

}
