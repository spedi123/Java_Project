<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!-- for rendering errors on PUT routes -->
<%@ page isErrorPage="true" %>
<!-- c:out ; c:forEach etc. --> 
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!-- Formatting (dates) --> 
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!-- Functions --> 
<%@ taglib prefix = "fn" uri = "http://java.sun.com/jsp/jstl/functions"%>
<!-- form:form -->
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!-- for Bootstrap CSS -->
<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
<!-- YOUR own local CSS -->
<link rel="stylesheet" href="/css/style.css"/>
<!-- For any Bootstrap that uses JS or jQuery-->
<script src="/webjars/jquery/jquery.min.js"></script>
<script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
<script type="text/javascript" src="/js/app.js"></script>
<title>Insert title here</title>
<style>
	body {
            background-image: url(/img/ludobg.jpeg);
            background-size: cover;   
        }
	.instruction {
		margin : 100px 0px;
	}
</style>
</head>
<body>
	<div class=instruction>
	<div class="h3 instruction" id="msg">
        <h2>Instructions for Ludo or Sorry!</h2>
        <iframe width="420" height="315"
        src="https://www.youtube.com/embed/IHkRjn8XVtw">
        </iframe>
		<p>First Chose Color:</p>
		<p> Each new user gets to chose a player color or player theme. There are four color options. </p>
		<p>Every player has four horses. And every Ludo game can have between 2 to 4 players. </p>	
		
		<p>How to Start:</p>
		<p>To start the game, one of the players need to roll a 6 to get their horse/piece out on the Ludo track.</p>
		<p>Then the player's horse/piece is ready to move only in forward direction.</p>
		
		<p> Movements of horses/pieces: </p>
		<p>A piece cannot move forward if it will step on itself. </p>
		<p>A piece can destroy the opponent's piece if it steps on it. Then the opponent's piece will be sent back to its home base. Thats why its called Sorry!</p>
		
		<p>How to win: </p>
		<p> The player who can get all of their four horses/pieces to finish line first will win.</p>
		<a href="/test1">Back to game</a>
	</div>
</div>
</body>
</html>