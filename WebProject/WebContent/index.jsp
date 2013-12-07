<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en"><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>AuntyEmy</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta charset="utf-8">
    <link rel="stylesheet" href="css/bootstrap.css" media="screen">
    <link rel="stylesheet" href="css/bootswatch.min.css">
    <%@ page import="java.util.ArrayList"%>
	<%@ page import="com.helpers.*"%>
	<%@ page import="com.beans.*"%>
	<%
	ShoppingCartRemote cart = (ShoppingCartRemote) request.getSession().getAttribute("cart");
	System.out.println("cart is "+cart);
	int cartSize = 0;
	if(cart != null){
		cartSize = cart.getItemCount();
		System.out.println("cart is not null");
	}
	 %>
    <div class="navbar navbar-default navbar-fixed-top">
      <div class="container">
        <div class="navbar-header">
          <a href="index.jsp" class="navbar-brand">AuntyEmy</a>
          <button class="navbar-toggle" type="button" data-toggle="collapse" data-target="#navbar-main">
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
        </div>
        <div class="navbar-collapse collapse" id="navbar-main">
          <ul class="nav navbar-nav">
            <li class="dropdown">
              <a class="dropdown-toggle" data-toggle="dropdown" href="index.jsp/#" id="products">Desserts <span class="caret"></span></a>
              <ul class="dropdown-menu" aria-labelledby="products">
                <li><a tabindex="-1" href="MedDessert.jsp">Mediterranean</a></li>
                <li class="divider"></li>
                <li><a tabindex="-1" href="AmDessert.jsp">American</a></li>
                <li class="divider"></li>
                <li><a tabindex="-1" href="OtherDessert.html">Other Desserts</a></li>
                <li class="divider"></li>
              </ul>
            </li>
            <li>
              <a href="About.jsp">About</a>
            </li>
            <li>
              <a href="Contact.jsp">Contact Us</a>
            </li>
          </ul>
          <ul class="nav navbar-nav navbar-right">
				<li>
				<form action="Servlet" method="get">
				<input type="hidden" name="page" value="Cart.jsp">
				<input
					type="submit" class="btn btn-info btn-bg"
						style="background-color: #ED217C; border-color: #ED217C"
					name="cart" value="Cart (<%=cartSize%>)" />
				
					</form>
					</li>
				<li></li>
			</ul>
        </div>
        </div>
    </div>
    <div class="container">
      <div class="page-header" id="banner">
        <div class="row">
        <img src="img/logo.png"   style="width:100%; height:100%;border-radius: 4px;"></div>
      </div>
    </div>

    <script src="./Bootswatch  Default_files/jquery.min.js"></script>
    <script src="./Bootswatch  Default_files/bootstrap.min.js"></script>
    <script src="./Bootswatch  Default_files/bootswatch.js"></script>
  
</body></html>