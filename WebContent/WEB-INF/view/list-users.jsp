<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap.css">
    <link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/global.css">
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
<title>List Users</title>
</head>

<body>

<div class="container-fluid bg">
  <div class="row">
    <div class="col-md-1 col-sm-1 col-xs-12"></div>
	<div class="col-md-10 col-sm-10 col-xs-12">
	<div class="form-container">
		<div class="center">
			<img src="../resources/img/login2.png">
            	<h1>Users list</h1>
				<h6>Expends Management System</h6>
		</div>
        
        <br />
        
        <!-- ADD NEW USER  TO DO!!!!!!!!!!!-->
      
       <div class="row">
   <!--          <div class="col-md-2 col-sm-2 col-xs-12">
            <div class="form-group">
              <label>Username:</label>
              <input type="text" class="form-control" name="username" required="required">
            </div>
          </div>
          
          <div class="col-md-2 col-sm-2 col-xs-12"> 
            <div class="form-group">
              <label>Password:</label>
              <input type="password" class="form-control" name="password" required="required">
            </div>
          </div>
            
          <div class="col-md-2 col-sm-2 col-xs-12"> 
            <div class="form-group">
              <label>First Name:</label>
              <input type="text" class="form-control" name="firstname" required="required">
            </div>
          </div>
          
          <div class="col-md-2 col-sm-2 col-xs-12"> 
            <div class="form-group">
              <label>Last Name:</label>
              <input type="text" class="form-control" name="lastname" required="required">
            </div>
          </div>
          
          <div class="col-md-2 col-sm-2 col-xs-12">
            <div class="form-group">
              <label>E-mail address:</label>
              <input type="text" class="form-control" name="email" required="required">
            </div>
          </div>
          
          <div class="col-md-1 col-sm-1 col-xs-12"> 
            <div class="form-group">
              <label>Age:</label>
              <input type="text" class="form-control" name="age" required="required">
            </div>
          </div> 
    -->       
          <div class="col-md-1 col-sm-1 col-xs-12"> 
            <div class="form-group">
              <label>Action:</label>
              <input type="button" value="Add" class="btn btn-success btn-block" onclick="window.location.href='showFormForAdd'; return false;"/>
            </div>
          </div> 
	   </div>  
 
		

		<!--  HTML TABLE -->
		
		<div class="table-responsive center">
			<table class="table table-hover table-sm">
				<thead class="thead-light">	
					<tr>
						<th scope="col">Id</th>
						<th scope="col">User name</th>
						<th scope="col">Password</th>
						<th scope="col">First Name</th>
						<th scope="col">Last Name</th>
						<th scope="col">Email</th>
						<th scope="col">Age</th>
						<th colspan="2" scope="col">Action</th>
					</tr>
				</thead>
				<tbody>
				
				<!-- loop over and print users -->
				<c:forEach var="tempUser" items="${users}">
				
					<!-- construct an "update" link with user id -->
					<c:url var="updateLink" value="/user/showFormForUpdate">
						<c:param name="userId" value="${tempUser.id}" />
					</c:url>
					
					<!-- construct an "delete" link with user id -->
					<c:url var="deleteLink" value="/user/delete">
						<c:param name="userId" value="${tempUser.id}" />
					</c:url>
					
					<tr>
						<td>${tempUser.id}</td>
						<td>${tempUser.username}</td>
						<td>${tempUser.password}</td>
						<td>${tempUser.firstName}</td>
						<td>${tempUser.lastName}</td>
						<td>${tempUser.email}</td>
						<td>${tempUser.age}</td>
						<td><a href="${updateLink}" class="btn btn-warning btn-block btn-sm" role="button">Edit</a></td>
						<td><a href="${deleteLink}" class="btn btn-danger btn-block btn-sm" role="button" onClick="if (!(confirm('Are you sure you want to delete this user?'))) return false">Delete</a></td>
					</tr>
				</c:forEach>
	
				</tbody>
			</table>
		</div>
		
		<!-- Footer -->
		<div class="text-align: center">
			<label class="label-bottom">Copyright c 2018 by Jaroslaw Kowalczyk</label>
		</div>
		
	</div>
	<div class="col-md-1 col-sm-1 col-xs-12"></div>
  </div>
  </div>
</div>


</body>
</html>