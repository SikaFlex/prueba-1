<?xml version="1.0" encoding="UTF-8"?>

<xsl:transform version="1.0" xmlns:xsl=" http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <body>
                <table border="1px">
                    <tr>
                        <th colspan="3" rowspan="2">Descripcion de cada echo</th>
                        <th colspan="3">fecha</th>
                    </tr>
                    <tr>
                        <th>Dia</th>
                        <th>Mes</th>
                        <th>Año</th>
                    </tr>

                    <xsl:for-each select="locs/loc">
                        <tr>
                            <th>
                                <xsl:value-of select="@nombre" />
                            </th>

                            <xsl:for-each select="fecha">

                                <td>
                                    <xsl:value-of select="dia"></xsl:value-of>
                                </td>
                                <td>
                                    <xsl:value-of select="mes"></xsl:value-of>
                                </td>
                                <td>

                                    <xsl:value-of select="año"></xsl:value-of>
                                </td>
                            </xsl:for-each>

                        </tr>
                    </xsl:for-each>

                </table>


            </body>
        </html>
    </xsl:template>
</xsl:transform>