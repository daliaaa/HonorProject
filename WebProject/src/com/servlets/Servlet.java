package com.servlets;

import java.io.IOException;
import java.io.PrintWriter;

import javax.ejb.EJB;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.beans.ShoppingCartRemote;
import com.helpers.Item;

/**
 * Servlet implementation class Servlet
 */
@WebServlet("/Servlet")
public class Servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	@EJB
	ShoppingCartRemote cartBean;

	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		if(request.getParameter("update") == null) {
			System.out.println("entering Servlet doGet method....");

			if (request.getParameter("name") != null) {
				System.out.println("Adding " + request.getParameter("name"));
				cartBean.addItem(new Item(request.getParameter("name"), request
						.getParameter("imgPath"), request.getParameter("desc"),
						Integer.parseInt(request.getParameter("price")), Integer.parseInt(request.getParameter("count"))));
			}
			for (Item item : cartBean.getItems()) {
				System.out.println("Existing: " + item.getName());
			}

			//PrintWriter out = response.getWriter();
			System.out.println("Attribute " + request.getParameter("page"));
			// HttpSession session = request.getSession();
			request.getSession().setAttribute("cart", cartBean);
			request.getRequestDispatcher(request.getParameter("page")).forward(
					request, response);

			System.out.println("exiting Servlet doGet method....");
		} else {
			System.out.println("update was clicked");
			for (Item item : cartBean.getItems()) {
				int currentCount = Integer.parseInt(request.getParameter(item.getName()));
				if(currentCount != item.getCount()){
					item.setCount(currentCount);
					System.out.println("Updating: " + item.getName() + " to " + item.getCount());
				}
			}
			cartBean.removeItem(cartBean.getItems().get(0));
			request.getSession().setAttribute("cart", cartBean);
			request.getRequestDispatcher(request.getParameter("page")).forward(
					request, response);
		}
		

	}

}
