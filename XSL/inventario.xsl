<?xml version="1.0"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:template match="/">
    <html>
 
      <body>
        <ul>
          <xsl:for-each select="inventario/producto">
            <li>Elemento: <xsl:value-of select="./@codigo"/></li>
            <ul>
              <li>Nombre: <xsl:value-of select="nombre"/></li>
              <li>Peso: <xsl:value-of select="peso"/><xsl:value-of select="peso/@unidad"/></li>
            </ul>
          </xsl:for-each>
        </ul>
        <hr/>
        <h2>Inventario</h2>
        <table border="2">
          <xsl:for-each select="Inventario/Producto" >
          <tr bgcolor="red">
            <th colspan="2">Elemento
              <xsl:value-of select="@codigo"/>
            </th>
          </tr>
          <tr>
            <td>Nombre</td>
            <td>
              <xsl:value-of select="nombre"/>
            </td>
          </tr>
          <tr>
          <td>Peso</td>
          <td>
            <xsl:value-of select="peso"/>
            <xsl:value-of select="./peso/@unidad"/>

          </td>
        </tr>
        </xsl:for-each>
        </table>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>