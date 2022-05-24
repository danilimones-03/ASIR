<?xml version="1.0"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:template match="/">
    <html>
      <body>
     <!--En este documento esta incluida la tabla con el nombre y la ciudad y ademas esta ya aplicado el condicional de la ciudad de Londres -->
        <table border="1" style="text-align:center">
            <tr bgcolor="white">
            <th style="text-align:center">Nombre</th>
            <th style="text-align:center">Ciudad</th>
          </tr>
          <xsl:for-each select="museos/museo">
          <tr>
            <td>
                <xsl:value-of select="nombre"/>
                </td>
                <!--Esto es la parte del condicional -->
                <xsl:choose>
                    <xsl:when test="(ciudad='Londres' )"> 
                      <td bgcolor="#FF0000">
                        <xsl:value-of select="ciudad"/>
                      </td>
                    </xsl:when> 
                    <xsl:otherwise> 
                        <td bgcolor="white">
                            <xsl:value-of select="ciudad"/>
                        </td>
                    </xsl:otherwise>
                </xsl:choose> 
          </tr>
          </xsl:for-each>
        </table>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>
