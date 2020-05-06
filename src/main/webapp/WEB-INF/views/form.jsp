<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>APP.COM</title>
<style type="text/css">
fieldset {
	border: 1px solid #dedede;
}

legend {
	font-size: 20px;
	text-transform: uppercase;
}

.error {
	color: red;
}

.resltTable {
	width: 50%;
	border-collapse: collapse;
	border-spacing: 0px;
}

.resltTable td, .resltTable th {
	border: 1px solid #565454;
}
</style>
</head>
<body>
  <fieldset>
    <legend>User Input From</legend>
    <form:form action="savePerson" method="post" modelAttribute="person">
      <table>
        <tr>
          <th>First Name</th>
          <td>
            <form:input path="firstName" /> 
          </td>
          <th>Last Name</th>
          <td>
            <form:input path="lastName" /> 
          </td>
          <th>Age</th>
          <td>
            <form:input path="age" /> 
          </td>
          <td><button type="submit">Submit</button></td>
        </tr>
      </table>
    </form:form>
  </fieldset>
  <br>
  <br>

  <fieldset>
    <legend>Users List</legend>
    <table class="resltTable">
      <tr>
        <th>Name</th>
        <th>LName</th>
        <th>Age</th>
      </tr>
      <c:forEach items="${persons}" var="person">
        <tr>
          <td>${person.firstName}</td>
          <td>${person.lastName}</td>
          <td>${person.age}</td>
        </tr>
      </c:forEach>

    </table>
  </fieldset>

</body>
</html>