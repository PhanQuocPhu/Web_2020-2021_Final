package models;

import beans.Course;
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
}
