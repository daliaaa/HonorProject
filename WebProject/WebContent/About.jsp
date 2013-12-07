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
	System.out.println("cart is " + cart);
	int cartSize = 0;
	if (cart != null) {
		cartSize = cart.getItemCount();
		System.out.println("cart is not null");
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
					data-toggle="dropdown" href="index.js/#" id="products">Desserts
						<span class="caret"></span>
				</a>
					<ul class="dropdown-menu" aria-labelledby="products">
						<li><a tabindex="-1" href="MedDessert.jsp">Mediterranean</a></li>
						<li class="divider"></li>
						<li><a tabindex="-1" href="AmDessert.jsp">American</a></li>
						<li class="divider"></li>
						<li><a tabindex="-1" href="OtherDessert.html">Other
								Desserts</a></li>
						<li class="divider"></li>
					</ul></li>
				<li><a href="About.jsp">About</a></li>
				<li><a href="Contact.jsp">Contact Us</a></li>
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
			<div id="WRchTxt0" comp="wysiwyg.viewer.components.WRichText"
				dataquery="#vqo" width="420" height="66" x="513" y="45" scale="1"
				angle="0" styleid="txtNew"
				skin="wysiwyg.viewer.skins.WRichTextNewSkin">
				<h4>
					<span color="color_0">MY STORY</span>
				</h4>
			</div>
			<div id="WRchTxt1" comp="wysiwyg.viewer.components.WRichText"
				dataquery="#20oo" width="440" height="413" x="513" y="155" scale="1"
				angle="0" styleid="txtNew"
				skin="wysiwyg.viewer.skins.WRichTextNewSkin">
				<h6>How I started</h6>
				<p> </p>
				<p>I always loved the smells of baking and going to bakery shops
					was considered heaven for me. When I travelled with my kids to
					United States, we missed the middle eastern deserts, basboosa,
					baklava, konafa, Eid patries. I started making my own pastries at
					home and fell in love with it. I would wake up early in the morning
					to bake for my kids. My family and friends were always fascinated
					by the taste of my deserts and they always suggested that I start
					my own baking business. I now sell Basboosa, Konafa, Baklava, Eid
					Cookies, Cupcakes, different flavors of cakes, Profiteroles,
					Scones, Tarts and more...</p>
				<p> </p>
				<p>Visit us on Facebook
					at https://www.facebook.com/pages/Auntyemy</p>
				<p> </p>
				<p>Eman </p>
			</div>
			<p>&nbsp;</p>
			<p>&nbsp;</p>
			<p>Note: This Website was made by Dalia Abo Sheasha as part of an
				honors project for Iowa State University.</p>
			<p>&nbsp;</p>
			<p>&nbsp;</p>
		</div>
	</div>
</div>

<script src="./Bootswatch  Default_files/jquery.min.js"></script>
<script src="./Bootswatch  Default_files/bootstrap.min.js"></script>
<script src="./Bootswatch  Default_files/bootswatch.js"></script>
</body>
</html>