<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
    <table border="2 px">
        <tr>
            <th>NumFact</th>
        </tr>
        <tr>
            <th>Datos Empresa</th>
            <xsl:value-of select="NomEmp"></xsl:value-of>
            <xsl:value-of select="calle"></xsl:value-of>
            <xsl:value-of select="poblacion"></xsl:value-of>
            <xsl:value-of select="cif"></xsl:value-of>
            <xsl:value-of select="tel"></xsl:value-of>
            <xsl:value-of select="fax"></xsl:value-of>
            <tr>
                <th>Datos Albaran</th>
                <xsl:value-of select="fecha"></xsl:value-of>
                <xsl:value-of select="pedido"></xsl:value-of>
                <xsl:value-of select="FormPago"></xsl:value-of>
            </tr>
        </tr>
        <tr>
            <th>Datos Cliente</th>
            <xsl:value-of select="NumClient"></xsl:value-of>
            <xsl:value-of select="NomClient"></xsl:value-of>
            <xsl:value-of select="DireccionEnv"></xsl:value-of>
            <xsl:value-of select="poblacion"></xsl:value-of>
            <xsl:value-of select="CP"></xsl:value-of>
            <xsl:value-of select="provincia"></xsl:value-of>
        </tr>
<xsl:for-each select="dat"></xsl:for-each>
        <tr>
            <Th>Datos Factura</Th>
            <xsl:value-of select="ref"></xsl:value-of>
            <xsl:value-of select="desc"></xsl:value-of>
            <xsl:value-of select="cant"></xsl:value-of>
            <xsl:value-of select="prec"></xsl:value-of>
            <xsl:value-of select="iva"></xsl:value-of>
            <xsl:value-of select="imp"></xsl:value-of>
        </tr>
        <tr>
            <th>Total:</th>
            <xsl:value-of select="base"></xsl:value-of>
            <xsl:value-of select="iva"></xsl:value-of>
            <xsl:value-of select="C_iva"></xsl:value-of>
            <xsl:value-of select="Total"></xsl:value-of>
        </tr>
        
    

    </table>


</xsl:template>
</xsl:stylesheet>