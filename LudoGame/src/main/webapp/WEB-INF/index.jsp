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
<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
<link rel="stylesheet" href="/css/style.css"/>
<script src="/webjars/jquery/jquery.min.js"></script>
<script src="/webjars/bootstrap/js/bootstrap.min.js"></script>

<title>Insert title here</title>
</head>

	   <style>
        div.row div{
            width: 50px;
            height: 50px;
            padding: 0px;
            text-align: center;
            border: 1px solid black;
            display: inline-block;
        }
        div.red {
            background-color: red;
        }
        div.blue {
            background-color: blue;
        }
        div.yellow {
            background-color: yellow;
        }
        div.green {
            background-color: green;
        }
        div.player1 {
            background: url(/img/pokemon1.png);
            background-size: 50px;
            background-repeat: no-repeat;
            background-position: center;
        }
        div.player2 {
            background: url(/img/pokemon2.png);
            background-size: 45px;
            background-repeat: no-repeat;
            background-position: center;
        }
        div.player3 {
            background: url(/img/pokemon3.png);
            background-size: 50px;
            background-repeat: no-repeat;
            background-position: center;
        }
        div.player4 {
            background: url(/img/pokemon4.png);
            background-size: 30px;
            background-repeat: no-repeat;
            background-position: center;
        }
    </style>
  </head>
<body>
    <div class="container">
    <h4>Dice Roll One: <c:out value="${dice1}"/></h4>
    <h4>Dice Roll Two: <c:out value="${dice2}"/></h4>
    <h4>Dice Roll Total: <c:out value="${dice2 + dice1}"/></h4>
        <div class="row">
            <div class="red"></div>
            <div class="red"></div>
            <div class="red"></div>
            <div class="red"></div>
            <div class="red"></div>
            <div class="red"></div>
            <div class="coin" id="n49" onClick="moveHorse(49)">
            	<c:set var="contains" value="false"/>
            	<c:forEach var="horse" items="${horsePositionList}">
				  <c:if test="${horse == 49}">
				    <c:set var="contains" value="true" />
				  </c:if>
				</c:forEach>
				<c:if test="${ contains }">
					<div class="player2">
					</div>
				</c:if>49
			</div>
            <div class="coin" id="n50" onClick="moveHorse(50)">
            	<c:set var="contains" value="false"/>
            	<c:forEach var="horse" items="${horsePositionList}">
				  <c:if test="${horse == 50}">
				    <c:set var="contains" value="true" />
				  </c:if>
				</c:forEach>
				<c:if test="${ contains }">
					<div class="player2">
					</div>
			</c:if>50</div>
            <div class="coin" id="n51" onClick="moveHorse(51)">
            	<c:set var="contains" value="false"/>
            	<c:forEach var="horse" items="${horsePositionList}">
				  <c:if test="${horse == 51}">
				    <c:set var="contains" value="true" />
				  </c:if>
				</c:forEach>
				<c:if test="${ contains }">
					<div class="player2">
					</div>
				</c:if>51
			</div>
            <div class="blue"></div>
            <div class="blue"></div>
            <div class="blue"></div>
            <div class="blue"></div>
            <div class="blue"></div>
            <div class="blue"></div>
        </div>
        <div class="row">
            <div class="red"></div>
            <div class="player1"></div>
            <div class="red"></div>
            <div class="red"></div>
            <div class="player1"></div>
            <div class="red"></div>
            <div class="coin" id="n48" onClick="moveHorse(48)">
            	<c:set var="contains" value="false"/>
            	<c:forEach var="horse" items="${horsePositionList}">
				  <c:if test="${horse == 48}">
				    <c:set var="contains" value="true" />
				  </c:if>
				</c:forEach>
				<c:if test="${ contains }">
					<div class="player2">
					</div>
				</c:if>48
			</div>
            <div class="blue" id="b1">b1</div>
            <div class="blue" id="n0" onClick="moveHorse(0)">
            	<c:set var="contains" value="false"/>
            	<c:forEach var="horse" items="${horsePositionList}">
				  <c:if test="${horse == 0}">
				    <c:set var="contains" value="true" />
				  </c:if>
				</c:forEach>
				<c:if test="${ contains }">
					<div class="player2">
					</div>
				</c:if>0
			</div>
            <div class="blue"></div>
            <div class="player2"></div>
            <div class="blue"></div>
            <div class="blue"></div>
            <div class="player2"></div>
            <div class="blue"></div>
        </div>
        <div class="row">
            <div class="red"></div>
            <div class="red"></div>
            <div class="red"></div>
            <div class="red"></div>
            <div class="red"></div>
            <div class="red"></div>
            <div class="coin" id="n47" onClick="moveHorse(47)"><c:if test="${horsePositionList.get(0) == 47}"><div class="player2"></div></c:if>47</div>
            <div class="blue" id="b2">b2</div>
            <div class="coin" id="n1"  onClick="moveHorse(1)"><c:if test="${horsePositionList.get(0) == 1}"><div class="player2"></div></c:if>1</div>
            <div class="blue"></div>
            <div class="blue"></div>
            <div class="blue"></div>
            <div class="blue"></div>
            <div class="blue"></div>
            <div class="blue"></div>
        </div>
        <div class="row">
            <div class="red"></div>
            <div class="player1"></div>
            <div class="red"></div>
            <div class="red"></div>
            <div class="player1"></div>
            <div class="red"></div>
            <div class="coin" id="n46" onClick="moveHorse(46)">
            	<c:set var="contains" value="false"/>
            	<c:forEach var="horse" items="${horsePositionList}">
				  <c:if test="${horse == 46}">
				    <c:set var="contains" value="true" />
				  </c:if>
				</c:forEach>
				<c:if test="${ contains }">
					<div class="player2">
					</div>
				</c:if>46
			</div>
            <div class="blue" id="b3">b3</div>
            <div class="coin" id="n2"  onClick="moveHorse(2)">
            	<c:set var="contains" value="false"/>
            	<c:forEach var="horse" items="${horsePositionList}">
				  <c:if test="${horse == 2}">
				    <c:set var="contains" value="true" />
				  </c:if>
				</c:forEach>
				<c:if test="${ contains }">
					<div class="player2">
					</div>
				</c:if>2
			</div>
            <div class="blue"></div>
            <div class="coin" onClick="moveHorse(-1)"><c:if test="${horsePositionList.get(0) == -1}"><div class="player2"></div></c:if></div>
            <div class="blue"></div>
            <div class="blue"></div>
            <div class="coin"onClick="moveHorse(-1)"><c:if test="${horsePositionList.get(1) == -1}"><div class="player2"></div></c:if></div>
            <div class="blue"></div>
        </div>
        <div class="row">
            <div class="red"></div>
            <div class="red"></div>
            <div class="red"></div>
            <div class="red"></div>
            <div class="red"></div>
            <div class="red"></div>
            <div class="coin" id="n45" onClick="moveHorse(45)">
            	<c:set var="contains" value="false"/>
            	<c:forEach var="horse" items="${horsePositionList}">
				  <c:if test="${horse == 45}">
				    <c:set var="contains" value="true" />
				  </c:if>
				</c:forEach>
				<c:if test="${ contains }">
					<div class="player2">
					</div>
				</c:if>45
			</div>
            <div class="blue" id="b4">b4</div>
            <div class="coin" id="n3" onClick="moveHorse(3)">
            	<c:set var="contains" value="false"/>
            	<c:forEach var="horse" items="${horsePositionList}">
				  <c:if test="${horse == 3}">
				    <c:set var="contains" value="true" />
				  </c:if>
				</c:forEach>
				<c:if test="${ contains }">
					<div class="player2">
					</div>
				</c:if>3
			</div>
            <div class="blue"></div>
            <div class="blue"></div>
            <div class="blue"></div>
            <div class="blue"></div>
            <div class="blue"></div>
            <div class="blue"></div>
        </div>
        <div class="row">
            <div class="red"></div>
            <div class="red"></div>
            <div class="red"></div>
            <div class="red"></div>
            <div class="red"></div>
            <div class="red"></div>
            <div class="coin" id="n44" onClick="moveHorse(44)">
            	<c:set var="contains" value="false"/>
            	<c:forEach var="horse" items="${horsePositionList}">
				  <c:if test="${horse == 44}">
				    <c:set var="contains" value="true" />
				  </c:if>
				</c:forEach>
				<c:if test="${ contains }">
					<div class="player2">
					</div>
				</c:if>44
			</div>
            <div class="blue" id="b5">b5</div>
            <div class="coin" id="n4" onClick="moveHorse(4)">
            	<c:set var="contains" value="false"/>
            	<c:forEach var="horse" items="${horsePositionList}">
				  <c:if test="${horse == 4}">
				    <c:set var="contains" value="true" />
				  </c:if>
				</c:forEach>
				<c:if test="${ contains }">
					<div class="player2">
					</div>
				</c:if>4
			</div>
            <div class="blue"></div>
            <div class="blue"></div>
            <div class="blue"></div>
            <div class="blue"></div>
            <div class="blue"></div>
            <div class="blue"></div>
        </div>
        <div class="row">
            <div class="coin" id="n38" onClick="moveHorse(38)">
            	<c:set var="contains" value="false"/>
            	<c:forEach var="horse" items="${horsePositionList}">
				  <c:if test="${horse == 38}">
				    <c:set var="contains" value="true" />
				  </c:if>
				</c:forEach>
				<c:if test="${ contains }">
					<div class="player2">
					</div>
				</c:if>38
			</div>
            <div class="red" id="n39" onClick="moveHorse(39)">
            	<c:set var="contains" value="false"/>
            	<c:forEach var="horse" items="${horsePositionList}">
				  <c:if test="${horse == 39}">
				    <c:set var="contains" value="true" />
				  </c:if>
				</c:forEach>
				<c:if test="${ contains }">
					<div class="player2">
					</div>
				</c:if>39
			</div>
            <div class="coin" id="n40" onClick="moveHorse(40)">
            	<c:set var="contains" value="false"/>
            	<c:forEach var="horse" items="${horsePositionList}">
				  <c:if test="${horse == 40}">
				    <c:set var="contains" value="true" />
				  </c:if>
				</c:forEach>
				<c:if test="${ contains }">
					<div class="player2">
					</div>
				</c:if>40
			</div>
            <div class="coin" id="n41" onClick="moveHorse(41)">
            	<c:set var="contains" value="false"/>
            	<c:forEach var="horse" items="${horsePositionList}">
				  <c:if test="${horse == 41}">
				    <c:set var="contains" value="true" />
				  </c:if>
				</c:forEach>
				<c:if test="${ contains }">
					<div class="player2">
					</div>
				</c:if>41
			</div>
            <div class="coin" id="n42" onClick="moveHorse(42)">
            	<c:set var="contains" value="false"/>
            	<c:forEach var="horse" items="${horsePositionList}">
				  <c:if test="${horse == 42}">
				    <c:set var="contains" value="true" />
				  </c:if>
				</c:forEach>
				<c:if test="${ contains }">
					<div class="player2">
					</div>
				</c:if>42
			</div>
            <div class="coin" id="n43" onClick="moveHorse(43)">
            	<c:set var="contains" value="false"/>
            	<c:forEach var="horse" items="${horsePositionList}">
				  <c:if test="${horse == 43}">
				    <c:set var="contains" value="true" />
				  </c:if>
				</c:forEach>
				<c:if test="${ contains }">
					<div class="player2">
					</div>
				</c:if>43
			</div>
            <div class="coin"></div>
            <div class="coin"></div>
            <div class="coin"></div>
            <div class="coin" id="n5" onClick="moveHorse(5)">
            	<c:set var="contains" value="false"/>
            	<c:forEach var="horse" items="${horsePositionList}">
				  <c:if test="${horse == 5}">
				    <c:set var="contains" value="true" />
				  </c:if>
				</c:forEach>
				<c:if test="${ contains }">
					<div class="player2">
					</div>
				</c:if>5
			</div>
            <div class="coin" id="n6" onClick="moveHorse(6)">
            	<c:set var="contains" value="false"/>
            	<c:forEach var="horse" items="${horsePositionList}">
				  <c:if test="${horse == 6}">
				    <c:set var="contains" value="true" />
				  </c:if>
				</c:forEach>
				<c:if test="${ contains }">
					<div class="player2">
					</div>
				</c:if>6
			</div>
            <div class="coin" id="n7" onClick="moveHorse(7)">
            	<c:set var="contains" value="false"/>
            	<c:forEach var="horse" items="${horsePositionList}">
				  <c:if test="${horse == 7}">
				    <c:set var="contains" value="true" />
				  </c:if>
				</c:forEach>
				<c:if test="${ contains }">
					<div class="player2">
					</div>
				</c:if>7</div>
            <div class="coin" id="n8" onClick="moveHorse(8)">
            	<c:set var="contains" value="false"/>
            	<c:forEach var="horse" items="${horsePositionList}">
				  <c:if test="${horse == 8}">
				    <c:set var="contains" value="true" />
				  </c:if>
				</c:forEach>
				<c:if test="${ contains }">
					<div class="player2">
					</div>
				</c:if>8
			</div>
            <div class="coin" id="n9" onClick="moveHorse(9)">
            	<c:set var="contains" value="false"/>
            	<c:forEach var="horse" items="${horsePositionList}">
				  <c:if test="${horse == 9}">
				    <c:set var="contains" value="true" />
				  </c:if>
				</c:forEach>
				<c:if test="${ contains }">
					<div class="player2">
					</div>
				</c:if>9
			</div>
            <div class="coin" id="n10" onClick="moveHorse(10)">
            	<c:set var="contains" value="false"/>
            	<c:forEach var="horse" items="${horsePositionList}">
				  <c:if test="${horse == 10}">
				    <c:set var="contains" value="true" />
				  </c:if>
				</c:forEach>
				<c:if test="${ contains }">
					<div class="player2">
					</div>
				</c:if>10
		</div>
        </div>
        <div class="row">
            <div class="coin" id="n37" onClick="moveHorse(37)">
            	<c:set var="contains" value="false"/>
            	<c:forEach var="horse" items="${horsePositionList}">
				  <c:if test="${horse == 37}">
				    <c:set var="contains" value="true" />
				  </c:if>
				</c:forEach>
				<c:if test="${ contains }">
					<div class="player2">
					</div>
				</c:if>37
			</div>
            <div class="red" id="r1">r1</div>
            <div class="red" id="r2">r2</div>
            <div class="red" id="r3">r3</div>
            <div class="red" id="r4">r4</div>
            <div class="red" id="r5">r5</div>
            <div class="coin"></div>
            <div class="coin"></div>
            <div class="coin"></div>
            <div class="green" id="g51">g5</div>
            <div class="green" id="g4">g4</div>
            <div class="green" id="g3">g3</div>
            <div class="green" id="g2">g2</div>
            <div class="green" id="g1">g1</div>
            <div class="coin" id="n11" onClick="moveHorse(11)">
            <c:set var="contains" value="false"/>
            	<c:forEach var="horse" items="${horsePositionList}">
				  <c:if test="${horse == 11}">
				    <c:set var="contains" value="true" />
				  </c:if>
				</c:forEach>
				<c:if test="${ contains }">
					<div class="player2">
					</div>
				</c:if>11
		</div>
        </div>
        <div class="row">
            <div class="coin" id="n36" onClick="moveHorse(36)">
            	<c:set var="contains" value="false"/>
            	<c:forEach var="horse" items="${horsePositionList}">
				  <c:if test="${horse == 36}">
				    <c:set var="contains" value="true" />
				  </c:if>
				</c:forEach>
				<c:if test="${ contains }">
					<div class="player2">
					</div>
				</c:if>36
			</div>
            <div class="coin" id="n35" onClick="moveHorse(35)">
            	<c:set var="contains" value="false"/>
            	<c:forEach var="horse" items="${horsePositionList}">
				  <c:if test="${horse == 35}">
				    <c:set var="contains" value="true" />
				  </c:if>
				</c:forEach>
				<c:if test="${ contains }">
					<div class="player2">
					</div>
				</c:if>35
			</div>
            <div class="coin" id="n34" onClick="moveHorse(34)">
            	<c:set var="contains" value="false"/>
            	<c:forEach var="horse" items="${horsePositionList}">
				  <c:if test="${horse == 34}">
				    <c:set var="contains" value="true" />
				  </c:if>
				</c:forEach>
				<c:if test="${ contains }">
					<div class="player2">
					</div>
				</c:if>34
			</div>
            <div class="coin" id="n33" onClick="moveHorse(33)">
            	<c:set var="contains" value="false"/>
            	<c:forEach var="horse" items="${horsePositionList}">
				  <c:if test="${horse == 33}">
				    <c:set var="contains" value="true" />
				  </c:if>
				</c:forEach>
				<c:if test="${ contains }">
					<div class="player2">
					</div>
				</c:if>33
			</div>
            <div class="coin" id="n32" onClick="moveHorse(32)">
            	<c:set var="contains" value="false"/>
            	<c:forEach var="horse" items="${horsePositionList}">
				  <c:if test="${horse == 32}">
				    <c:set var="contains" value="true" />
				  </c:if>
				</c:forEach>
				<c:if test="${ contains }">
					<div class="player2">
					</div>
				</c:if>32
			</div>
            <div class="coin" id="n31" onClick="moveHorse(31)">
            	<c:set var="contains" value="false"/>
            	<c:forEach var="horse" items="${horsePositionList}">
				  <c:if test="${horse == 31}">
				    <c:set var="contains" value="true" />
				  </c:if>
				</c:forEach>
				<c:if test="${ contains }">
					<div class="player2">
			</div>
				</c:if>31</div>
            <div class="coin"></div>
            <div class="coin"></div>
            <div class="coin"></div>
            <div class="coin" id="n17" onClick="moveHorse(17)">
            	<c:set var="contains" value="false"/>
            	<c:forEach var="horse" items="${horsePositionList}">
				  <c:if test="${horse == 17}">
				    <c:set var="contains" value="true" />
				  </c:if>
				</c:forEach>
				<c:if test="${ contains }">
					<div class="player2">
					</div>
				</c:if>17
			</div>
            <div class="coin" id="n16" onClick="moveHorse(16)">
            	<c:set var="contains" value="false"/>
            	<c:forEach var="horse" items="${horsePositionList}">
				  <c:if test="${horse == 23}">
				    <c:set var="contains" value="true" />
				  </c:if>
				</c:forEach>
				<c:if test="${ contains }">
					<div class="player2">
					</div>
				</c:if>16
			</div>
            <div class="coin" id="n15" onClick="moveHorse(15)">
            	<c:set var="contains" value="false"/>
            	<c:forEach var="horse" items="${horsePositionList}">
				  <c:if test="${horse == 15}">
				    <c:set var="contains" value="true" />
				  </c:if>
				</c:forEach>
				<c:if test="${ contains }">
					<div class="player2">
					</div>
				</c:if>15
			</div>
            <div class="coin" id="n14" onClick="moveHorse(14)">
            	<c:set var="contains" value="false"/>
            	<c:forEach var="horse" items="${horsePositionList}">
				  <c:if test="${horse == 14}">
				    <c:set var="contains" value="true" />
				  </c:if>
				</c:forEach>
				<c:if test="${ contains }">
					<div class="player2">
					</div>
				</c:if>14
				</div>
            <div class="green" id="n13" onClick="moveHorse(13)">
            	<c:set var="contains" value="false"/>
            	<c:forEach var="horse" items="${horsePositionList}">
				  <c:if test="${horse == 13}">
				    <c:set var="contains" value="true" />
				  </c:if>
				</c:forEach>
				<c:if test="${ contains }">
					<div class="player2">
					</div>
				</c:if>13
			</div>
            <div class="coin" id="n12" onClick="moveHorse(12)">
            	<c:set var="contains" value="false"/>
            	<c:forEach var="horse" items="${horsePositionList}">
				  <c:if test="${horse == 12}">
				    <c:set var="contains" value="true" />
				  </c:if>
				</c:forEach>
				<c:if test="${ contains }">
					<div class="player2">
					</div>
				</c:if>12
			</div>
        </div>
        <div class="row">
            <div class="yellow"></div>
            <div class="yellow"></div>
            <div class="yellow"></div>
            <div class="yellow"></div>
            <div class="yellow"></div>
            <div class="yellow"></div>
            <div class="coin" id="n30" onClick="moveHorse(30)">
            	<c:set var="contains" value="false"/>
            	<c:forEach var="horse" items="${horsePositionList}">
				  <c:if test="${horse == 30}">
				    <c:set var="contains" value="true" />
				  </c:if>
				</c:forEach>
				<c:if test="${ contains }">
					<div class="player2">
					</div>
				</c:if>30
			</div>
            <div class="yellow" id="y5">y5</div>
            <div class="coin" id="n18" onClick="moveHorse(18)">
            	<c:set var="contains" value="false"/>
            	<c:forEach var="horse" items="${horsePositionList}">
				  <c:if test="${horse == 18}">
				    <c:set var="contains" value="true" />
				  </c:if>
				</c:forEach>
				<c:if test="${ contains }">
					<div class="player2">
					</div>
				</c:if>18
			</div>
            <div class="green"></div>
            <div class="green"></div>
            <div class="green"></div>
            <div class="green"></div>
            <div class="green"></div>
            <div class="green"></div>
        </div>
        <div class="row">
            <div class="yellow"></div>
            <div class="player3"></div>
            <div class="yellow"></div>
            <div class="yellow"></div>
            <div class="player3"></div>
            <div class="yellow"></div>
            <div class="coin" id="n29" onClick="moveHorse(29)">
            	<c:set var="contains" value="false"/>
            	<c:forEach var="horse" items="${horsePositionList}">
				  <c:if test="${horse == 29}">
				    <c:set var="contains" value="true" />
				  </c:if>
				</c:forEach>
				<c:if test="${ contains }">
					<div class="player2">
					</div>
				</c:if>29
				</div>
            <div class="yellow" id="y4">y4</div>
            <div class="coin" id="n19" onClick="moveHorse(19)">
            	<c:set var="contains" value="false"/>
            	<c:forEach var="horse" items="${horsePositionList}">
				  <c:if test="${horse == 19}">
				    <c:set var="contains" value="true" />
				  </c:if>
				</c:forEach>
				<c:if test="${ contains }">
					<div class="player2">
					</div>
				</c:if>19
				</div>
            <div class="green"></div>
            <div class="player4"></div>
            <div class="green"></div>
            <div class="green"></div>
            <div class="player4"></div>
            <div class="green"></div>
        </div>
        <div class="row">
            <div class="yellow"></div>
            <div class="yellow"></div>
            <div class="yellow"></div>
            <div class="yellow"></div>
            <div class="yellow"></div>
            <div class="yellow"></div>
            <div class="coin" id="n28" onClick="moveHorse(28)">
            	<c:set var="contains" value="false"/>
            	<c:forEach var="horse" items="${horsePositionList}">
				  <c:if test="${horse == 28}">
				    <c:set var="contains" value="true" />
				  </c:if>
				</c:forEach>
				<c:if test="${ contains }">
					<div class="player2">
					</div>
				</c:if>28
			</div>
            <div class="yellow" id="y3">y3</div>
            <div class="coin" id="n20" onClick="moveHorse(20)">
            	<c:set var="contains" value="false"/>
            	<c:forEach var="horse" items="${horsePositionList}">
				  <c:if test="${horse == 20}">
				    <c:set var="contains" value="true" />
				  </c:if>
				</c:forEach>
				<c:if test="${ contains }">
					<div class="player2">
					</div>
				</c:if>20
				</div>
            <div class="green"></div>
            <div class="green"></div>
            <div class="green"></div>
            <div class="green"></div>
            <div class="green"></div>
            <div class="green"></div>
        </div>
        <div class="row">
            <div class="yellow"></div>
            <div class="yellow"></div>
            <div class="yellow"></div>
            <div class="yellow"></div>
            <div class="yellow"></div>
            <div class="yellow"></div>
            <div class="coin" id="n27" onClick="moveHorse(27)">
            	<c:set var="contains" value="false"/>
            	<c:forEach var="horse" items="${horsePositionList}">
				  <c:if test="${horse == 27}">
				    <c:set var="contains" value="true" />
				  </c:if>
				</c:forEach>
				<c:if test="${ contains }">
					<div class="player2">
					</div>
				</c:if>27
			</div>
            <div class="yellow" id="y2">y2</div>
            <div class="coin" id="n21" onClick="moveHorse(21)">
            	<c:set var="contains" value="false"/>
            	<c:forEach var="horse" items="${horsePositionList}">
				  <c:if test="${horse == 21}">
				    <c:set var="contains" value="true" />
				  </c:if>
				</c:forEach>
				<c:if test="${ contains }">
					<div class="player2">
					</div>
				</c:if>21
			</div>
            <div class="green"></div>
            <div class="green"></div>
            <div class="green"></div>
            <div class="green"></div>
            <div class="green"></div>
            <div class="green"></div>
        </div>
        <div class="row">
            <div class="yellow"></div>
            <div class="player3"></div>
            <div class="yellow"></div>
            <div class="yellow"></div>
            <div class="player3"></div>
            <div class="yellow"></div>
            <div class="yellow" id="n26"onClick="moveHorse(26)"><c:set var="contains" value="false"/>
            	<c:forEach var="horse" items="${horsePositionList}">
				  <c:if test="${horse == 26}">
				    <c:set var="contains" value="true" />
				  </c:if>
				</c:forEach>
				<c:if test="${ contains }">
					<div class="player2">
					</div>
				</c:if>26</div>
            <div class="yellow" id="y1">y1</div>
            <div class="coin" id="n5" onClick="moveHorse(22)">
            	<c:set var="contains" value="false"/>
            	<c:forEach var="horse" items="${horsePositionList}">
				  <c:if test="${horse == 22}">
				    <c:set var="contains" value="true" />
				  </c:if>
				</c:forEach>
				<c:if test="${ contains }">
					<div class="player2">
					</div>
				</c:if>22
			</div>
            <div class="green"></div>
            <div class="player4"></div>
            <div class="green"></div>
            <div class="green"></div>
            <div class="player4"></div>
            <div class="green"></div>
        </div>
        <div class="row">
            <div class="yellow"></div>
            <div class="yellow"></div>
            <div class="yellow"></div>
            <div class="yellow"></div>
            <div class="yellow"></div>
            <div class="yellow"></div>
            <div class="coin" id="n25" onClick="moveHorse(25)">
            	<c:set var="contains" value="false"/>
            	<c:forEach var="horse" items="${horsePositionList}">
				  <c:if test="${horse == 25}">
				    <c:set var="contains" value="true" />
				  </c:if>
				</c:forEach>
				<c:if test="${ contains }">
					<div class="player2">
					</div>
				</c:if>25
			</div>
            <div class="coin" id="n24" onClick="moveHorse(24)">
            	<c:set var="contains" value="false"/>
            	<c:forEach var="horse" items="${horsePositionList}">
				  <c:if test="${horse == 24}">
				    <c:set var="contains" value="true" />
				  </c:if>
				</c:forEach>
				<c:if test="${ contains }">
					<div class="player2">
					</div>
				</c:if>24
			</div>
            <div class="coin" id="n23" onClick="moveHorse(23)">
            	<c:set var="contains" value="false"/>
            	<c:forEach var="horse" items="${horsePositionList}">
				  <c:if test="${horse == 23}">
				    <c:set var="contains" value="true" />
				  </c:if>
				</c:forEach>
				<c:if test="${ contains }">
					<div class="player2">
					</div>
				</c:if>23
      		</div>
            <div class="green"></div>
            <div class="green"></div>
            <div class="green"></div>
            <div class="green"></div>
            <div class="green"></div>
            <div class="green"></div>
        </div>
    </div>
    <div class="sound_button btn btn-success">Sound</div>
    <form action="/test1/move" method='post'>
    	<input type="hidden" name="dice1" value="${dice1}"/>
    	<input type="hidden" name="dice2" value="${dice2}"/>
    	<input type="hidden" name="fromPos" id="fromPos"/>
    	<input type="hidden" name="toPos" id="toPos"/>
    	<input type="submit" value="move">
    </form>
    <c:forEach var="onePos" items="${horsePositionList}">
    	<h1>Horse Position: <c:out value="${onePos}"/></h1>
    </c:forEach>
	<h1><c:out value="${horsePositionList.contains(1)}"/></h1>
	
	<script type="text/javascript" src="/js/app.js"></script>
	<script>
		var list = ${horsePositionList}
		console.log(list.includes(1))
	</script>
</body>
</html>