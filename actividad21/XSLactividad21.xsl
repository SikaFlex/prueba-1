<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:template match="/">


        <html>
            <body>
                <table border="1">
                    <tr>
                        <th rowspan="2">
                            Descripcion de cada hecho
                        </th>
                        <th colspan="3">
                            Fecha
                        </th>
                    </tr>
                    <tr>
                        <th>
                            Dia
                        </th>
                        <th>
                            Mes
                        </th>
                        <th>
                            Año
                        </th>
                    </tr>


                    <xsl:for-each select="locs/loc">
                    <xsl:for-each select="descripcion">

                        <tr>
                            <td>
                                <xsl:value-of select="@nombre" />
                            </td>
                            <xsl:for-each select="fecha">
                                <td>
                                    <xsl:value-of select="dia" />
                                </td>
                                <td>
                                    <xsl:value-of select="mes" />
                                </td>
                                <td>
                                    <xsl:value-of select="año" />
                                </td>
                            </xsl:for-each>
                        </tr>
                    </xsl:for-each>
                    </xsl:for-each>


                </table>
            </body>
        </html>


    </xsl:template>
</xsl:stylesheet>