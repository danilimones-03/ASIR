<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <head>
                <h2>Almacen</h2>
            </head>
            <body>
                <ul>
                    <xsl:for-each select="Inventario/Producto">
                        <li>
                            Elemento: <xsl:value-of select="/@codigo" />
                </ul>
                <ul>
                    </li>
                    Nombre:<xsl:value-of select="Nombre:" />
                    </li>
                    <li>
                        Peso:
                        <xsl:value-of select="Peso:" />
                </ul>


                </xsl:for-each>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>