<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>AuntyEmy</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta charset="utf-8">
<link rel="stylesheet" href="css/bootstrap.css" media="screen">
<link rel="stylesheet" href="css/bootswatch.min.css">
<%@ page import="java.util.ArrayList"%>
<%@ page import="com.helpers.*"%>
<%@ page import="com.beans.*"%>
<%
	ShoppingCartRemote cart = (ShoppingCartRemote) request.getSession()
	.getAttribute("cart");
	int cartSize = 0;
	if (cart != null) {
		cartSize = cart.getTotalItemCount();
	}
%>
<div class="navbar navbar-default navbar-fixed-top">
	<div class="container">
		<div class="navbar-header">
			<a href="index.jsp" class="navbar-brand">AuntyEmy</a>
			<button class="navbar-toggle" type="button" data-toggle="collapse"
				data-target="#navbar-main">
				<span class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>
		</div>
		<div class="navbar-collapse collapse" id="navbar-main">
			<ul class="nav navbar-nav">
				<li class="dropdown"><a class="dropdown-toggle"
					data-toggle="dropdown" href="index.jsp/#" id="products">Desserts
						<span class="caret"></span>
				</a>
					<ul class="dropdown-menu" aria-labelledby="products">
						<li><a tabindex="-1" href="MedDessert.jsp">Mediterranean</a></li>
						<li class="divider"></li>
						<li><a tabindex="-1" href="AmDessert.jsp">American</a></li>
						<li class="divider"></li>
						<li><a tabindex="-1" href="FrDessert.jsp">French</a></li>
						<li class="divider"></li>
					</ul></li>
				<li><a href="About.jsp">About</a></li>
				<li><a href="Contact.jsp">Contact Us</a></li>
			</ul>
			<ul class="nav navbar-nav navbar-right">
				<li>
					<form action="Servlet" method="get">
						<input type="hidden" name="page" value="Cart.jsp"> <input
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
		<form action="Servlet" method="get">
			<input type="hidden" name="page" value="FrDessert.jsp"> 
			<div class="row">
				<p>
					<img src="img/creme.jpg" width="130" height="100"
						alt="Crème Brûlée" style="border: 2px solid #ED217C;"><br>
					<br>Crème Brûlée: A bowl of delicious custard covered with sugar crust.<br>
					( $5/bowl )
				</p>
				<input type="hidden" name="name" value="Creme Brulee"> <input
					type="hidden" name="imgPath" value="img/creme.jpg"> <input
					type="hidden" name="desc"
					value="A bowl of delicious custard covered with sugar crust. ">
				<input type="hidden" name="price" value="5"> <input
					type="number" name="count" min="0" max="100" value="1"
					maxlength="2" size="4"> <input
					type="submit" class="btn btn-primary btn-sm"
					style="background-color: #F282A2; border-color: #F282A2"
					name="creme" value="Add to Cart" /> <br> <br>
			</div>
		</form>
		<form action="Servlet" method="get">
			<input type="hidden" name="page" value="FrDessert.jsp"> 
			<div class="row">
				<p>
					<img src="img/crepe.jpg" width="130" height="100"
						alt="Crepe Cake" style="border: 2px solid #ED217C;"><br>
					<br>Crepe Cake: Five mouth watering crepes with chocolate sauce on the side. <br> (
					$7/5 )
				</p>
				<input type="hidden" name="name" value="Crepe"> <input
					type="hidden" name="imgPath" value="img/crepe.jpg"> <input
					type="hidden" name="desc"
					value="Five mouth watering crepes with chocolate sauce on the side. ">
				<input type="hidden" name="price" value="7"> <input
					type="number" name="count" min="0" max="100" value="1"
					maxlength="2" size="4"> <input
					type="submit" class="btn btn-primary btn-sm"
					style="background-color: #F282A2; border-color: #F282A2"
					name="crepe" value="Add to Cart" /> <br> <br>
			</div>
		</form>

		<form action="Servlet" method="get">
			<input type="hidden" name="page" value="FrDessert.jsp"> 
			<div class="row">
				<p>
					<img src="img/caramel.jpg" width="130" height="100"
						alt="Crème Caramel" style="border: 2px solid #ED217C;"><br>
					<br>Carrot Cake: Sweet custard covered with syrup. <br>
					( $5/bowl )
				</p>
				<input type="hidden" name="name" value="Crème Caramel"> <input
					type="hidden" name="imgPath" value="img/caramel.jpg"> <input
					type="hidden" name="desc"
					value="Sweet custard covered with syrup. ">
				<input type="hidden" name="price" value="5"> <input
					type="number" name="count" min="0" max="100" value="1"
					maxlength="2" size="4"> <input
					type="submit" class="btn btn-primary btn-sm"
					style="background-color: #F282A2; border-color: #F282A2"
					name="caramel" value="Add to Cart" /> <br> <br>
			</div>
		</form>

	</div>
</div>

<script src="./Bootswatch  Default_files/jquery.min.js"></script>
<script src="./Bootswatch  Default_files/bootstrap.min.js"></script>
<script src="./Bootswatch  Default_files/bootswatch.js"></script>
</body>
</html>