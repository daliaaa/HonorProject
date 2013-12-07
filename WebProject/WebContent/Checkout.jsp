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
					data-toggle="dropdown" href="index.jsp/#" id="products">Desserts
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
			<input type="hidden" name="page" value="Cart.jsp"> <input
				type="hidden" name="update" value="true">
			<table style="width: 100%; border-radius: 4px;" border="1">
				<tr>
					<th>Item</th>
					<th>Count</th>
					<th>Price</th>
				</tr>
				<%
					int totalPrice = 0;
					for (Item item : cart.getItems()) {
						System.out.println(item.getCount());
						totalPrice += item.getCount() * item.getPrice();
				%>
				<tr>
					<td><img src="<%=item.getImgPath()%>" width="50" height="50"
						alt="Basboosa" style="border: 2px solid #ED217C;"> <%=item.getName()%>:
						<%=item.getDescription()%></td>
					<td><%=item.getCount()%></td>
					<td>$<%=item.getPrice()%></td>
				</tr>
				<%
					}
				%>
				<tr>
					<th>Total</th>
					<th></th>
					<th>$<%=totalPrice%>
				</tr>
			</table>

		</form>
	</div>
	<div class="alert alert-dismissable alert-info">
		<button type="button" class="close" data-dismiss="alert">×</button>
		<strong>Your order total is $<%=totalPrice%>.
		</strong>
	</div>
	<br> <br>
	<form class="bs-example form-horizontal">
	<div class="row">
		<div class="col-lg-12">
			<div class="well">
				
					<fieldset>
						<legend>Billing Information</legend>
						<div class="form-group">
							<label for="inputFirstName" class="col-lg-2 control-label">First
								Name</label>
							<div class="col-lg-10">
								<input type="text" class="form-control" id="inputFirstName"
									placeholder="First Name">
							</div>
						</div>
						<div class="form-group">
							<label for="inputLastName" class="col-lg-2 control-label">Last
								Name</label>
							<div class="col-lg-10">
								<input type="text" class="form-control" id="inputLastName"
									placeholder="Last Name">
							</div>
						</div>
						<div class="form-group">
							<label for="inputAddress1" class="col-lg-2 control-label">Address
								1</label>
							<div class="col-lg-10">
								<input type="text" class="form-control" id="inputAddress1"
									placeholder="Address 1">
							</div>
						</div>
						<div class="form-group">
							<label for="inputAddress2" class="col-lg-2 control-label">Address
								2</label>
							<div class="col-lg-10">
								<input type="text" class="form-control" id="inputAddress2"
									placeholder="Address 2">
							</div>
						</div>
						<div class="form-group">
							<label for="inputCity" class="col-lg-2 control-label">City</label>
							<div class="col-lg-10">
								<input type="text" class="form-control" id="inputCity"
									placeholder="City">
							</div>
						</div>
						<div class="form-group">
							<label for="select" class="col-lg-2 control-label">State</label>
							<div class="col-lg-10">
								<select class="form-control" id="select">
									<option>Select State</option>
									<option value="AL">Alabama</option>
									<option value="AK">Alaska</option>
									<option value="AZ">Arizona</option>
									<option value="AR">Arkansas</option>
									<option value="CA">California</option>
									<option value="CO">Colorado</option>
									<option value="CT">Connecticut</option>
									<option value="DE">Delaware</option>
									<option value="DC">District Of Columbia</option>
									<option value="FL">Florida</option>
									<option value="GA">Georgia</option>
									<option value="HI">Hawaii</option>
									<option value="ID">Idaho</option>
									<option value="IL">Illinois</option>
									<option value="IN">Indiana</option>
									<option value="IA">Iowa</option>
									<option value="KS">Kansas</option>
									<option value="KY">Kentucky</option>
									<option value="LA">Louisiana</option>
									<option value="ME">Maine</option>
									<option value="MD">Maryland</option>
									<option value="MA">Massachusetts</option>
									<option value="MI">Michigan</option>
									<option value="MN">Minnesota</option>
									<option value="MS">Mississippi</option>
									<option value="MO">Missouri</option>
									<option value="MT">Montana</option>
									<option value="NE">Nebraska</option>
									<option value="NV">Nevada</option>
									<option value="NH">New Hampshire</option>
									<option value="NJ">New Jersey</option>
									<option value="NM">New Mexico</option>
									<option value="NY">New York</option>
									<option value="NC">North Carolina</option>
									<option value="ND">North Dakota</option>
									<option value="OH">Ohio</option>
									<option value="OK">Oklahoma</option>
									<option value="OR">Oregon</option>
									<option value="PA">Pennsylvania</option>
									<option value="RI">Rhode Island</option>
									<option value="SC">South Carolina</option>
									<option value="SD">South Dakota</option>
									<option value="TN">Tennessee</option>
									<option value="TX">Texas</option>
									<option value="UT">Utah</option>
									<option value="VT">Vermont</option>
									<option value="VA">Virginia</option>
									<option value="WA">Washington</option>
									<option value="WV">West Virginia</option>
									<option value="WI">Wisconsin</option>
									<option value="WY">Wyoming</option>
								</select> <br>
							</div>
						</div>
						<div class="form-group">
							<label for="inputZipCode" class="col-lg-2 control-label">Zip
								Code</label>
							<div class="col-lg-10">
								<input type="text" class="form-control" id="inputZipCode"
									placeholder="xxxxx">
							</div>
						</div>
						<div class="form-group">
							<label for="inputPhone" class="col-lg-2 control-label">Phone
								Number</label>
							<div class="col-lg-10">
								<input type="text" class="form-control" id="inputPhone"
									placeholder="xxx-xxx-xxxx">
							</div>
						</div>
						<div class="form-group">
							<label for="inputEmail" class="col-lg-2 control-label">Email
								Address</label>
							<div class="col-lg-10">
								<input type="text" class="form-control" id="inputEmail"
									placeholder="example@example.com">
							</div>
						</div>
					</fieldset>
			
			</div>
		</div>
	</div>
	<br> <br>
	<div class="row">
		<div class="col-lg-12">
			<div class="well">
				
					<fieldset>
						<legend>Payment Method</legend>
						<div class="form-group">
							<label for="select" class="col-lg-2 control-label">Credit/Debit
								Card Type</label>
							<div class="col-lg-10">
								<select class="form-control" id="select">
									<option>Select Credit Card</option>
									<option>Visa</option>
									<option>MasterCard</option>
									<option>Discover</option>
								</select> <br>
							</div>
						</div>
						<div class="form-group">
							<label for="inputCardNumber" class="col-lg-2 control-label">Credit
								Card Number</label>
							<div class="col-lg-10">
								<input type="text" class="form-control" id="inputCardNumber"
									placeholder="">
							</div>
						</div>
						<div class="form-group">
							<label for="select" class="col-lg-2 control-label">Credit/Debit
								Card Expiration</label>
							<div class="col-lg-10">
								<select class="form-control" id="select">
									<option value=''>Month</option>
									<option value='01'>Janaury</option>
									<option value='02'>February</option>
									<option value='03'>March</option>
									<option value='04'>April</option>
									<option value='05'>May</option>
									<option value='06'>June</option>
									<option value='07'>July</option>
									<option value='08'>August</option>
									<option value='09'>September</option>
									<option value='10'>October</option>
									<option value='11'>November</option>
									<option value='12'>December</option>
								</select> <br> <select class="form-control" id="select">
									<option value=''>Year</option>
									<option value='13'>2013</option>
									<option value='14'>2014</option>
									<option value='15'>2015</option>
								</select> <br>
							</div>
						</div>
						<div class="form-group">
							<label for="inputSecuity" class="col-lg-2 control-label">Secuity Code</label>
							<div class="col-lg-10">
								<input type="text" class="form-control" id="inputSecurity"
									placeholder="">
							</div>
						</div>
					</fieldset>
			
			</div>
		</div>
	</div>
	<input type="submit"
					class="btn btn-primary pull-right"
					style="background-color: #ED217C; border-color: #ED217C"
					name="submitButton" value="Submit" />
	</form>
<br><br>
	<script src="./Bootswatch  Default_files/jquery.min.js"></script>
	<script src="./Bootswatch  Default_files/bootstrap.min.js"></script>
	<script src="./Bootswatch  Default_files/bootswatch.js"></script>
	</body>
</html>