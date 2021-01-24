package controllers;

import beans.Categories_type;
import beans.Category;
import beans.User;
import models.CateTypeModel;
import models.CategoryModel;
import models.CourseModel;
import models.UserModel;
import utils.ServletUtils;
import beans.Course;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;
import java.util.Optional;

@WebServlet(name = "AdminProductServlet", urlPatterns = "/Admin/Product/*")
public class AdminProductServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String path = request.getPathInfo();
        if (path == null || path.equals("/")) {
            path = "/Index";
        }
        switch (path) {
            case "/Index":
////                final int LIMITcourse = 6;
////                int current = 1;
//////                if(request.getParameter("page")!=null) {
////               current = Integer.parseInt(request.getParameter("page"));
//////                }
////                int offsetTop = (current - 1)*LIMITcourse;
////                request.setAttribute("current", current);
////                int totalcourse = CourseModel.getAllCourses().size();
////                int nPagesCourse = totalcourse/LIMITcourse;
////                if(totalcourse % LIMITcourse > 0)
////                    nPagesCourse++;
////                int[] pagescourse = new int[nPagesCourse];
////                for(int i = 0; i< nPagesCourse; i++) {
////                    pagescourse[i] = i + 1;
////                }
////                request.setAttribute("pages", pagescourse);
//                int currentPage2 = Integer.parseInt(request.getParameter("currentPage"));
//                int recordsPerPage = Integer.parseInt(request.getParameter("recordsPerPage"));
////                int currentPage2 = 1;
////                int recordsPerPage = 6;
//
//                int rows = CourseModel.getAllCourses().size();
//                int nOfPages = rows / recordsPerPage;
//                if (nOfPages % recordsPerPage > 0) {
//                    nOfPages++;
//                }
//                int offset2 = (currentPage2 - 1)*recordsPerPage;
//                request.setAttribute("noOfPages", nOfPages);
//                request.setAttribute("currentPage2", currentPage2);
//                request.setAttribute("recordsPerPage", recordsPerPage);

                List<Course> list1 = CourseModel.getAllCourses();
                List<Categories_type> catetypes = CateTypeModel.getAllCateType();
                List <Category> allcate = CategoryModel.getAllCategory();
                request.setAttribute("categorybyid", allcate);

                //int id_type = Integer.parseInt(request.getParameter("id_type"));
//                List<Category> list3 = CategoryModel.getAllCategoryByid(1);

               // request.setAttribute("category", list3);
                List<User> user = UserModel.getAlluser();
                request.setAttribute("user", user);
                request.setAttribute("catetype", catetypes);
                request.setAttribute("course", list1);
                ServletUtils.forward("/views/vwAdminProduct/Index.jsp", request, response);
                break;
            case "/ByCat":
                int catID = Integer.parseInt(request.getParameter("id"));
                request.setAttribute("catID", catID);
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
                List<Course> list2 = CourseModel.findByCatId(catID, LIMIT,offset);
                request.setAttribute("products", list2);
                //List<Category> categories = (List<Category>)request.getAttribute("categoriesWithDetails");
                ServletUtils.forward("/views/vwAdminProduct/ByCat.jsp", request, response);
                break;
            case "/Detail":
                String url = request.getRequestURI().toString().substring(14);
                request.setAttribute("url", url);
                int courseID = Integer.parseInt(request.getParameter("id"));
                List<User> u = UserModel.getAlluser();
                request.setAttribute("user", u);
                Optional<Course> c = CourseModel.findById(courseID);
                if(c.isPresent()){
                    request.setAttribute("course", c.get());
                    ServletUtils.forward("/views/vwAdminProduct/Details.jsp", request, response);

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
