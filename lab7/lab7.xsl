<?xml version="1.0" ?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="html" version="5.0" encoding="UTF-8" indent="yes" />

	 <xsl:template match="/tracks">
		 <html>
		 <head>
		 
		 <style>
			body  {
				background: url(bg.jpg) no-repeat center center fixed; 
				-webkit-background-size: cover;
				-moz-background-size: cover;
				-o-background-size: cover;
				background-size: cover;
				text-align: center;
				margin: 0;
				padding: 0;
				font-family: Anton, sans-serif;
			}	

			h1 {
				text-align: center; 
				color: blue; 
				font-size: 40px;
			}
			table {
				width: 100%;
				background: rgba(255,255,255,0.1);
				border: 2px solid black;
			}

			table, th, td {
				border: 2px solid black;
				border-collapse: collapse;
			}
			
			th, td {
				padding: 5px;
				text-align: center;
			}

			div {
				margin: 0 auto;
				text-align: center;
				width: 500px;
				display: inline-block;
				border-radius: 5px;
				background-color: #f2f2f2;
				padding: 20px;				
				font-size: 20px;
			}

			img {
				width:70px;
				height:70px;
			}
		</style>
		<title>Lab 07, Mahmudulla Fahim</title>
		
		</head>
		 
		 <body>
		 <h1> Lab07 Part 1 - XML, XSLT, CSS </h1>
			
		<div>
			<b>Radio Name: </b> <xsl:value-of select = "radioname" /> <br />
			<b>Rank: </b> <xsl:value-of select = "rank" />  <br />
			<b>Radionomy: </b> <xsl:value-of select = "isradionomy" />  <br />
			<b>Radio URl: </b> <a href="{radurl}"> <xsl:value-of select="radurl" /></a>
		</div> <br /> <br />
		
		<div>
			<table>
			<tr>
				<th colspan = "2">  Track Information </th>
			</tr>			
			<xsl:for-each select ="track">
				<tr>	
					<th> Unique ID </th> 
					<td> <xsl:value-of select = "uniqueid" /> </td>
				</tr>				
				<tr>	
					<th> Title</th> 
					<td> <xsl:value-of select = "title" /> </td>
				</tr>				
				<tr>	
					<th> Artist </th> 
					<td> <xsl:value-of select = "artists" /> </td>
				</tr>
				<tr>	
					<th> Start Time (European - CET) </th> 
					<td> <xsl:value-of select = "starttime" /> </td>
				</tr>				
				<tr>	
					<th> Play Duration</th> 
					<td> <xsl:value-of select = "playduration" /> </td>
				</tr>				
				<tr>	
					<th> Current </th> 
					<td> <xsl:value-of select = "current" /> </td>
				</tr>				
				<tr>	
					<th> Cover </th> 
					<td> <img src="{cover}" alt="logo" style="width:70px; height:70px;"> <xsl:value-of select="cover" /></img> </td>
				</tr>				
				<tr>	
					<th> Call Me Back </th> 
					<td> <xsl:value-of select = "callmeback" /> </td>
				</tr>			
			</xsl:for-each>
			</table>
		</div>			
		</body>
		
		</html>
	  </xsl:template>	  
</xsl:stylesheet>	  