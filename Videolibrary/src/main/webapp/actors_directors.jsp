<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix ="c" uri ="http://java.sun.com/jsp/jstl/core" %>

<c:import url="/header.jspf" charEncoding="utf-8"/>
<html>
	<head>
		<title>MyWebApp</title>
	</head>
	<body>
		<center>
			<p><B>Directors who were actors:<p>
				<c:forEach var="director" items="${directorActorList}">
					<c:out value="${director.fullName} directed film list:"/>
					<table border=1>
						<tr bgcolor=silver>
								<td>id</td>
								<td>Film title</td>
								<td>Release data</td>
								<td>Country</td>
						</tr>
						<c:forEach var="film" items="${director.filmList}">
							<tr>
								<td><c:out value="${film.id}"/></td>
								<td><c:out value="${film.filmTitle}"/></td>
								<td><c:out value="${film.releaseDate}"/></td>
								<td><c:out value="${film.country}"/></td>
							</tr>
						</c:forEach>
					</table>	
				</c:forEach>
			</table>
		</center>		
	</body>
</html>
