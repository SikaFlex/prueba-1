<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <body>


                <table border="2px">
                    <xsl:for-each select="factura">

                        <tr >
                            <th colspan="6"><xsl:value-of select="NumFact"/></th>
                        </tr>

                        <xsl:for-each select="DatEmp">
                            <tr>
                                <td colspan="3" style="border: 1px solid black">
                                    <xsl:value-of select="NomEmp"></xsl:value-of>
                                    <br />
                                    <xsl:value-of select="calle"></xsl:value-of>
                                    <br />
                                    <xsl:value-of select="poblacion"></xsl:value-of>
                                    <br />
                                    C.I.F:
                                    <xsl:value-of select="cif"></xsl:value-of>
                                    <br />
                                    Telefono:
                                    <xsl:value-of select="tel"></xsl:value-of>
                                    <br />
                                    Fax:
                                    <xsl:value-of select="fax"></xsl:value-of>
                                </td>
                                <xsl:for-each select="DatAlbaran">

                                    <td colspan="3">
                                        Fecha:
                                        <xsl:value-of select="fecha" />
                                        <br />
                                        Pedido:
                                        <xsl:value-of select="pedido" />
                                        <br />
                                        Forma de pago:
                                        <xsl:value-of select="FormPago" />
                                    </td>


                                </xsl:for-each>
                            </tr>
                        </xsl:for-each>


                        <tr>
                            <th colspan="6">Datos Cliente</th>
                        </tr>
                        <xsl:for-each select="DatClient">
                            <tr>
                                <td colspan="6">
                                Nº Cliente: <xsl:value-of select="NumClient"/> <br/>
                                Nombre: <xsl:value-of select="NomClient"/> <br/>
                                Direccion de envio: <xsl:value-of select="DireccionEnv"/> <br/>
                                Poblacion: <xsl:value-of select="poblacion"/> <br/>
                                Cod.postal: <xsl:value-of select="CP"/> <br/>
                                Provincia: <xsl:value-of select="provincia"/> <br/>
                            </td>
                            </tr>
                        </xsl:for-each>
                        <xsl:for-each select="DatFactura">
                            <tr>
                                <Th colspan="6">Datos Factura</Th>
                            </tr>
                            <tr>
                                <th>REF.</th>
                                <th>DESCRIPCION</th>
                                <th>CANT</th>
                                <th>PRECIO</th>
                                <th>I.V.A</th>
                                <th>IMPORTE</th>
                            </tr>
                            <xsl:for-each select="dat">
                                <tr>
                                    <td><xsl:value-of select="ref"/></td>
                                    <td><xsl:value-of select="desc"/></td>
                                    <td><xsl:value-of select="cant"/></td>
                                    <td><xsl:value-of select="prec"/></td>
                                    <td><xsl:value-of select="iva"/></td>
                                    <td><xsl:value-of select="imp"/></td>
                                </tr>
                            </xsl:for-each>
                            <tr>
                                <th colspan="2">Base imponible</th>
                                <th colspan="2">% I.V.A</th>
                                <th colspan="2">Couta I.V.A</th>
                            </tr>
                            <tr style="border:1px solid white">
                                <td colspan="6"><br/></td>
                            </tr>
                            <xsl:for-each select="total">
                            <tr>
                                <td colspan="2"><xsl:value-of select="base"/></td>
                                <td colspan="2"><xsl:value-of select="iva"/></td>
                                <td colspan="2"><xsl:value-of select="C_iva"/></td>
                            </tr>                        
                            <tr>
                                <th colspan="6">TOTAL FACTURA:<xsl:value-of select="Total"/></th>
                            </tr>
                        </xsl:for-each>
                        </xsl:for-each>
                    </xsl:for-each>


                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>