package controllers;

import beans.Course;
import beans.User;
import models.CourseModel;
import models.ProductModel;
import utils.ServletUtils;

import javax.servlet.Servlet;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "HomeServlet", urlPatterns = "/Home/*")
public class HomeServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String path = request.getPathInfo();
        if(path ==null || path.equals("/")) {
            path = "/Index";
        }
        switch (path) {
            case "/Index":
//                HttpSession session = request.getSession();
//                boolean auth = (boolean)session.getAttribute("auth");
//                User authUser = (User) session.getAttribute("authUser");
//                System.out.println(auth);
//                System.out.println(authUser);
                List<Course> list = CourseModel.getAllCourses();
                request.setAttribute("course", list);
                ServletUtils.forward("/views/vwHome/Index.jsp", request, response);
                break;
            case "/About":
                ServletUtils.forward("/views/vwHome/About.jsp", request, response);
                break;
            default:
                ServletUtils.redirect("/NotFound", request, response);
                break;
        }
    }
}
