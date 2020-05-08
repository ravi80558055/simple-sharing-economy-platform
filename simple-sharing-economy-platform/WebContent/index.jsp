<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Sharing Economy Platform</title>

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

<link rel="stylesheet" href="index-style.css">
	

</head>
<body>
	<div class="container">
		<div id="jbtron" class="jumbotron col-lg-4 offset-lg-4" style="color:#000000;">
			<h1 class="display-4">Welcome</h1>
			<p class="lead">to <b>Sharing Economy Platform</b>.</p>
			<hr class="lg-4">
				<form class="form-inline" id="loginButton" action="" method="post">
					<input class="form-group form-control form-control-lg btn btn-outline-primary btn-block" type="submit" value="Go to Login" onclick="form.action='<%=request.getContextPath()%>/login.jsp';">
					<input class="form-group form-control form-control-lg btn btn-outline-primary btn-block" type="submit" value="Go to Signup" onclick="form.action='<%=request.getContextPath()%>/signup.jsp';">
				</form>
		</div>
	</div>
</body>
</html>