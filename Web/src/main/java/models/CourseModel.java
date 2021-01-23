package models;

import beans.Course;
import beans.Product;
import beans.User;
import org.sql2o.Connection;
import utils.DbUtils;

import java.util.List;
import java.util.Optional;

public class CourseModel {
    public static List<Course> getAllCourses () {
        String sql = "select * from course";
        try (Connection con = DbUtils.getConnection()) {
            return con.createQuery(sql)
                    .executeAndFetch(Course.class);
        }
    }
    public static List<Course> getAllCoursesPage (int limit, int offset) {
        String sql = "select * from course where limit :limit offset :offset";
        try (Connection con = DbUtils.getConnection()) {
            return con.createQuery(sql)
                    .addParameter("limit", limit)
                    .addParameter("offset", offset)
                    .executeAndFetch(Course.class);
        }
    }

    public  static List<Course> findByCatId(int catID, int limit, int offset) {
        String sql = "select * from course where CatID = :CatID limit :limit offset :offset ";
        try(Connection con = DbUtils.getConnection()) {
            return con.createQuery(sql)
                    .addParameter("CatID", catID)
                    .addParameter("limit", limit)
                    .addParameter("offset", offset)
                    .executeAndFetch(Course.class);
        }
    }

    public  static Optional<Course> findById(int id) {
        String sql = "select * from course where CourseID = :CourseID";
        try(Connection con = DbUtils.getConnection()) {
            List<Course> list =
                    con.createQuery(sql)
                            .addParameter("CourseID", id)
                            .executeAndFetch(Course.class);
            if(list.size() == 0) {
                return Optional.empty();
            }
            return Optional.ofNullable(list.get(0));
        }

    }
    public static int countByCatID(int catID) {
        String sql = "select count(*) from course where CatID = :CatID";
        try (Connection con = DbUtils.getConnection()) {
            return con.createQuery(sql)
                    .addParameter("CatID", catID)
                    .executeScalar(Integer.class);
        }
    }
//    public static List<Course> getNameLectureByCourseid () {
//        String sql = "select * from course,users where LevelID =: id";
//        try (Connection con = DbUtils.getConnection()) {
//            return con.createQuery(sql).executeAndFetch(Course.class);
//        }
//    }
}
