package vn.edu.hcmuaf.fit.controller;

import vn.edu.hcmuaf.fit.model.Category;
import vn.edu.hcmuaf.fit.model.Propertie;
import vn.edu.hcmuaf.fit.sevice.PropertieService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "ListPropertie", value = "/ListPropertie")
public class ListPropertie extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        PropertieService pds = new PropertieService();
        List<Propertie> listProperties = pds.getListPropertie();
        request.setAttribute("list2", listProperties);
        request.getRequestDispatcher("properties.jsp").forward(request, response);
    }

    protected void doGet1(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String[] pp = {"Giá từ thấp đến cao", "Giá từ cao đến thấp"};
        boolean[] pb = new boolean[pp.length + 1];
        pb[0] = true;
        PropertieService pds = new PropertieService();
        List<Category> list = pds.getListCategory();
        List<Propertie> up = pds.getListPropertieByPriceUp();
        List<Propertie> down = pds.getListPropertieByPriceDown();
        boolean[] chid = new boolean[list.size()+1];
        chid[0] = true;
        request.setAttribute("data", list);
        request.setAttribute("up", up);
        request.setAttribute("down", down);
        request.setAttribute("pp", pp);
        request.setAttribute("pb", pb);
        request.setAttribute("chid", chid);
        request.getRequestDispatcher("properties.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
