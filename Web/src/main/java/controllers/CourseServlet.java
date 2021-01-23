package controllers;
import beans.Course;
import models.CourseModel;
import utils.ServletUtils;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;
import java.util.Optional;

@WebServlet(name = "CourseServlet", urlPatterns = "/Course/*")
public class CourseServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    }
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String path = request.getPathInfo();
        if(path ==null || path.equals("/")) {
            path = "/Index";
        }
        switch (path){
            case "/Index":
                List<Course> course = CourseModel.getAllCourses();
                request.setAttribute("course", course);
                ServletUtils.forward("/views/vwCourse/Index.jsp", request, response);
            case "/ByCat":
                int catID = Integer.parseInt(request.getParameter("id"));
                request.setAttribute("catID", catID);
                int page = Integer.parseInt(request.getParameter("id"));
                final int LIMIT = 6;
                int currentPage = 1;
                if(request.getParameter("page")!=null) {
                    currentPage = Integer.parseInt(request.getParameter("page"));
                }
                int offset = (currentPage - 1)*LIMIT;
                request.setAttribute("currentPage", currentPage);
                int total = CourseModel.countByCatID(catID);
                int nPages = total/LIMIT;
                if(total % LIMIT > 0)
                    nPages++;
                int[] pages = new int[nPages];
                for(int i = 0; i< nPages; i++) {
                    pages[i] = i + 1;
                }
                request.setAttribute("pages", pages);
                List<Course> list1 = CourseModel.findByCatId(catID, LIMIT,offset);

                request.setAttribute("products", list1);
                //List<Category> categories = (List<Category>)request.getAttribute("categoriesWithDetails");
                ServletUtils.forward("/views/vwProduct/ByCat.jsp", request, response);
                break;
            case "/Detail":
                String url = request.getRequestURI().toString().substring(14);
                request.setAttribute("url", url);
                int courseID = Integer.parseInt(request.getParameter("id"));
                Optional <Course> c = CourseModel.findById(courseID);
                if(c.isPresent()){
                    request.setAttribute("course", c.get());
                    ServletUtils.forward("/views/vwCourse/Details.jsp", request, response);

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
