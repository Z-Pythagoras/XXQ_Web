<!DOCTYPE html>
<html>

<head>
	<title>SAT Math Warm-up Exam</title>
	<link rel="stylesheet" type="text/css" href="css/Section.css">
	<script type="text/javascript" src="js/testResult.js"></script>
</head>

<body>
<h1>SAT Math Warm-up Exam</h1>
<p class="greet"><em><script type="text/javascript" src="js/greet.js"></script></em><br /><strong>Introduction:</strong> 
SAT Subject Tests are 20 multiple-choice standardized tests given by the College Board on individual subjects. They are usually taken to improve a student's credentials for admission to colleges in the United States. <br />Now you have a chance to practice for the formal test.<br />
<a href="rank.asp">The rank of the exam</a>
</p>

<h2>I. First Section: Simple Choice Question</h2>
<form method="post" name="scq1">1. Ben is three times as old as Samantha, who is two years older than half of Michele's age. If Michele is 12,how old is Ben?<br />
<input type="radio" name="age" value="A" /> A. 8<br />
<input type="radio" name="age" value="B" /> B. 18<br />
<input type="radio" name="age" value="C" /> C. 20<br />
<input type="radio" name="age" value="D" /> D. 24<br />
<input type="radio" name="age" value="E" /> E. 36<br />
</form>
<form method="post" name="scq2">2. If 10% of y is equal to 25% of z, and z = 16, what is the value of y?<br />
<input type="radio" name="y" value="A" /> A. 4<br />
<input type="radio" name="y" value="B" /> B. 6.4<br />
<input type="radio" name="y" value="C" /> C. 24<br />
<input type="radio" name="y" value="D" /> D. 40<br />
<input type="radio" name="y" value="E" /> E. 64<br />
</form>

<form method="post" name="scq3">3. Every 3 minutes, 4 liters of water are poured into a 2,000-liter tank. After 2 hours, what percent of the tank is full?<br />
<input type="radio" name="percent" value="A" /> A. 0.4%<br />
<input type="radio" name="percent" value="B" /> B. 4%<br />
<input type="radio" name="percent" value="C" /> C. 8%<br />
<input type="radio" name="percent" value="D" /> D. 12%<br />
<input type="radio" name="percent" value="E" /> E. 16%<br />
</form>
<form method="post" name="scq4">4. In the diagram above, line AB is parallel to line CD, and line EF is perpendicular to line CD.What is the measure of angle x?<img src="images/i4.jpg" alt="i4"><br />
<input type="radio" name="degree" value="A" /> A. 40 degrees<br />
<input type="radio" name="degree" value="B" /> B. 45 degrees<br />
<input type="radio" name="degree" value="C" /> C. 50 degrees<br />
<input type="radio" name="degree" value="D" /> D. 60 degrees<br />
<input type="radio" name="degree" value="E" /> E. 80 degrees<br />
</form>
<form method="post" name="scq5">5. Triangle BDC, shown above, has an area of 48 square units. If ABCD is a rectangle, what is the area of the circle in square units?<img src="images/i5.jpg" alt="i5"><br />
<input type="radio" name="area" value="A" /> A. 6&pi; square units<br />
<input type="radio" name="area" value="B" /> B. 12&pi; square units<br />
<input type="radio" name="area" value="C" /> C. 24&pi; square units<br />
<input type="radio" name="area" value="D" /> D. 30&pi; square units<br />
<input type="radio" name="area" value="E" /> E. 36&pi; square units<br />
</form>

<h2>II. Second Section: Multiple Choice Question</h2>
<form method="post" name="mcq6">6. The expression x<sup>2</sup> - 8x + 12 is equal to 0 when x = ? and ?<br />
<input type="checkbox" name="x" value="A" /> A. -12<br />
<input type="checkbox" name="x" value="B" /> B. 2<br />
<input type="checkbox" name="x" value="C" /> C. -2<br />
<input type="checkbox" name="x" value="D" /> D. -4<br />
<input type="checkbox" name="x" value="E" /> E. 6<br />
</form>
<form method="post" name="mcq7">7. David draws a line that is 13 units long. If (-4,1) is one endpoint of the line, which of the following could be the other endpoint?<br />
<input type="checkbox" name="endpoint" value="A" /> A. (1,13)<br />
<input type="checkbox" name="endpoint" value="B" /> B. (9,14)<br />
<input type="checkbox" name="endpoint" value="C" /> C. (3,7)<br />
<input type="checkbox" name="endpoint" value="D" /> D. (8,-4)<br />
<input type="checkbox" name="endpoint" value="E" /> E. (13,13)<br />
</form>

<h2>III. Third Section: Blank Filling Question</h2>
<form method="post" name="bfq8">8. What is the sixth term of the sequence: 1, 1, 2 ,3, 5, ... ?<br />
<input type="text" name="6thterm" size="15" maxlength="5" />
</form>
<form method="post" name="bfq9">9. The angles of a triangle are in the ratio 1:3:5.What is the measure, in degrees, of the largest angle of the triangle?<br />
<input type="text" name="angle" size="15" maxlength="5" />
</form>
<form method="post" name="bfq10">10. Each face of a cube is identical to two faces of rectangular prism whose edges are all integers larger than one unit in measure. If the surface area of one face of the prism is 9 square units and the surface area of another face of the prism is 21 square units, find the possible surface area of the cube.<br />
<input type="text" name="area2" size='15' maxlength="5" />
</form>

<form method="post">
Please enter your name: <br />
<input type="text" name="username" size="15" maxlength="20" /><br />
<input type="hidden" name="userscore" value="" />
<input type="submit" name="submit" value="submit" onclick="printResult()" />
</form>


<%
set conn=Server.CreateObject("ADODB.Connection")
conn.Provider="Microsoft.Jet.OLEDB.4.0"
conn.Open(Server.Mappath("score.mdb"))
sql="INSERT INTO score (s_name,s_score)"
sql=sql & " VALUES "
sql=sql & "('" & Request.Form("username") & "',"
sql=sql & "'" & Request.Form("userscore") & "')"
on error resume next
conn.Execute sql,recaffected
if err<>0 then
Response.Write("No update permissions!")
end if
conn.close
%>



</body>
</html>
