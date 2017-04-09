#!/usr/bin/perl

print<<EOF;
Content-type: text/html

<HTML>
<HEAD>
<link rel="stylesheet" type="text/css" href="http://scs.ryerson.ca/~mmfahim/lab4/style.css">
<TITLE>Perl Form</TITLE>
</HEAD>
<BODY>
<center>
<H1> Put Your Information Below </H1>
<div>
<FORM ACTION="part2info.pl" METHOD="POST" ><br>

Enter your name: <br>
<INPUT TYPE = "text" NAME = "name" SIZE = "30"> <br><br>

Your Gender: <br>
<INPUT TYPE = "radio" NAME = "gender" VALUE = "Male"> Male 
<INPUT TYPE = "radio" NAME = "gender" VALUE = "Female"> Female 
<br><br> 

Program enrolled in Ryerson: <br>
<INPUT TYPE = "text" NAME = "program" SIZE = "20"> <br><br>

Year:<br>
<SELECT NAME = "year" SIZE = "1">
	<OPTION VALUE = "1st Year"> 1st </OPTION>
	<OPTION VALUE = "2nd Year"> 2nd </OPTION>
	<OPTION VALUE = "3rd Year"> 3rd </OPTION>
	<OPTION VALUE = "4th Year"> 4th </OPTION>
</SELECT> <br><br>

Favorite Toronto Sports Team:<br>
<INPUT TYPE = "checkbox" NAME = "team" VALUE = "Toronto Raptors"> Toronto Raptors<br>
<INPUT TYPE = "checkbox" NAME = "team" VALUE = "Toronto Maple Leafs"> Toronto Maple Leafs<br>
<INPUT TYPE = "checkbox" NAME = "team" VALUE = "Toronto FC"> Toronto FC <br>
<INPUT TYPE = "checkbox" NAME = "team" VALUE = "Toronto Blue Jays">Toronto Blue Jays <br><br> <br>

<INPUT TYPE = "RESET" NAME = "reset" VALUE = "Reset">
<INPUT TYPE = "SUBMIT" NAME = "submit" VALUE = "Submit">

<br>
</div>
<br><br><br><br>
<div>
<p> Name: Mahmudulla Fahim <br>
       Student Number: 500578737 <br> </p>
	   </div>
</center>
</FORM>
</BODY>
</HTML>
EOF

