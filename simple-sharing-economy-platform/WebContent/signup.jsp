<html>
<head>
	<title>
		Signup | Sharing Economy Platform
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
	
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
	
	<link rel="stylesheet" href="signup-style.css">
	</head>
	<body>
		<h2>Sharing Economy Platform</h2>
		<div class="container">
			<div id="loginBody" class="row row-style">					
				<div id="form" class="col-lg-8 offset-lg-2">
					<form name="signupForm" action="<%=request.getContextPath()%>/signup" method="post">
						<div class="card  border-success mb-3">
							<div class="card-header bg-default border-primary text-center">
								<p><strong style="color:#1e1f45; font-size:20px; letter-spacing:3px;">Signup</strong></p>
								<div class="form-group">
									<select required id="userCategory" name="userCategory" class="form-control">
										<option selected disabled value="">Signup as...</option>
										<option value="Customer">Customer</option>
										<option value="Vendor">Vendor</option>
									</select>
								</div>
							</div>
							
							<!-- Customer registration form(body) -->
							<!-- <fieldset disabled> -->
								<div id="registrationForm" class="card-body">
									<div class="form-group input-group">
										<input required id="firstName" name="firstName" type="text" class="form-control" placeholder="First Name" pattern="[a-zA-Z]+">
										<input required id="lastName" name="lastName" type="text" class="form-control" placeholder="Last Name" pattern="[a-zA-Z]+">
									</div>
									
									<div class="form-group input-group">
										<input required id="dob" name="dob" placeholder="D.O.B." class="form-control" type="text" onfocus="(this.type='date')" max="2005-12-31">
									</div>
									
									<div class="form-group">
										<select required id="gender" name="gender" class="form-control">
											<option selected disabled value="">Gender...</option>
											<option value="Male">Male</option>
											<option value="Female">Female</option>
											<option value="Other">Other</option>
										</select>
									</div>
									
									<div class="form-group">
										<input required id="phone" name="phone" type="phone" class="form-control" name="contact" placeholder="Contact" pattern="[7-9]{1}[0-9]{9}">
									</div>
									
									<div class="form-group input-group">
										<input required id="address" name="address" type="text" class="form-control" placeholder="Address" pattern="[A-Za-z0-9'\.\-\s\,]{4,30}">
										<input required id="city" name="city" type="text" class="form-control" placeholder="City" pattern="^[a-zA-Z\s]{2,30}">
									</div>
									
									<div class="form-group input-group">
										<select id="state" name="state" class="form-control">
											<option selected disabled value="">State...</option>
											<option value="Andhra Pradesh">Andhra Pradesh</option>
											<option value="Andaman and Nicobar Islands">Andaman and Nicobar Islands</option>
											<option value="Arunachal Pradesh">Arunachal Pradesh</option>
											<option value="Assam">Assam</option>
											<option value="Bihar">Bihar</option>
											<option value="Chandigarh">Chandigarh</option>
											<option value="Chhattisgarh">Chhattisgarh</option>
											<option value="Dadar and Nagar Haveli">Dadar and Nagar Haveli</option>
											<option value="Daman and Diu">Daman and Diu</option>
											<option value="Delhi">Delhi</option>
											<option value="Lakshadweep">Lakshadweep</option>
											<option value="Puducherry">Puducherry</option>
											<option value="Goa">Goa</option>
											<option value="Gujarat">Gujarat</option>
											<option value="Haryana">Haryana</option>
											<option value="Himachal Pradesh">Himachal Pradesh</option>
											<option value="Jammu and Kashmir">Jammu and Kashmir</option>
											<option value="Jharkhand">Jharkhand</option>
											<option value="Karnataka">Karnataka</option>
											<option value="Kerala">Kerala</option>
											<option value="Madhya Pradesh">Madhya Pradesh</option>
											<option value="Maharashtra">Maharashtra</option>
											<option value="Manipur">Manipur</option>
											<option value="Meghalaya">Meghalaya</option>
											<option value="Mizoram">Mizoram</option>
											<option value="Nagaland">Nagaland</option>
											<option value="Odisha">Odisha</option>
											<option value="Punjab">Punjab</option>
											<option value="Rajasthan">Rajasthan</option>
											<option value="Sikkim">Sikkim</option>
											<option value="Tamil Nadu">Tamil Nadu</option>
											<option value="Telangana">Telangana</option>
											<option value="Tripura">Tripura</option>
											<option value="Uttar Pradesh">Uttar Pradesh</option>
											<option value="Uttarakhand">Uttarakhand</option>
											<option value="West Bengal">West Bengal</option>
										</select>
										<input required id="zip" name="zip" type="text" class="form-control" pattern="[1-9]{1}{0-9}{5}" placeholder="Zip">
									</div>
									
									<div class="form-group">
										<input required id="emailId" type="email" class="form-control" name="emailId" placeholder="Email">
									</div>
									
									<div class="form-group">
										<input required id="userId" type="text" class="form-control" name="userId" placeholder="Customer/Vendor ID">
									</div>
									
									<div class="form-group">
										<input required id="password" type="password" class="form-control" name="password" placeholder="Password" pattern="[a-zA-Z0-9]{6,}"><br>
										<small class="form-text text-muted""><i>(NOTE: password must be more than 6 characters including only alphanumerics and digits.)</i></small>
									</div>
								</div>
							
							<div class="card-footer bg-default border-primary">
								<div class="form-group">
									<input type="submit" class="form-control btn btn-outline-primary" value="Signup">
								</div>
							</div>
						</div>
					</form>
					<p>Having an account? <a href="index.jsp">Log-in</a></p>
					
					<!-- Error message -->
					<div id="message">
				  		<p style="color:red;" onclick="removeMessage()"><b>${signupErrorMessage}</b></p>
				  	</div>
				</div>
			</div>
		</div>	
		
		<script>
			
		$(document).ready(function() {
			  $(".login-btn").click(function() {
			    $("input, select").each(function() { //iterate all inputs
			      var $this = $(this);
			      var value = $this.val();
			      $this.removeClass("makeRed"); //reset the class first
			      if (value.length == 0) {
			        $this.addClass("makeRed"); //add if input is empty
			      }
			    });
			    if ( $(".makeRed").length > 0 )
			    {
			        alert( "Some validation errors" );
			    }
			  });
			  $("input,select").focus(function() {
			    $(this).removeClass("makeRed"); //on focus of the input remove the markRed class
			  })
			});
			
		 	function removeMessage(){
		 		document.getElementById("message").style.display = "none";
		 	}
	 	</script>
		<!--Form Validation Scripts-->
		<script type="text/js" src="signup-script.js"></script>
	</body>
</html>
