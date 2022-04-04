<?xml version="1.0"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/"><!-- Se utiliza para crear plantillas, match significa para asociar una plantilla que hemos realizado anteriormente,asociarlo con la plantilla XML,también se puede utilizar para definir una plantilla. El valor del atributo /, es un atributo de expresión XPath.-->
  <html>
  <body>
    <h2>My CD Collection</h2>
    <table border="1">
      <tr bgcolor="#9acd32">
        <th style="text-align:left">Title</th>
        <th style="text-align:left">Artist</th>
        <th style="text-align:left">Price</th>
      </tr>
      <!--Para seleccionar cada uno de los elementos a partir de la ruta que-->
      <xsl:for-each select="catalog/cd">
      <xsl:sort select="artist" order="descending"/><!--Sirve para ordenar la tabla-->
      <xsl:sort select="price" data-type="number" order="descending"/>
      <xsl:if test="((price &lt; 10) and (price &gt; 7.5)) or (price &gt; 12)">
        <!-- filtramos por elementos con cadenas, poniendo = 'valor'-->
        <xsl:if test="artist='Bob Dylan'">  
          <!-- Filtramos por atributos de elementos con la @atributo -->
          <xsl:if test="title/@id='2'">
        </xsl:if>
      </xsl:if>
    </xsl:if>
          <tr>
          
            <!-- Seleccionar el valor de un elemento que indico con select-->
            <td><xsl:value-of select="title"/>
            </td>
            <!-- Utilizamos choose para escoger entre distintas opciones-->
            <xsl:choose>
            <!-- Con when especificamos la condición a cumplir-->
        <xsl:when test="price &gt; 8 ">
          <td bgcolor="#ff00ff">
          <xsl:value-of select="artist"/></td>
        </xsl:when>
        <!-- Añadimos otro when/condición para que si el precio está entre 0 y 8 el bg se ponga de otro color-->
        <xsl:when test="price &gt; 0 and price &lt; 8">
          <td bgcolor="#ff0000">
          <xsl:value-of select="artist"/></td>
        </xsl:when>
      
        <!-- Con otherwise especificamos qué se hace, si la condición no se cumple-->
        <xsl:otherwise>
          <td><xsl:value-of select="artist"/></td>
        </xsl:otherwise>
      </xsl:choose>
          <td><xsl:value-of select="price"/></td>
          <xsl:if test="price &gt; 10">
          <td bgcolor="#ff00ff">
            <xsl:value-of select="price"></xsl:value-of></td>
          </xsl:if>
          <xsl:if test="price &gt; 8 and price &lt; 10">
          <td bgcolor="#ff0000">
          <xsl:value-of select="price"/></td>
        </xsl:if>
        <xsl:if test="price &gt; 10">
          <td bgcolor="white"><xsl:value-of select ="price"/></td>
          </xsl:if>
        </tr>
       
      </xsl:for-each>
    </table>
  </body>
  </html>
</xsl:template>

</xsl:stylesheet>