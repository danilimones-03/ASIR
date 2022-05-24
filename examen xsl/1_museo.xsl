<?xml version="1.0"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:template match="/">
<html>
<title>Resultado Ejercicio1 Museos</title>
<body>

<xsl:apply-templates/>
</body>
</html>
</xsl:template>
<xsl:template match="museos/museo">
<p>
<p>Datos del museo:</p>
<xsl:apply-templates select="nombre"/>
<xsl:apply-templates select="ciudad"/>
</p>
</xsl:template>
<xsl:template match="nombre">
Nombre:
<span style="color:#010101 ">
<xsl:value-of select="."/>
</span>
<br/>
</xsl:template>
<xsl:template match="ciudad">
Ciudad:
<span style="color:#010101 ">
<xsl:value-of select="."/>
</span>
<br/>
</xsl:template>
</xsl:stylesheet>