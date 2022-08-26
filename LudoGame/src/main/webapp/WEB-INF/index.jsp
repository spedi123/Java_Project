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
        <div class="row">
            <div class="red"></div>
            <div class="red"></div>
            <div class="red"></div>
            <div class="red"></div>
            <div class="red"></div>
            <div class="red"></div>
            <div class="coin" id="n49">49</div>
            <div class="coin" id="n50">50</div>
            <div class="coin" id="n51">51</div>
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
            <div class="coin" id="n48">48</div>
            <div class="blue" id="b1">b1</div>
            <div class="blue" id="n0" onClick="moveHorse(0)"><c:if test="${horsePositionList.get(0) == 0}"><h1>H</h1></c:if>0</div>
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
            <div class="coin" id="n47">47</div>
            <div class="blue" id="b2">b2</div>
            <div class="coin" id="n1"  onClick="moveHorse(1)"><c:if test="${horsePositionList.contains(1)}"><h1>H</h1></c:if>1</div>
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
            <div class="coin" id="n46" onClick="moveHorse(46)">46</div>
            <div class="blue" id="b3">b3</div>
            <div class="coin" id="n2"  onClick="moveHorse(2)"><c:if test="${horsePositionList.contains(1)}"><h1>H</h1></c:if>2</div>
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
            <div class="coin" id="n45">45</div>
            <div class="blue" id="b4">b4</div>
            <div class="coin" id="n3">3</div>
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
            <div class="coin" id="n44">44</div>
            <div class="blue" id="b5">b5</div>
            <div class="coin" id="n4">4</div>
            <div class="blue"></div>
            <div class="blue"></div>
            <div class="blue"></div>
            <div class="blue"></div>
            <div class="blue"></div>
            <div class="blue"></div>
        </div>
        <div class="row">
            <div class="coin" id="n38">38</div>
            <div class="red" id="n39">39</div>
            <div class="coin" id="n40">40</div>
            <div class="coin" id="n41">41</div>
            <div class="coin" id="n42">42</div>
            <div class="coin" id="n43">43</div>
            <div class="coin"></div>
            <div class="coin"></div>
            <div class="coin"></div>
            <div class="coin" id="n5">5</div>
            <div class="coin" id="n6">6</div>
            <div class="coin" id="n7">7</div>
            <div class="coin" id="n8">8</div>
            <div class="coin" id="n9">9</div>
            <div class="coin" id="n10">10</div>
        </div>
        <div class="row">
            <div class="coin" id="n37">37</div>
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
            <div class="coin" id="n11">11</div>
        </div>
        <div class="row">
            <div class="coin" id="n36">36</div>
            <div class="coin" id="n35">35</div>
            <div class="coin" id="n34">34</div>
            <div class="coin" id="n33">33</div>
            <div class="coin" id="n32">32</div>
            <div class="coin" id="n31">31</div>
            <div class="coin"></div>
            <div class="coin"></div>
            <div class="coin"></div>
            <div class="coin" id="n17">17</div>
            <div class="coin" id="n16">16</div>
            <div class="coin" id="n15">15</div>
            <div class="coin" id="n14">14</div>
            <div class="green" id="n13">13</div>
            <div class="coin" id="n12">12</div>
        </div>
        <div class="row">
            <div class="yellow"></div>
            <div class="yellow"></div>
            <div class="yellow"></div>
            <div class="yellow"></div>
            <div class="yellow"></div>
            <div class="yellow"></div>
            <div class="coin" id="n30">30</div>
            <div class="yellow" id="y5">y5</div>
            <div class="coin" id="n18">18</div>
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
            <div class="coin" id="n29">29</div>
            <div class="yellow" id="y4">y4</div>
            <div class="coin" id="n19">19</div>
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
            <div class="coin" id="n28">28</div>
            <div class="yellow" id="y3">y3</div>
            <div class="coin" id="n20">20</div>
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
            <div class="coin" id="n27">27</div>
            <div class="yellow" id="y2">y2</div>
            <div class="coin" id="n21">21</div>
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
            <div class="yellow" id="n26">26</div>
            <div class="yellow" id="y1">y1</div>
            <div class="coin" id="n5">22</div>
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
            <div class="coin" id="n25">25</div>
            <div class="coin" id="n24">24</div>
            <div class="coin" id="n23">23</div>
            <div class="green"></div>
            <div class="green"></div>
            <div class="green"></div>
            <div class="green"></div>
            <div class="green"></div>
            <div class="green"></div>
        </div>
    </div>
    <form action="/test1/move" method='post'>
    	<input type="hidden" name="fromPos" id="fromPos"/>
    	<input type="hidden" name="toPos" id="toPos"/>
    	<input type="submit" value="move">
    </form>
    <c:forEach var="onePos" items="${horsePositionList}">
    	<h1><c:out value="${onePos}"/></h1>
    </c:forEach>
	<h1><c:out value="${horsePositionList.contains(1)}"/></h1>
	<script type="text/javascript" src="/js/app.js"></script>
	<script>
		var list = ${horsePositionList}
		console.log(list.includes(2))
	</script>
</body>
</html>