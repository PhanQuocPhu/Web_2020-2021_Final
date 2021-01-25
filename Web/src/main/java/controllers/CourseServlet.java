package controllers;

import beans.Category;
import beans.Course;
import models.CategoryModel;
import models.CourseModel;
import org.sql2o.Connection;
import utils.DbUtils;
import utils.ServletUtils;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;
import java.util.Optional;

@WebServlet(name = "CourseServlet", urlPatterns = "/Admin/Course/*")
public class CourseServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String path = request.getPathInfo();
        switch (path) {
        case "/Update":
            updateCourse(request, response);
            break;
        case "/Add":
            addCourse(request, response);
            break;
        case "/Delete":
            deleteCourse(request, response);
            break;
        default:
            ServletUtils.redirect("/NotFound", request, response);
        }
    }
    private void addCourse(HttpServletRequest request,HttpServletResponse response)throws ServletException, IOException  {
        String name = request.getParameter("CourseName");
        String shortdes = request.getParameter("Short_Des");
        String fulldes = request.getParameter("Full_Des");
        String url = request.getParameter("Url");
        int catid = Integer.parseInt(request.getParameter("CatID"));
        int price = Integer.parseInt(request.getParameter("Price"));
        int levelid = Integer.parseInt(request.getParameter("LevelID"));
//       System.out.println(authUser.id);
        int idlecturer = Integer.parseInt(request.getParameter("LecturerID"));
        Course c = new Course(-1,price,catid,idlecturer,levelid, name,shortdes,fulldes, url);
        CourseModel.addCourse(c);
        ServletUtils.redirect("/Admin/Course", request, response);
    }
    private void updateCourse(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int id  =  Integer.parseInt(request.getParameter("CourseID"));
        String name = request.getParameter("CourseName");
        String shortdes = request.getParameter("Short_Des");
        String fulldes = request.getParameter("Full_Des");
        String url = request.getParameter("Url");
        int catid = Integer.parseInt(request.getParameter("CatID"));
        int price = Integer.parseInt(request.getParameter("Price"));
        int levelid = Integer.parseInt(request.getParameter("LevelID"));
        int idlecturer = Integer.parseInt(request.getParameter("LecturerID"));
        Course c = new Course(id,price,catid,idlecturer,levelid, name,shortdes,fulldes, url);
        CourseModel.updateCourse(c);
        ServletUtils.redirect("/Admin/Course", request, response);

    }
    private void deleteCourse(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("CourseID"));
        CourseModel.delete(id);
        ServletUtils.redirect("/Admin/Course", request, response);
    }
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String path = request.getPathInfo();
        if(path ==null || path.equals("/")) {
            path = "/Index";
        }
        switch (path) {
            case "/Add":
                ServletUtils.forward("/views/vwCourse/Add.jsp", request, response);
                break;
            case "/Index":
                List<Course> list = CourseModel.getAllCourses();
                request.setAttribute("course", list);
                ServletUtils.forward("/views/vwCourse/Index.jsp", request, response);
            case "/Edit":
                int id = Integer.parseInt(request.getParameter("id"));
                Optional<Course> c = CourseModel.findById(id);
                if(c.isPresent()) {
                    request.setAttribute("course", c.get());
                    ServletUtils.forward("/views/vwCourse/Edit.jsp", request, response);
                }
                else {
                    ServletUtils.redirect("/Home", request, response);
                }
                break;

            default:
                ServletUtils.redirect("/NotFound", request, response);
                break;
        }
    }
}
