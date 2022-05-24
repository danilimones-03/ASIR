<?xml version="1.0"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:template match="/">
    <html>
        <title>Resultado Ejercicio1 Paises</title>
      <body>
        <h2 style="text-align:center">Paises de la OTAN</h2>
        <table border="1" style="text-align:center">
            <tr bgcolor="white">
            <th style="text-align:center">Nombre Pais</th>
            <th style="text-align:center">Año entrada</th>
          </tr>
          <xsl:for-each select="geografia/otan/pais">
          <tr>
            <td>
                <xsl:value-of select="./@nombre"/>
            </td>
                
            <td>
                <xsl:value-of select="./@entrada"/>
            </td>
          </tr>
          </xsl:for-each>
        </table>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>




      