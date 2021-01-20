package models;

import beans.Course;
import beans.User;
import org.sql2o.Connection;
import utils.DbUtils;

import java.util.List;

public class CourseModel {
    public static List<Course> getAllCourses () {
        String sql = "select * from course";
        try (Connection con = DbUtils.getConnection()) {
            return con.createQuery(sql).executeAndFetch(Course.class);
        }
    }
//    public static List<Course> getNameLectureByCourseid () {
//        String sql = "select * from course,users where LevelID =: id";
//        try (Connection con = DbUtils.getConnection()) {
//            return con.createQuery(sql).executeAndFetch(Course.class);
//        }
//    }
}
