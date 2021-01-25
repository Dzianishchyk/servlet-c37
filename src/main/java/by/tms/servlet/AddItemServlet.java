package by.tms.servlet;

import by.tms.model.Item;
import by.tms.storage.InMemoryItemStorage;


import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;



@WebServlet(urlPatterns = "/addItem")
public class AddItemServlet extends HttpServlet {


    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        getServletContext().getRequestDispatcher("/pages/addItem.jsp").forward(req,resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String name = req.getParameter("name");
        String description = req.getParameter("description");
        double price = Double.parseDouble(req.getParameter("price"));
        Item item = new Item(name,description,price);
        boolean save = InMemoryItemStorage.getInstance().save(item);
        if (save) {
            resp.sendRedirect("/");
        } else {
            getServletContext().getRequestDispatcher("/pages/addItem.jsp").forward(req, resp);
        }


    }
}
