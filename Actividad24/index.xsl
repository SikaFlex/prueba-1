<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="text" indent="yes" />
    <xsl:template match="/">
        { "Oferta": { "cancion": [
        <xsl:for-each select="Oferta/cancion">
            {
            Titulo:
            "<xsl:value-of select="titulo" />"
            Artista:
            "<xsl:value-of select="artista" />"
            Pais:
            "<xsl:value-of select="pais" />"
            Disco":
            "<xsl:value-of select="disc" />"
            "Precio":
            "<xsl:value-of select="precio" />"
            "Año":
            "<xsl:value-of select="año" />"
            " }
            <xsl:if test="position() &lt; last()">,</xsl:if>
        </xsl:for-each>
        ] } }
    </xsl:template>
</xsl:stylesheet>