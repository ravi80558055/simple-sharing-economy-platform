<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<title>
		Login | Sharing Economy Platform
	</title>
	
	<!--linking bootstrap stylesheet-->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/css/bootstrap.min.css" integrity="sha384-PsH8R72JQ3SOdhVi3uxftmaW6Vc51MKb0q5P2rRUpPvrszuE4W1povHYgTpBfshb" crossorigin="anonymous">

	<!--linking jquery(before BS javascript as it depends on it-->
	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>

	<!-- Popper JS -->
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.6/umd/popper.min.js"></script>

	<!-- Optional theme -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">

	<!--linking bootstrap javascript-->
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/js/bootstrap.min.js" integrity="sha384-alpBpkh1PFOepccYVYDB4do5UnbKysX5WZXm3XxPqe5iKTfUKjNkCk9SaVuEZflJ" crossorigin="anonymous"></script>
	
	<link rel="stylesheet" href="login-style.css">
	
	</head>
	<body>
		<h2>Sharing Economy Platform</h2>
		<div class="container">
		
			<!-- Success Message -->
			<div id="successMessage" align="center" class="border-success">
				<p style="color:green;" onclick="removeSuccessMessage()"><b>${successMessage}</b></p>
			</div>
			
			<div id="loginBody" class="row row-style">
				<div>
					<p id="hello">Hello:)</p>
					<p id="afterHello"><strong>Login</strong> to your account <span id="rightArrow">&#8594;</span></p>
				</div>
				<div id="form" class="col-lg-4 offset-lg-2">
					<form action="<%=request.getContextPath()%>/login" method="post">
						<div class="form-group">
							<label for="userCategory">User Category</label>
							<select required id="userCategory" name="userCategory" class="form-control">
								<option selected disabled value="">Select your category...</option>
								<option value="Admin">Admin</option>
								<option value="Vendor">Vendor</option>
								<option value="Customer">Customer</option>
							</select>
						</div>
						<div class="form-group">
							<label for="userId">User-Id</label>
							<input type="text" class="form-control" name="userId" placeholder="Customer/Vendor ID">
						</div>
						<div class="form-group">
							<label for="password">Password</label>
							<input required type="password" class="form-control" name="password">
						</div>		
						<div class="form-group">
							<a href=""><i>Forgot Password?</i></a>
						</div>
						<div class="form-group">
							<input type="submit" value="Log-in" class="btn btn-outline-primary btn-block">
						</div>
						<p>Don't have an account? <a href="signup.jsp">Signup</a></p>
					</form>
					
					<!-- Error Message -->
					<div id="errorMessage">
						<p style="color:red;" onclick="removeErrorMessage()"><b>${loginErrorMessage}</b></p>
					</div>
				</div>
			</div>
		</div>	
		
		<script>
		 	function removeErrorMessage(){
		 		document.getElementById("errorMessage").style.display = "none";
		 	}
		 	
		 	function removeSuccessMessage(){
		 		document.getElementById("successMessage").style.display = "none";
		 	}
		</script>
	</body>
</html>
