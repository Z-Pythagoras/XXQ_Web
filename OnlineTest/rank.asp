<!DOCTYPE html>
<html>
<head>
	<title>The rank of the exam</title>
	<link rel="stylesheet" type="text/css" href="css/Section.css">
</head>

<body>
<h1>The rank of the exam</h1>

<%
set conn=Server.CreateObject("ADODB.Connection")
conn.Provider="Microsoft.Jet.OLEDB.4.0"
conn.Open(Server.Mappath("score.mdb"))
set rs = Server.CreateObject("ADODB.recordset")
sql="SELECT s_name, s_score FROM score ORDER BY s_score DESC"
rs.Open sql, conn
%>

<table border="2" width="35%" align="center">
<tr><td>Name</td><td>Score</td>
<%do until rs.EOF%>
<tr valign="middle">
<%for each x in rs.Fields%>
<td><%Response.Write(x.value)%></td>
<%next
rs.MoveNext
%>
</tr>
<%loop
rs.close
conn.close
%>
</table>

</body>
</html>
