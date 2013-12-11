<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%@ page import="java.util.ArrayList"%>
	<%@ page import="com.helpers.*"%>
	<%@ page import="com.beans.*"%>
<h1>Welcome</h1>
	<a href='/WebProject/index.jsp'>Click here to go to index page</a>
	<div id="cartDiv">
	<input type="submit" name="cart" value="Cart (0)" />
	<%
	ShoppingCartRemote cart = (ShoppingCartRemote) request.getSession().getAttribute("cart");
	int cartSize = 0;
	if(cart != null){
		cartSize = cart.getItems().size();
	}
	
	 %>
	 <input type="submit" name="cart" value="<%=cartSize %>" />
	</div>



	<%
		//Initialize the items on the website
		ArrayList<Item> items = new ArrayList<Item>();
		String[] itemNames = { "Baklava", "Basboosa", "Konafa" };
		for (String name : itemNames) {
			items.add(new Item(name));
		}
	%>
	<%
		for (Item item : items) {
	%>
	<form action="Servlet" method="get">
		<%=item.getName()%>
		<input type="submit" name="add" value="Add to Cart" />
		<input type="hidden" name="page" value="dessert.jsp">
		<input type="hidden" name="name" value="<%=item.getName()%>">
	</form>
	<%
		}
	%>
</body>
</html>