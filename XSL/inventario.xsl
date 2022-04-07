<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
<html> 
<body>

    <h2>Almacen</h2>
      <xsl:for-each select="Almacen">
    <tr>
        <td><xsl:value-of select="Producto:"/></td>
        <td><xsl:value-of select="Peso:"/></td>
        <td><xsl:value-of select="Nombre:"/></td>
        <td><xsl:value-of select="Lugar:"/></td>
        <td><xsl:value-of select="Aula:"/></td>
    </tr>
       
      </xsl:for-each>

 </body>
</html>
</xsl:template>
</xsl:stylesheet>