<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <body>
                <h1>Discos</h1>
                <table border="1 px">
                    <tr>
                        <th colspan="6">Oferta en CDs</th>
                    </tr>
                    <tr>
                        <th>Titulo</th>
                        <th>Artista</th>
                        <th>Pais</th>
                        <th>Disco</th>
                        <th>Precio</th>
                        <th>Año</th>
                    </tr>

                    <xsl:for-each select="cancion">
                        <tr>
                            <td>
                                <xsl:value-of select="titulo" />
                            </td>
                            <td>
                                <xsl:value-of select="artista" />
                            </td>
                            <td>
                                <xsl:value-of select="pais" />
                            </td>
                            <td>
                                <xsl:value-of select="disc" />
                            </td>
                            <td>
                                <xsl:value-of select="precio" />
                            </td>
                            <td>
                                <xsl:value-of select="año" />
                            </td>
                        </tr>
                    </xsl:for-each>


                </table>
            </body>
        </html>
    </xsl:template>


</xsl:stylesheet>