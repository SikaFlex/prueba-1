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
                        <th>titulo</th>
                        <th>artista</th>
                        <th>pais</th>
                        <th>disc</th>
                        <th>precio</th>
                        <th>año</th>
                    </tr>

                    <xsl:foreach select="cancion"></xsl:foreach>
                    <tr>
                        <xsl:value-of select="titulo"></xsl:value-of>
                        <xsl:value-of select="artista"></xsl:value-of>
                        <xsl:value-of select="pais"></xsl:value-of>
                        <xsl:value-of select="disc"></xsl:value-of>
                        <xsl:value-of select="precio"></xsl:value-of>
                        <xsl:value-of select="año"></xsl:value-of>
                    </tr>

                </table>
            </body>
        </html>
    </xsl:template>


</xsl:stylesheet>