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
.error
{color:red;position: fixed;align:left}
</style>

</head>

<body>

<h1 align="center">ENTER DETAILS</h1><hr/>
<div align="center">
<form:form action="homeProcess" modelAttribute="data">
<label for="name">Your Name  </label>
<form:input id="name" path="name"/>
<form:errors path="name" cssClass="error"/><br/><br/>
<label for="crush">Crush Name</label>
<form:input   id="crush" path="crush"/>
<form:errors path="crush" cssClass="error"/><br/><br/>
<form:checkbox path="termsAndConditions"/>
<label>you have to agree its just for fun</label>
<form:errors path="termsAndConditions" cssClass="error"/><br/><br/>
<h1>Communication :</h1>
<label for="email">Email Id </label>
<form:input id="email" path="com.email"/><br/><br/>
<label for="phone">Phone number </label>
<form:input id="phone" path="com.phone.CountryCode"/><br/><br/>
<form:input id="phone" path="com.phone.number"/><br/><br/>
<input type="submit" value="check">
</form:form>
</div>
</body>

</html>
