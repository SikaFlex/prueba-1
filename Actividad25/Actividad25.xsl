<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="text" indent="yes"/>
<xsl:template match="/">
factura:
<xsl:for-each select="factura">
    NumFact: <xsl:value-of select="NumFact"></xsl:value-of>
    DatEmp: <xsl:for-each select="DatEmp">
        NomEmp: <xsl:value-of select="NomEmp"></xsl:value-of>
        calle: <xsl:value-of select="calle"></xsl:value-of>
        poblacion: <xsl:value-of select="poblacion"></xsl:value-of>
        cif: <xsl:value-of select="cif"></xsl:value-of>
        tel: <xsl:value-of select="tel"></xsl:value-of>
        fax: <xsl:value-of select="fax"></xsl:value-of>

        DatAlbaran: <xsl:for-each select="DatEmp/DatAlbaran">
        fecha: <xsl:value-of select="fecha"></xsl:value-of>
        pedido: <xsl:value-of select="pedido"></xsl:value-of>
        FormPago: <xsl:value-of select="FormPago"></xsl:value-of>
    </xsl:for-each>
    </xsl:for-each>

    DatClient: <xsl:for-each select="DatClient">
      NumClient: <xsl:value-of select="NumClient"></xsl:value-of>
      NomClient: <xsl:value-of select="NomClient"></xsl:value-of>
      DireccionEnv: <xsl:value-of select="DireccionEnv"></xsl:value-of>
      poblacion: <xsl:value-of select="poblacion"></xsl:value-of>
      CP: <xsl:value-of select="CP"></xsl:value-of>
      provincia: <xsl:value-of select="provincia"></xsl:value-of>
</xsl:for-each>

DatFactura: <xsl:for-each select="DatFactura">
    -dat:<xsl:for-each select="dat">
       ref:<xsl:value-of select="ref"></xsl:value-of>
       desc:<xsl:value-of select="desc"></xsl:value-of>
       cant:<xsl:value-of select="cant"></xsl:value-of>
       prec:<xsl:value-of select="prec"></xsl:value-of>
       iva:<xsl:value-of select="iva"></xsl:value-of>
       imp:<xsl:value-of select="imp"></xsl:value-of>
        </xsl:for-each>

    total: <xsl:for-each select="total">
       base: <xsl:value-of select="base"></xsl:value-of>
       iva: <xsl:value-of select="iva"></xsl:value-of>
       C_iva: <xsl:value-of select="C_iva"></xsl:value-of>
       Total: <xsl:value-of select="Total"></xsl:value-of>
</xsl:for-each>
</xsl:for-each>
</xsl:for-each>
</xsl:template>
</xsl:stylesheet>