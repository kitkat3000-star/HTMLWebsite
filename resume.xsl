<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns="http://www.w3.org/1999/xhtml">
<xsl:output method="xml" indent="yes" encoding="UTF-8"/>


<xsl:template match="/Resume">
<html> 
<style>
.content {
font-family: "Lucida Sans Unicode", "Lucida Grande", sans-serif; 
text-align: left;

}

.bg
{
font-family: times, serif;
color: darkslategrey;
}

.bg1{
font-family: "Lucida Sans Unicode";
font-style: italic;
font-size: 28;

}

.container {
text-align: center;
color: black;
}

h3{
 color: darkslategrey;
}

.centered {
  position: absolute;
  top: 100%;
  left: 51%;
  transform: translate(-50%, -50%);
}
</style>
<body>
<div class="container">
	<img src="https://png.pngtree.com/thumb_back/fw800/back_our/20190621/ourmid/pngtree-my-resume-background-material-image_177383.jpg"  style="width:63.5%;" height="200%" />

	<div class="centered">  
		<h1 class="bg" > <xsl:value-of select ="name" />  </h1>
		<h2 class="bg1"> Student </h2> <br/>
		<div class="content">
			<img src="https://cdn2.vectorstock.com/i/1000x1000/26/06/young-executive-woman-profile-icon-vector-9692606.jpg" width="18%" style="border-radius: 60%;" align="left"/>
			<h3> CONTACT:  </h3>
			<img src="https://png.pngtree.com/svg/20170401/35c0d1ec9c.svg" align="left" width="3%" style="object-fit: cover;" /> 
			<xsl:value-of select ="phone" /> <br/><br/>

			<img src="https://cdn1.iconfinder.com/data/icons/cv-resume-1/32/3-512.png" align="left" width="3%" style="object-fit: cover;" /> <xsl:value-of select ="email" /> <br/> <br/>

			<img src="https://image.flaticon.com/icons/svg/1104/1104720.svg" align="left" width="3%" style="object-fit: cover;" /> <xsl:value-of select ="Address" /> <br/><br/><br/>

			<hr />

<table border="0" >

<tr>
<td width="40%" bgcolor="lightblue"> <h3> OBJECTIVE: </h3> <hr/> <xsl:value-of select ="objective" /> </td>
<td align="center"><h3>VOLUNTEERING EXPERIENCE: </h3> <hr/> 
<ul>
<xsl:for-each select ="volexperience"> 
<li> <xsl:value-of select="volexp" /> </li>
</xsl:for-each>
</ul>
</td>
</tr>

<tr>
<td bgcolor="lightblue"><h3> EDUCATION: </h3> <hr/><xsl:value-of select ="education" /></td>
<td align="center"><h3> INTERNSHIP: </h3><hr/>
<xsl:for-each select ="internship"> 
<xsl:value-of select="work" /><br/>
</xsl:for-each>
 </td>
</tr>

<tr>
<td bgcolor="lightblue"><h3>SKILLS: </h3> <hr/><xsl:value-of select ="skills" /></td>
<td align="center"><h3> ACHIEVEMENTS: </h3><hr/>
<ul>
<xsl:for-each select ="achievements"> 
<li><xsl:value-of select="achieve" /></li> 
</xsl:for-each>
</ul>
</td>
</tr>

</table>
</div>
</div>
</div>
</body>
</html>
</xsl:template>
</xsl:stylesheet>

