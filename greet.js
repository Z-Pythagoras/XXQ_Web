var today = new Date();
var hourNow = today.getHours();
var minuteNow = today.getMinutes();
var greeting;

if (hourNow >= 18) 
	greeting = "Good Evening!";
else if (hourNow >= 12) 
	greeting = "Good Afternoon!";
else 
	greeting = "Good Morning!";

document.write(" <span id = 'time'></span> " + greeting);
setInterval("time.innerText = new Date().toLocaleString()",1000);