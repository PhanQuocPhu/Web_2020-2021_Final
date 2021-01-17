package controllers;

import beans.Category;
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
import java.util.Optional;

@WebServlet(name = "ProductFEServlet", urlPatterns = "/Product/*")
public class ProductFEServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    }
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String path = request.getPathInfo();
        switch (path){
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
                int total = ProductModel.countByCatID(catID);
                int nPages = total/LIMIT;
                if(total % LIMIT > 0)
                    nPages++;
                int[] pages = new int[nPages];
                for(int i = 0; i< nPages; i++) {
                    pages[i] = i + 1;
                }
                request.setAttribute("pages", pages);
                List<Product> list = ProductModel.findByCatId(catID, LIMIT,offset);
                request.setAttribute("products", list);
                //List<Category> categories = (List<Category>)request.getAttribute("categoriesWithDetails");
                ServletUtils.forward("/views/vwProduct/ByCat.jsp", request, response);
                break;
            case "/Detail":
                int proID = Integer.parseInt(request.getParameter("id"));
                Optional <Product> c = ProductModel.findById(proID);
                if(c.isPresent()){
                    request.setAttribute("product", c.get());
                    ServletUtils.forward("/views/vwProduct/Details.jsp", request, response);

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
