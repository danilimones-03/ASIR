<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
<html> 
<body>
  <h2>My CD Collection</h2>
  <table border="1">
    <tr bgcolor="#9acd32">
      <th style="text-align:left">Title</th>
      <th style="text-align:left">Artist</th>
      <th style="text-align:left">Price</th>
      <th style="text-align:left">Country</th>
    </tr>
    <xsl:for-each select="catalog/cd">
    <xsl:sort select="artist" order="descending"/>
    <xsl:sort select="price" data-type="number" order="descending" />
   

    <xsl:if test="((price &lt; 10) and (price &gt; 7.5)) or (price &gt; 12)">
      <!-- filtramos por elementos con cadenas, poniendo = 'valor'-->
      <xsl:if test="artist='Bob Dylan'">  
        <!-- Filtramos por atributos de elementos con la @atributo -->
      <xsl:if test="title/@id='2'">

    <tr>
      <td><xsl:value-of select="title"/></td>
      <td><xsl:value-of select="artist"/></td>
      <td><xsl:value-of select="price"/></td>
      <td><xsl:value-of select="country"/></td>
    </tr>
  </xsl:if>
    </xsl:if>
    </xsl:if>
    </xsl:for-each>
  </table>
</body>
</html>
</xsl:template>
</xsl:stylesheet>
<!-- El elemento xsl:template  se utiliza para crear plantillas personalizadas.
 La etiqueta "<xsl:template match=/>" se utiliza para asociar una plantilla con un archivo XML.
<<xsl:if test="((price &lt; 10) and (price &gt; 7.5)) or (price &gt; 12)">
       filtramos por elementos con cadenas, poniendo = 'valor'
      <xsl:if test="artist='Bob Dylan'">  
         Filtramos por atributos de elementos con la @atributo 
        <xsl:if test="title/@id='2'">
        <tr>
          Seleccionar el valor de un elemento que indico con select
          <td><xsl:value-of select="title"/></td>
          <td><xsl:value-of select="artist"/></td>
          <td>-->
