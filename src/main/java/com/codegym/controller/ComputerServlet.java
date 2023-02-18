package com.codegym.controller;

import com.codegym.model.dto.ComputerDto;
import com.codegym.model.service.ComputerService;
import com.codegym.model.service.ComputerServiceImpl;

import java.io.*;
import java.sql.SQLException;
import javax.servlet.ServletException;
import javax.servlet.http.*;
import javax.servlet.annotation.*;

@WebServlet(urlPatterns = { "/c", "/computers"})
public class ComputerServlet extends HttpServlet {
    private ComputerService computerService;

    public void init() {computerService = new ComputerServiceImpl();}

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException,
            ServletException {
       String action = request.getParameter("action");
       if(action == null){ action = ""; }
       try {
            switch (action){
                case "edit":
                    int id = Integer.parseInt(request.getParameter("id"));
                    ComputerDto computerDto = computerService.getComputer(id);
                    request.setAttribute("computer",computerDto);
                    request.getRequestDispatcher("WEB-INF/view/computer/edit.jsp").forward(request, response);
                    break;
                case "delete":
                    int deleteId = Integer.parseInt(request.getParameter("id"));
                    request.setAttribute("computer", computerService.getComputer(deleteId));
                    request.getRequestDispatcher("/WEB-INF/view/computer/delete.jsp").forward(request,response);
                    break;
                case "add":
                    request.getRequestDispatcher("/WEB-INF/view/computer/add.jsp").forward(request,response);
                    break;
                default:
                   request.setAttribute("computers", computerService.listAllComputers() );
                   request.getRequestDispatcher("/WEB-INF/view/computer/list.jsp").forward(request,response);
                    break;
            }
       } catch (SQLException e) {
            throw new RuntimeException(e);

       }
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String action = req.getParameter("action");
        try {
            switch (action){
                case "edit":
                    int id = Integer.parseInt(req.getParameter("id"));
                    String brand = req.getParameter("brand");
                    Float price = Float.parseFloat(req.getParameter("price"));
                    Float ram = Float.parseFloat(req.getParameter("ram"));
                    String detail = req.getParameter("detail");
                    computerService.updateComputer(id, new ComputerDto(brand, price, ram, detail));
                    resp.sendRedirect("/computers");
                    break;
                case "delete":
                    int deleteId = Integer.parseInt(req.getParameter("id"));
                    computerService.deleteComputer(deleteId);
                    resp.sendRedirect("/c");
                    break;
                case "add":
//                    int addId = Integer.parseInt(req.getParameter("id"));
                    String addBrand = req.getParameter("brand");
                    Float addPrice = Float.parseFloat(req.getParameter("price"));
                    Float addRam = Float.parseFloat(req.getParameter("ram"));
                    String addDetail = req.getParameter("detail");
                    computerService.insertComputer( new ComputerDto(addBrand,addPrice, addRam, addDetail));
                    resp.sendRedirect("/c");
                    break;

            }
        }catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

    public void destroy() {
    }
}