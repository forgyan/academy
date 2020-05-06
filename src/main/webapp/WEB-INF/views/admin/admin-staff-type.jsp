<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/main.css" />
		
		
		<script src="https://cdnjs.cloudflare.com/ajax/libs/angular.js/1.3.4-build.3588/angular.js"></script>
</head>
<body class="is-preload" ng-app="staffType">
		<!-- Wrapper -->
			<div id="wrapper"  ng-controller="staffTypeController">
				<!-- Main -->
					<div id="main">
						<div class="inner" ng-load="getStaffType()">

							<!-- Header -->
								<header id="header">
									<a href="/academy" class="logo"><strong.con>School Application </strong></a>
									<ul class="icons">
										<li><a href="/academy" class="fas fa-user"></a></li>
									</ul>
								</header>
								<section>
									<div class="posts">
									<article>	
										<form action="" method="post">
											<strong>Staff Type</strong>	
											<input type="text" ng-model="staffType" required="required"/>
											<input type="hidden" ng-model="id" required="required"/>
										<br>
										
										<input type="button" ng-click="addStaff()" value="Save">
										
										</form>
									</article>
									<article>	
								<!-- Table panes -->
										<table id="exampleTbl" class="table table-striped table-bordered" style="width:100%">
        									<thead>
	           								    <tr>
	            									<th>No.</th>
	                								<th>Staff Type</th>
	                								<th>Operation</th>
									            </tr>
								        	</thead>
								        	
									        <tbody>
									        </tbody>
								        </table>
								      </article>
								      </div>
								</section>
								
						</div>
					</div>

				<!-- Sidebar -->
			<jsp:include page="admin-side-menu.jsp" />  

			</div>

		<!-- Scripts -->
			<script src="${pageContext.request.contextPath}/resources/js/jquery.min.js"></script>
			<script src="${pageContext.request.contextPath}/resources/js/browser.min.js"></script>
			<script src="${pageContext.request.contextPath}/resources/js/breakpoints.min.js"></script>
			<script src="${pageContext.request.contextPath}/resources/js/util.js"></script>
			<script src="${pageContext.request.contextPath}/resources/js/main.js"></script>
			<script src="${pageContext.request.contextPath}/resources/js/angular/controller/staffType.js"></script>
<script src="https://cdn.datatables.net/1.10.19/js/jquery.dataTables.min.js"></script>
<script src="https://cdn.datatables.net/1.10.19/js/dataTables.bootstrap4.min.js"></script>
<link href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.3/css/bootstrap.css" rel="stylesheet">
<link href="https://cdn.datatables.net/1.10.19/css/dataTables.bootstrap4.min.css" rel="stylesheet">

	</body>
</html>