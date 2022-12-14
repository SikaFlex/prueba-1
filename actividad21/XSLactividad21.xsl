<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="locs/loc">
    <html>
        <body>
            <table border="1">
                <tr>
                    <th rowspan="2"><i>Descripcion de cada hecho</i></th>
                    <th colspan="3"><i>Fecha</i></th>
                </tr>
                <tr>
                    <th><i>Día</i></th>
                    <th><i>Mes</i></th>
                    <th><i>Año</i></th>
                </tr>
            <xsl:for-each select="descripcion">
                <tr>
                    <td><xsl:value-of select="@nombre"/></td>
                    <xsl:for-each select="fecha">
                        <td><xsl:value-of select="fecha/dia"/></td>
                        <td><xsl:value-of select="fecha/mes"/></td>
                        <td><xsl:value-of select="fecha/año"/></td>
                    </xsl:for-each>
                </tr>
            </xsl:for-each>
            </table>
        </body>
    </html>
</xsl:template>
</xsl:stylesheet>