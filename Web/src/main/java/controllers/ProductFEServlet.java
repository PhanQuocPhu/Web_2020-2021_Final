package controllers;

import beans.Product;
import models.ProductModel;
import utils.ServletUtils;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "ProductFEServlet", urlPatterns = "/Product/*")
public class ProductFEServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    }
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String path = request.getPathInfo();
        switch (path){
            case "/ByCat":
                int catID = Integer.parseInt(request.getParameter("id"));
                List<Product> list = ProductModel.findByCatId(catID);
                request.setAttribute("products", list);
                ServletUtils.forward("/views/vwProduct/ByCat.jsp", request, response);
                break;
            case "/Detail":
                break;
            default:
                ServletUtils.redirect("NotFound", request, response);
                break;
        }
    }
}
