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
            <div class="coin" id="n49" onClick="moveHorse(49)"><c:if test="${horsePositionList.get(0) == 49}"><div class="player2"></div></c:if>49</div>
            <div class="coin" id="n50" onClick="moveHorse(50)"><c:if test="${horsePositionList.get(0) == 50}"><div class="player2"></div></c:if>50</div>
            <div class="coin" id="n51" onClick="moveHorse(51)"><c:if test="${horsePositionList.get(0) == 51}"><div class="player2"></div></c:if>51</div>
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
            <div class="coin" id="n48"><c:if test="${horsePositionList.get(0) == 48}"><div class="player2"></div></c:if>48</div>
            <div class="blue" id="b1">b1</div>
            <div class="blue" id="n0" onClick="moveHorse(0)"><c:if test="${horsePositionList.get(0) == 0}"><div class="player2"></div></c:if>0</div>
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
            <div class="coin" id="n46" onClick="moveHorse(46)"><c:if test="${horsePositionList.get(0) == 46}"><div class="player2"></div></c:if>46</div>
            <div class="blue" id="b3">b3</div>
            <div class="coin" id="n2"  onClick="moveHorse(2)"><c:if test="${horsePositionList.get(0) == 2}"><div class="player2"></div></c:if>2</div>
            <div class="blue"></div>
            <div class="coin"><c:if test="${horsePositionList.get(0) == -1}"><div class="player2"></div></c:if></div>
            <div class="blue"></div>
            <div class="blue"></div>
            <div class="coin"><c:if test="${horsePositionList.get(1) == -1}"><div class="player2"></div></c:if></div>
            <div class="blue"></div>
        </div>
        <div class="row">
            <div class="red"></div>
            <div class="red"></div>
            <div class="red"></div>
            <div class="red"></div>
            <div class="red"></div>
            <div class="red"></div>
            <div class="coin" id="n45" onClick="moveHorse(45)"><c:if test="${horsePositionList.get(0) == 45}"><div class="player2"></div></c:if>45</div>
            <div class="blue" id="b4">b4</div>
            <div class="coin" id="n3" onClick="moveHorse(3)"><c:if test="${horsePositionList.get(0) == 3}"><div class="player2"></div></c:if>3</div>
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
            <div class="coin" id="n44" onClick="moveHorse(44)"><c:if test="${horsePositionList.get(0) == 44}"><div class="player2"></div></c:if>44</div>
            <div class="blue" id="b5">b5</div>
            <div class="coin" id="n4" onClick="moveHorse(4)"><c:if test="${horsePositionList.get(0) == 4}"><div class="player2"></div></c:if>4</div>
            <div class="blue"></div>
            <div class="blue"></div>
            <div class="blue"></div>
            <div class="blue"></div>
            <div class="blue"></div>
            <div class="blue"></div>
        </div>
        <div class="row">
            <div class="coin" id="n38" onClick="moveHorse(38)"><c:if test="${horsePositionList.get(0) == 38}"><div class="player2"></div></c:if>38</div>
            <div class="red" id="n39" onClick="moveHorse(39)"><c:if test="${horsePositionList.get(0) == 39}"><div class="player2"></div></c:if>39</div>
            <div class="coin" id="n40" onClick="moveHorse(40)"><c:if test="${horsePositionList.get(0) == 40}"><div class="player2"></div></c:if>40</div>
            <div class="coin" id="n41" onClick="moveHorse(41)"><c:if test="${horsePositionList.get(0) == 41}"><div class="player2"></div></c:if>41</div>
            <div class="coin" id="n42" onClick="moveHorse(42)"><c:if test="${horsePositionList.get(0) == 42}"><div class="player2"></div></c:if>42</div>
            <div class="coin" id="n43" onClick="moveHorse(43)"><c:if test="${horsePositionList.get(0) == 43}"><div class="player2"></div></c:if>43</div>
            <div class="coin"></div>
            <div class="coin"></div>
            <div class="coin"></div>
            <div class="coin" id="n5" onClick="moveHorse(5)"><c:if test="${horsePositionList.get(0) == 5}"><div class="player2"></div></c:if>5</div>
            <div class="coin" id="n6" onClick="moveHorse(6)"><c:if test="${horsePositionList.get(0) == 6}"><div class="player2"></div></c:if>6</div>
            <div class="coin" id="n7" onClick="moveHorse(7)"><c:if test="${horsePositionList.get(0) == 7}"><div class="player2"></div></c:if>7</div>
            <div class="coin" id="n8" onClick="moveHorse(8)"><c:if test="${horsePositionList.get(0) == 8}"><div class="player2"></div></c:if>8</div>
            <div class="coin" id="n9" onClick="moveHorse(9)"><c:if test="${horsePositionList.get(0) == 9}"><div class="player2"></div></c:if>9</div>
            <div class="coin" id="n10" onClick="moveHorse(10)"><c:if test="${horsePositionList.get(0) == 10}"><div class="player2"></div></c:if>10</div>
        </div>
        <div class="row">
            <div class="coin" id="n37" onClick="moveHorse(37)"><c:if test="${horsePositionList.get(0) == 37}"><div class="player2"></div></c:if>37</div>
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
            <div class="coin" id="n11"><c:if test="${horsePositionList.get(0) == 11}"><div class="player2"></div></c:if>11</div>
        </div>
        <div class="row">
            <div class="coin" id="n36" onClick="moveHorse(36)"><c:if test="${horsePositionList.get(0) == 36}"><div class="player2"></div></c:if>36</div>
            <div class="coin" id="n35" onClick="moveHorse(35)"><c:if test="${horsePositionList.get(0) == 35}"><div class="player2"></div></c:if>35</div>
            <div class="coin" id="n34" onClick="moveHorse(34)"><c:if test="${horsePositionList.get(0) == 34}"><div class="player2"></div></c:if>34</div>
            <div class="coin" id="n33" onClick="moveHorse(33)"><c:if test="${horsePositionList.get(0) == 33}"><div class="player2"></div></c:if>33</div>
            <div class="coin" id="n32" onClick="moveHorse(32)"><c:if test="${horsePositionList.get(0) == 32}"><div class="player2"></div></c:if>32</div>
            <div class="coin" id="n31" onClick="moveHorse(31)"><c:if test="${horsePositionList.get(0) == 31}"><div class="player2"></div></c:if>31</div>
            <div class="coin"></div>
            <div class="coin"></div>
            <div class="coin"></div>
            <div class="coin" id="n17" onClick="moveHorse(17)"><c:if test="${horsePositionList.get(0) == 17}"><div class="player2"></div></c:if>17</div>
            <div class="coin" id="n16" onClick="moveHorse(16)"><c:if test="${horsePositionList.get(0) == 16}"><div class="player2"></div></c:if>16</div>
            <div class="coin" id="n15" onClick="moveHorse(15)"><c:if test="${horsePositionList.get(0) == 15}"><div class="player2"></div></c:if>15</div>
            <div class="coin" id="n14" onClick="moveHorse(14)"><c:if test="${horsePositionList.get(0) == 14}"><div class="player2"></div></c:if>14</div>
            <div class="green" id="n13" onClick="moveHorse(13)"><c:if test="${horsePositionList.get(0) == 13}"><div class="player2"></div></c:if>13</div>
            <div class="coin" id="n12" onClick="moveHorse(12)"><c:if test="${horsePositionList.get(0) == 12}"><div class="player2"></div></c:if>12</div>
        </div>
        <div class="row">
            <div class="yellow"></div>
            <div class="yellow"></div>
            <div class="yellow"></div>
            <div class="yellow"></div>
            <div class="yellow"></div>
            <div class="yellow"></div>
            <div class="coin" id="n30" onClick="moveHorse(30)"><c:if test="${horsePositionList.get(0) == 30}"><div class="player2"></div></c:if>30</div>
            <div class="yellow" id="y5">y5</div>
            <div class="coin" id="n18" onClick="moveHorse(18)"><c:if test="${horsePositionList.get(0) == 18}"><div class="player2"></div></c:if>18</div>
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
            <div class="coin" id="n29" onClick="moveHorse(29)"><c:if test="${horsePositionList.get(0) == 29}"><div class="player2"></div></c:if>29</div>
            <div class="yellow" id="y4">y4</div>
            <div class="coin" id="n19" onClick="moveHorse(19)"><c:if test="${horsePositionList.get(0) == 19}"><div class="player2"></div></c:if>19</div>
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
            <div class="coin" id="n28" onClick="moveHorse(28)"><c:if test="${horsePositionList.get(0) == 28}"><div class="player2"></div></c:if>28</div>
            <div class="yellow" id="y3">y3</div>
            <div class="coin" id="n20" onClick="moveHorse(20)"><c:if test="${horsePositionList.get(0) == 20}"><div class="player2"></div></c:if>20</div>
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
            <div class="coin" id="n27" onClick="moveHorse(27)"><c:if test="${horsePositionList.get(0) == 27}"><div class="player2"></div></c:if>27</div>
            <div class="yellow" id="y2">y2</div>
            <div class="coin" id="n21" onClick="moveHorse(21)"><c:if test="${horsePositionList.get(0) == 21}"><div class="player2"></div></c:if>21</div>
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
            <div class="yellow" id="n26"onClick="moveHorse(26)"><c:if test="${horsePositionList.get(0) == 26}"><div class="player2"></div></c:if>26</div>
            <div class="yellow" id="y1">y1</div>
            <div class="coin" id="n5" onClick="moveHorse(22)"><c:if test="${horsePositionList.get(0) == 22}"><div class="player2"></div></c:if>22</div>
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
            <div class="coin" id="n25" onClick="moveHorse(25)"><c:if test="${horsePositionList.get(0) == 25}"><div class="player2"></div></c:if>25</div>
            <div class="coin" id="n24" onClick="moveHorse(24)"><c:if test="${horsePositionList.get(0) == 24}"><div class="player2"></div></c:if>24</div>
            <div class="coin" id="n23" onClick="moveHorse(23)"><c:if test="${horsePositionList.get(0) == 23}"><div class="player2"></div></c:if>23</div>
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