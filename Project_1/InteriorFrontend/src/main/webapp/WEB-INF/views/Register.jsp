<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<%@include file="Header.jsp" %>

<div class="container">
  <h2>Register form</h2>
  </br>
  <form action="<c:url value="/newuser"/>" method="post">
    <div class="form-group">
      <label for="text">Email Id :</label>
      <input type="email" class="form-control" placeholder="Email" name="emailId" required="required">
    </div>
    <div class="form-group">
      <label for="text">Username :</label>
      <input type="text" class="form-control" placeholder="Enter Username" name="userName">
    </div>
    <div class="form-group">
      <label for="text">New Password :</label>
      <input type="password" class="form-control" placeholder="Enter Password" name="password">
    </div>
    <div class="form-group">
  <label >Address :</label>
  <textarea class="form-control" rows="5" name="address"></textarea>
</div>
    <div class="form-group">
      <label >Mobile No (+91) :</label>
      <input type="number" maxlength="10" class="form-control" placeholder="Enter Mobile no." name="mobileNo">
    </div>
    <div class="form-check-inline">
  	<label class="form-check-label">Role :&nbsp
    <input type="radio" class="form-check-input" name="role" value="USER" checked="checked">User
  	</label>
	</div>
	<div class="form-check-inline">
  	<label class="form-check-label">
    <input type="radio" class="form-check-input" name="role" value="ADMIN">Admin
  </label>
</div> 
<div class="container">
<button type="submit" class="btn btn-outline-primary">Register</button>
</div>  
    
  </form>
</div>

</body>
</html>