
<html>
<body>
<h1>List of countries</h1>
<h2>Sam Lall, Assignment 5, I 590 SQL NoSQL</h2>
<ul>
{
for $x in doc("happiness.xml")/root/row
order by $x/Country
return <li>{data($x/Country)}</li>
}
</ul>
</body>
</html>