<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
<script type="text/javascript">
function onValidate(e){
	var a=document.getElementById('name').value;
	if(a.length < 2)
		{alert("sda");
		return false;}
	return true;
}
</script>

<style type="text/css">
label{float:left;width:100px;}
</style>

</head>

<body>

<h1 align="center">ENTER DETAILS</h1>
<form:form action="homeProcess" modelAttribute="data">
<label for="name">Name</label>
<form:input  id="name" path="name"><br/>
<label for="crush">Crush Name</label>
<form:input   id="crush" path="crush"><br/>
<input type="submit" value="check">
</form:form>

</body>

</html>
