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
		<%-- <link type="text/css" rel="stylesheet" href="<c:url value="/resources/css/main.css" />" /> --%>
</head>
<body class="is-preload">

		<!-- Wrapper -->
			<div id="wrapper">

				<!-- Main -->
					<div id="main">
						<div class="inner">

							<!-- Header -->
								<header id="header">
									<a href="/academy" class="logo"><strong.con>School Application </strong></a>
									<ul class="icons">
										<li><a href="/academy" class="fas fa-user"></a></li>
									</ul>
								</header>
							<section>
								<header class="major">
										<h4>Admin Application</h4>
									</header>
									<div class="posts">
										<article>
										<!-- 	<a href="javaintro.php" class="image"><img src="images/pic01.jpg" alt="" /></a> -->
											<ul class="actions">
												<li><a href="javaintro.php" class="button"> Academic Year</a></li>
											</ul>
										</article>
										<article>
											<!-- <a href="elements.html" class="image"><img src="images/pic02.jpg" alt="" /></a> -->
											<ul class="actions">
												<li><a href="#" class="button">Academic Unit</a></li>
											</ul>
										</article>
									</div>
									<div class="posts">
										<article>
											<!-- <a href="elements.html" class="image"><img src="images/pic01.jpg" alt="" /></a> -->
											<ul class="actions">
												<li><a href="/academy/admin/staffType" class="button">Staff Type</a></li>
											</ul>
										</article>
										<article>
										<!-- 	<a href="elements.html" class="image"><img src="images/pic02.jpg" alt="" /></a> -->
											<ul class="actions">
												<li><a href="#" class="button">Staff Grade</a></li>
											</ul>
										</article>
									</div>
									<div class="posts">
										<article>
											<!-- <a href="elements.html" class="image"><img src="images/pic01.jpg" alt="" /></a> -->
											<ul class="actions">
												<li><a href="#" class="button">Subjects</a></li>
											</ul>
										</article>

										<article>
											<!-- <a href="elements.html" class="image"><img src="images/pic01.jpg" alt="" /></a> -->
											<ul class="actions">
												<li><a href="scienceintro.php" class="button">Science & Research</a></li>
											</ul>
										</article>
									</div>
							</section>
								
						</div>
					</div>

				<!-- Sidebar -->
					<jsp:include page="admin-side-menu.jsp" />  

			</div>

		<!-- Scripts -->
			<script src="assets/js/jquery.min.js"></script>
			<script src="${pageContext.request.contextPath}/resources/js/browser.min.js"></script>
			<script src="${pageContext.request.contextPath}/resources/js/breakpoints.min.js"></script>
			<script src="${pageContext.request.contextPath}/resources/js/util.js"></script>
			<script src="${pageContext.request.contextPath}/resources/js/main.js"></script>

	</body>
</html>