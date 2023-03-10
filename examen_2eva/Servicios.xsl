<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:template match="/">
        <html>
            <head>
                <meta charset="utf-8" />
                <meta name="viewport" content="width=device-width, initial-scale=1" />
                <link rel="stylesheet" href="Style.css" />

            </head>
            <body>
                <div>
                    <table>
                        <legend>SERVICIOS CLINICA</legend>

                        <tr>
                            <th>Servicio</th>
                            <th >Precio</th>
                            <th>Tipo de reserva</th>
                            <th >Horario </th>
                            <th >Profes@r</th>
                        </tr>
                        <xsl:for-each select="clinica/servicios">
                            <tr>
                                <td>
                                    <p>
                                        <xsl:value-of select="servicio"></xsl:value-of>
                                    </p>

                                </td>
                                <xsl:for-each select="precio">
                                    <td>
                                       
                                            <p>
                                                <xsl:value-of select="hora"></xsl:value-of>
                                            </p>
                                            <p><xsl:value-of select="precio1"></xsl:value-of>
                                            </p>
                                            <p><xsl:value-of select="precio2"></xsl:value-of>
                                            </p>
                                            <p><xsl:value-of select="mes"></xsl:value-of></p>
                                       
                                    </td>

                                </xsl:for-each>
                                <td>
                                    <p>
                                        <xsl:value-of select="reservas"></xsl:value-of>
                                    </p>
                                </td>
                                    <td>
                                    <xsl:for-each select="horario">
                                     <p>
                                        
                                            <xsl:value-of select="."></xsl:value-of>
                                        
                                        </p>
                    
                                         
                                    </xsl:for-each>
                                </td>
                                <td>
                                <xsl:for-each select="empleados">
                                    
                                    <p>
                                        <xsl:value-of select="."></xsl:value-of>
                                    </p>
                                   
                                    </xsl:for-each>
                                </td>

                            </tr>
                        </xsl:for-each>
                    </table>
                </div>
            </body>
        </html>
        |</xsl:template>
</xsl:stylesheet>