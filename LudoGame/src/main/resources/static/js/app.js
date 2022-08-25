const fromPos = document.querySelector("#fromPos");
var whichClick = 0;
const toPos = document.querySelector("#toPos");

function moveHorse(pos){
	if(whichClick == 0){
		setFromPosition(pos)
		whichClick++
	}
	else{
		setToPosition(pos)
		whichClick--
	}
}

function setFromPosition(pos){
    fromPos.value = pos
	console.log(fromPos)
}

function setToPosition(pos){
    toPos.value = pos
	console.log(toPos)
}