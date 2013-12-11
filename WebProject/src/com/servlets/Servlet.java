package com.servlets;

import java.io.IOException;
import java.util.ArrayList;

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
			if (request.getParameter("name") != null) {
				cartBean.addItem(new Item(request.getParameter("name"), request
						.getParameter("imgPath"), request.getParameter("desc"),
						Integer.parseInt(request.getParameter("price")), Integer.parseInt(request.getParameter("count"))));
			}
			request.getSession().setAttribute("cart", cartBean);
			request.getRequestDispatcher(request.getParameter("page")).forward(
					request, response);
		} else {
			ArrayList<Item> items = cartBean.getItems();
			for(int i=0; i<items.size(); i++){
				int currentCount = Integer.parseInt(request.getParameter(items.get(i).getName()));
				if(currentCount != items.get(i).getCount()){
					if(currentCount > 0){
					cartBean.setItemCount(i, currentCount);
					} else {
						cartBean.removeItem(i);
					}
				}
			}
			
			request.getSession().setAttribute("cart", cartBean);
			request.getRequestDispatcher(request.getParameter("page")).forward(
					request, response);
		}
		

	}

}
