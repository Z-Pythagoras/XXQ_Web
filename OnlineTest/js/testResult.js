var startTime = new Date(); 

function checkAnswer() {
	var score = 0;
	//Simple Choice Question
	var result = new Array("age", "D", "y", "D", "percent", "C", "degree", "C", "area", "E");
	var index;
	for (var i = 0; i < result.length; i += 2) {
		index = document.getElementsByName(result[i]);
		for (var j = 0; j < index.length; ++j)
			if (index.item(j).checked && index.item(j).value == result[i + 1])
				score += 5;
	}
	//Multiple Choice Question
	result = new Array(new Array("x", false, true, false, false, true), new Array("endpoint", true, false, false, true, false));
	var k, tmpScore;
	for (var i = 0; i < result.length; ++i){
		index = document.getElementsByName(result[i][0]);
		tmpScore = 0;
		for (var j = 0; j < index.length; ++j){
			k = index.item(j).value.charCodeAt(0) - 65 + 1;
			if (k < result[i].length && index.item(j).checked)
				if (result[i][k])
					tmpScore += 2.5;
				else{
					tmpScore = 0;
					break;
				} 
		}
		score += tmpScore;
	}
	//Blank Filling Question
	if (document.getElementsByName("6thterm").item(0).value == "8")
		score += 5;
	if (document.getElementsByName("angle").item(0).value == "100")
		score += 5;
	if (document.getElementsByName("area2").item(0).value == "54")
		score += 5;
	document.all.userscore.value=score;
	return score;
}

function finishTime() {
	var endTime = new Date();
	var finTi = (endTime - startTime) / 1000;
	var finMin = Math.floor(finTi / 60);
	var finSec = Math.round(finTi % 60);
	if(finMin >= 1)
		finTi = finMin + " min " + finSec + " sec";
	else
		finTi = finSec + " sec";

	return finTi;
}

function printResult() {
	alert("Your score is " + checkAnswer() + "!" + "\n" + "You have cost " + finishTime() + " to finish the test.");
}
