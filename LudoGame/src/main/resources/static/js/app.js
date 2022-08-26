const fromPos = document.querySelector("#fromPos");
var whichClick = 0;
const toPos = document.querySelector("#toPos");

fromPos.value = -99;
toPos.value = -99;

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

const soundBtn = document.querySelector('.sound_button')
const diceroll = document.querySelector('.diceroll')
	
const bgSound = new Audio("/sounds/bg.mp3");
const rollSound = new Audio("/sounds/diceroll.mp3")

soundBtn.addEventListener('click', () => {
	playSound(bgSound)
})
		
function playSound(sound) {
	sound.currentTime=0;
	sound.play();
}

diceroll.addEventListener('click', () => {
	playSound(rollSound)
})
		
function playSound(sound) {
	sound.currentTime=0;
	sound.play();
}

