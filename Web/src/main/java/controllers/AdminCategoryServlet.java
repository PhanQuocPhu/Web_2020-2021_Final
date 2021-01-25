package controllers;

import beans.Category;
import models.CategoryModel;
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

@WebServlet(name = "AdminCategoryServlet", urlPatterns = "/Admin/Category/*")

public class AdminCategoryServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String path = request.getPathInfo();
        switch (path) {
            case "/Add":
                addCategory(request,response);
                break;
            case "/Update":
                updateCategory(request, response);
                break;
            case "/Delete":
                deleteCategory(request,response);
                break;
            default:
                ServletUtils.redirect("/NotFound", request, response);
        }
    }

    private void addCategory(HttpServletRequest request,HttpServletResponse response)throws ServletException, IOException  {
        String name = request.getParameter("CatName");
        int id_type = Integer.parseInt(request.getParameter("id_type"));
        Category c = new Category(-1, name, id_type);
        CategoryModel.saveCategory(c);
        ServletUtils.redirect("/Admin/Category", request, response);
    }
    private void deleteCategory(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("CatID"));
        CategoryModel.delete(id);
        ServletUtils.redirect("/Admin/Category", request, response);
    }

    private void updateCategory(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("CatID"));
        String name = request.getParameter("CatName");
        int idtype = Integer.parseInt(request.getParameter("id_type"));

        Category c = new Category(id, name,idtype);
        CategoryModel.update(c);
        ServletUtils.redirect("/Admin/Category", request, response);

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String path = request.getPathInfo();
        if (path == null || path.equals("/")) {
            path = "/Index";
        }
        switch (path) {
            case "/Index":
                List<Category> list = CategoryModel.getAllCategory();
                request.setAttribute("categories", list);
                ServletUtils.forward("/views/vwCategory/Index.jsp", request, response);
                break;
            case "/Add":
                ServletUtils.forward("/views/vwCategory/Add.jsp", request, response);
                break;
            case "/Edit":
                int id = Integer.parseInt(request.getParameter("id"));
                Optional<Category> c = CategoryModel.findById(id);
                if(c.isPresent()) {
                    request.setAttribute("category", c.get());
                    ServletUtils.forward("/views/vwCategory/Edit.jsp", request, response);
                }
                else {
                    ServletUtils.redirect("/Admin/Category", request, response);
                }
                break;

            default:
                ServletUtils.redirect("/NotFound", request, response);
                break;
        }
    }
}
