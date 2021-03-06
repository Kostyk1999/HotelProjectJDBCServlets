package com.lv339.servlets.cabinet.management.customer;

import com.lv339.entity.Customer;
import com.lv339.entity.User;
import com.lv339.service.MessageForOutput;
import com.lv339.service.management.CustomerService;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/update-customer")
public class UpdateCustomerServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Customer customer = new Customer();
        CustomerService customerService = new CustomerService();

        User user = (User) req.getSession().getAttribute("User");
        String oldEmail = user.getEmail();
        String newEmail = req.getParameter("newEmail");

        customer.setEmail(newEmail.equals("") ? oldEmail : newEmail);
        customer.setFirstName(req.getParameter("firstName"));
        customer.setLastName(req.getParameter("lastName"));
        customer.setPassword(req.getParameter("password"));
        customer.setContactNumber(req.getParameter("phoneNumber"));

        customerService.updateCustomer(customer, oldEmail);
        MessageForOutput.setMessageToRequest(req);

        RequestDispatcher rq = getServletContext().getRequestDispatcher("/update-customer.jsp");
        rq.include(req, resp);
    }
}
