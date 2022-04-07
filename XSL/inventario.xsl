<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <head>
                <title>Inventario</title>
            </head>
            <body>
                <ul>
                    <xsl:for-each select="Inventario/Producto">

                        <li>
                            Elemento:<xsl:value-of select="./@codigo"/>


                        <ul>
                            <li>Nombre:<xsl:value-of select="Nombre"/>
                            </li>

                            <li>    Peso:    <xsl:value-of select="Peso"/>
                            <xsl:value-of select="Peso/@unidad"/>
                        </li>
                    </ul>
                </li>
            </xsl:for-each>
        </ul>
    </body>
</html>
</xsl:template>
</xsl:stylesheet>