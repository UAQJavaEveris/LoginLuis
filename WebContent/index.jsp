<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<div>
		<form action="./ServletLogin" method="post" name="form" id="form">
			<div>
				<label>User:</label>
				<input id="user" name="user" type="text" >
				<label id="userL" style="display: none"></label>
			</div>
			<div>
				<label>Password:</label>
				<input id="pass" name="pass" type="password" >
				<label id="passL" style="display: none"></label>
			</div>
							
			<div>
				<input id="send" name="send" type="submit" value="click">
			</div>			
		</form>
	</div>

</body>
<script type="text/javascript">
	$("#send").click(function(){
		validate();		
	});		


function validate(){
	var user = $("#user").value;
	var pass = $("#pass").value;
	var userExp= new RegExp("^([a-z]|[A-Z])");
	if(userExp.exec(user)&& user.length<10 && userExp.exec(pass)){
			$("#form").submit();
	}
		
}

	
	


</script>
</html>

