<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <body>


                <table border="2 px">
                    <xsl:for-each select="factura">

                        <tr>
                            <th colspan="6">NumFact</th>
                        </tr>
                        <tr>
                            <xsl:for-each select="DatEmp">
                                <tr>
                                    <td>
                                        <xsl:value-of select="NomEmp"></xsl:value-of>
                                    </td>
                                    <td>
                                        <xsl:value-of select="calle"></xsl:value-of>
                                    </td>
                                    <td>
                                        <xsl:value-of select="poblacion"></xsl:value-of>
                                    </td>
                                    <td>
                                        <xsl:value-of select="cif"></xsl:value-of>
                                    </td>
                                    <td>
                                        <xsl:value-of select="tel"></xsl:value-of>
                                    </td>
                                    <td>
                                        <xsl:value-of select="fax"></xsl:value-of>
                                    </td>
                                </tr>
                            </xsl:for-each>
                            <xsl:for-each select="DatAlbaran">
                                <tr>


                                    <td>
                                        <xsl:value-of select="fecha"></xsl:value-of>
                                    </td>
                                    <td>
                                        <xsl:value-of select="pedido"></xsl:value-of>
                                    </td>
                                    <td>
                                        <xsl:value-of select="FormPago"></xsl:value-of>
                                    </td>

                                </tr>
                            </xsl:for-each>

                        </tr>
                        <tr>
                            <th colspan="6">Datos Cliente</th>
                        </tr>
                        <xsl:for-each select="DatClient">
                            <tr>

                                <td>
                                    <xsl:value-of select="NumClient"></xsl:value-of>
                                </td>
                                <td>
                                    <xsl:value-of select="NomClient"></xsl:value-of>
                                </td>
                                <td>
                                    <xsl:value-of select="DireccionEnv"></xsl:value-of>
                                </td>
                                <td>
                                    <xsl:value-of select="poblacion"></xsl:value-of>
                                </td>
                                <td>
                                    <xsl:value-of select="CP"></xsl:value-of>
                                </td>
                                <td>
                                    <xsl:value-of select="provincia"></xsl:value-of>
                                </td>

                            </tr>
                        </xsl:for-each>
                        <xsl:for-each select="DatFactura">
                            <tr>
                                <Th colspan="6">Datos Factura</Th>
                            </tr>
                            <xsl:for-each select="dat">
                                <tr>
                                    <xsl:value-of select="ref"></xsl:value-of>
                                    <xsl:value-of select="desc"></xsl:value-of>
                                    <xsl:value-of select="cant"></xsl:value-of>
                                    <xsl:value-of select="prec"></xsl:value-of>
                                    <xsl:value-of select="iva"></xsl:value-of>
                                    <xsl:value-of select="imp"></xsl:value-of>

                                </tr>
                            </xsl:for-each>
                            <tr>
                                <th>Total:</th>
                                <xsl:value-of select="base"></xsl:value-of>
                                <xsl:value-of select="iva"></xsl:value-of>
                                <xsl:value-of select="C_iva"></xsl:value-of>
                                <xsl:value-of select="Total"></xsl:value-of>
                            </tr>
                        </xsl:for-each>
                    </xsl:for-each>


                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>