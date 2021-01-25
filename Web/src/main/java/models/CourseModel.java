package models;

import beans.Category;
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
    public static void addCourse(Course c) {
        final String sql = "INSERT INTO course (CourseName, Short_Des,Full_Des,Price,CatID,LecturerID,LevelID,Url) VALUES (:CourseName, :Short_Des,:Full_Des,:Price,:CatID,:LecturerID,:LevelID,:Url) ";
        try (Connection con = DbUtils.getConnection()) {
            con.createQuery(sql)
                    .addParameter("CourseName", c.getCourseName())
                    .addParameter("Short_Des", c.getShort_Des())
                    .addParameter("Full_Des", c.getFull_Des())
                    .addParameter("Price", c.getPrice())
                    .addParameter("CourseName", c.getCatID())
                    .addParameter("Short_Des", c.getLecturerID())
                    .addParameter("Full_Des", c.getLevelID())
                    .addParameter("Price", c.getUrl())
                    .executeUpdate();
        }
    }
    public static void updateCourse(Course c) {
        final String sql = "update course set  CourseName= :CourseName, Short_Des =:Short_Des, Full_Des =:Full_Des,Price=:Price,CatID=:CatID,LecturerID =:LecturerID, LevelID =:LevelID, Url=: Url where CourseID = :CourseID ";
        try (Connection con = DbUtils.getConnection()) {
            con.createQuery(sql)
                    .addParameter("CourseName", c.getCourseName())
                    .addParameter("Short_Des", c.getShort_Des())
                    .addParameter("Full_Des", c.getFull_Des())
                    .addParameter("Price", c.getPrice())
                    .addParameter("CatID", c.getCatID())
                    .addParameter("LecturerID", c.getLecturerID())
                    .addParameter("LevelID", c.getLevelID())
                    .addParameter("Url", c.getUrl())
                    .executeUpdate();
        }
    }
    public static void delete(int id) {
        final String sql = "delete from course where CourseID = :CourseID";
        try (Connection con = DbUtils.getConnection()) {
            con.createQuery(sql)
                    .addParameter("CourseID", id)
                    .executeUpdate();
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
//    SELECT * FROM course
//WHERE CourseName LIKE '%a%';
    
//    public static List<Course> getNameLectureByCourseid () {
//        String sql = "select * from course,users where LevelID =: id";
//        try (Connection con = DbUtils.getConnection()) {
//            return con.createQuery(sql).executeAndFetch(Course.class);
//        }
//    }
}
