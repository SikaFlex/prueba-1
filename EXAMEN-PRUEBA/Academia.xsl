<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <xsl:template match="/">
    <html>
      <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1" />
        <link rel="stylesheet" href="Style.css"/>
      </head>
      <body>
<div>        
<table>
  <legend>CALENDARIO ACADEMIA</legend>
 
<tr>
  <th>Baile</th>
  <th colspan="2">Precio</th>
<th>Plazas</th>
<th>Incio</th>
<th>Fin</th>
<th>Dias</th>
<th>Profes@r</th>
<th>Sala</th>
</tr>
<xsl:for-each select="academia/clases">
<tr>
  <td>
    <p>
      <xsl:value-of select="baile"></xsl:value-of>
    </p>

  </td>
  <xsl:for-each select="precio">
  <td>
    
      <p>
        <xsl:value-of select="cuota"></xsl:value-of>
      </p>
    </td>
    <td>
      <p>
        <xsl:value-of select="moneda"></xsl:value-of>
      </p>
   
  </td>
</xsl:for-each>
  <td>
    <p>
      <xsl:value-of select="plazas"></xsl:value-of>
    </p>
  </td>
  <td>
    <p>
      <xsl:value-of select="fecha-in"></xsl:value-of>
    </p>
  </td>
  <td>
    <p>
      <xsl:value-of select="fecha-fin"></xsl:value-of>
    </p>
  </td>
  <td>
    <p>
      <xsl:value-of select="dia"></xsl:value-of>
    </p>
  </td>
  <td>
    <p>
      <xsl:value-of select="nombre-profesor"></xsl:value-of>
    </p>
  </td>
  <td><p>
    <xsl:value-of select="sala"></xsl:value-of>
  </p></td>
</tr>
</xsl:for-each>
</table>
</div>

        
          
          
            
           
         
         
          
         
          
          
          



      </body>


    </html>
    |</xsl:template>
</xsl:stylesheet>