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
									<a href="index.html" class="logo"><strong.con>Find  your Advocate </strong></a>
									<ul class="icons">
										<li><a href="/academy/admin/" class="fas fa-user"></a></li>
									</ul>
								</header>

							<!-- Banner -->
								<section id="banner">
									<div class="content">
										<header>
											<p>About Us!!</p>
										</header>
										<p>Advocate, in law, a person who is professionally qualified to plead the cause of another in a court of law. As a technical term, advocate is used mainly in those legal systems that derived from the Roman law. In Scotland the word refers particularly to a member of the bar of Scotland, the Faculty of Advocates. In France avocats were formerly an organized body of pleaders, while the preparation of cases was done by avoués; today this distinction exists only before the appellate courts. In Germany, until the distinction between counselor and pleader was abolished in 1879, the Advokat was the adviser rather than the pleader. The term has traditionally been applied to pleaders in courts of canon law, and thus in England those who practiced before the courts of civil and canon law were called advocates. In the United States the term advocate has no special significance, being used interchangeably with such terms as attorney, counsel, or lawyer. See also barrister; lawyer; solicitor.</p>
										<!-- <ul class="actions">
											<li><a href="elements.html" class="button big">Learn More</a></li>
										</ul> -->
									</div>
									<!-- <span class="image object">
										<img src="images/pic09.png" alt="" />
									</span> -->
								</section>

							<!-- Section -->
								<!-- <section>
									<header class="major">
										<h2>Erat lacinia</h2>
									</header>
									<div class="features">
										<article>
											<span class="icon fa-gem"></span>
											<div class="content">
												<h3>Portitor ullamcorper</h3>
												<p>Aenean ornare velit lacus, ac varius enim lorem ullamcorper dolore. Proin aliquam facilisis ante interdum. Sed nulla amet lorem feugiat tempus aliquam.</p>
											</div>
										</article>
										<article>
											<span class="icon solid fa-paper-plane"></span>
											<div class="content">
												<h3>Sapien veroeros</h3>
												<p>Aenean ornare velit lacus, ac varius enim lorem ullamcorper dolore. Proin aliquam facilisis ante interdum. Sed nulla amet lorem feugiat tempus aliquam.</p>
											</div>
										</article>
										<article>
											<span class="icon solid fa-rocket"></span>
											<div class="content">
												<h3>Quam lorem ipsum</h3>
												<p>Aenean ornare velit lacus, ac varius enim lorem ullamcorper dolore. Proin aliquam facilisis ante interdum. Sed nulla amet lorem feugiat tempus aliquam.</p>
											</div>
										</article>
										<article>
											<span class="icon solid fa-signal"></span>
											<div class="content">
												<h3>Sed magna finibus</h3>
												<p>Aenean ornare velit lacus, ac varius enim lorem ullamcorper dolore. Proin aliquam facilisis ante interdum. Sed nulla amet lorem feugiat tempus aliquam.</p>
											</div>
										</article>
									</div>
								</section> -->

							<!-- Section -->
								<section>
									<header class="major">
										<h2>Our Founders</h2>
									</header>
									<div class="posts">
										<article>
											<a href="elements.html" class="image"><img src="${pageContext.request.contextPath}/resources/images/pic01.jpg" alt="" /></a>
											<h3>Mrs. Archna Agrawal</h3>
											<p>Primary founder of My-Wakil. Having 4+ year experience in judicary system. 50 caese in favour... etc</p>
											<ul class="actions">
												<li><a href="elements.html" class="button">More</a></li>
											</ul>
										</article>
										<article>
											<a href="elements.html" class="image"><img src="${pageContext.request.contextPath}/resources/images/pic02.jpg" alt="" /></a>
											<h3>Mr. Kushal Agrawal</h3>
											<p>APrimary founder of My-Wakil. Having 4+ year experience in judicary system. 50 caese in favour... etc</p>
											<ul class="actions">
												<li><a href="elements.html" class="button">More</a></li>
											</ul>
										</article>
									</div>
								</section>

						</div>
					</div>

				<!-- Sidebar -->
					<jsp:include page="sideMenu.jsp" />  

			</div>

		<!-- Scripts -->
			<script src="assets/js/jquery.min.js"></script>
			<script src="${pageContext.request.contextPath}/resources/js/browser.min.js"></script>
			<script src="${pageContext.request.contextPath}/resources/js/breakpoints.min.js"></script>
			<script src="${pageContext.request.contextPath}/resources/js/util.js"></script>
			<script src="${pageContext.request.contextPath}/resources/js/main.js"></script>

	</body>
</html>