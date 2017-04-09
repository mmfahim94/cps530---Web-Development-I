#!/usr/bin/perl
use CGI ':standard';


$name = param('name');
@g = param('gender');
$prog = param('program');
@yr = param('year');
@teams = param ('team');

print<<EOF;
Content-type: text/html

<html>
<head>
<link rel="stylesheet" type="text/css" href="http://scs.ryerson.ca/~mmfahim/lab4/style.css">
<title>Your Information</title>
</head>
<body>
<center>
<div>
<p><b>Name:</b> $name <br>
<b>Gender:</b> @g <br>
<b>Enrolled in:</b> $prog <br>
<b>Year:</b> @yr <br>
<b>Favorite Team(s):</b> @teams <br> </p>
</div>
<center>
</body>
</html>
EOF
