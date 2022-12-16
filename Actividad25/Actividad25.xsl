<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:output method="text" version="1.0" encoding="UTF-8" indent="yes"/>
    <xsl:template match="/">
factura:
    NumeroFact: <xsl:value-of select="factura/NumFact/>
    DatEmp:
      NomEmp:<xsl:value-of select="/factura/DatEmp/NomEmp"/>
      calle:<xsl:value-of select="/factura/DatEmp/calle"/>
      poblacion: <xsl:value-of select="/factura/empresa/localidad.empresa"/>
      CIF.empresa: <xsl:value-of select="/factura/empresa/CIF.empresa"/>
      telf.empresa: <xsl:value-of select="/factura/empresa/telf.empresa"/>
      fax.empresa: <xsl:value-of select="/factura/empresa/fax.empresa"/>
    fecha.emisión:
      fecha: <xsl:value-of select="/factura/fecha.emisión/fecha"/>
      pedido: <xsl:value-of select="/factura/fecha.emisión/pedido"/>
      forma.pago: <xsl:value-of select="/factura/fecha.emisión/forma.pago"/>
    datos.cliente:
      num.cliente: <xsl:value-of select="/factura/datos.cliente/num.cliente"/>
      nom.cliente: <xsl:value-of select="/factura/datos.cliente/nom.cliente"/>
      calle.envio: <xsl:value-of select="/factura/datos.cliente/calle.envio"/>
      población.cliente: <xsl:value-of select="/factura/datos.cliente/población.cliente"/>
      cod.postal: <xsl:value-of select="/factura/datos.cliente/cod.postal"/>
      provincia: <xsl:value-of select="/factura/datos.cliente/provincia"/>
    datos.facturas:
      dato.facutura:
<xsl:for-each select="factura/datos.facturas/dato.facutura">
        - REF: <xsl:value-of select="REF"/>
          descripción: <xsl:value-of select="descripción"/>
          Cant: <xsl:value-of select="Cant"/>
          precio: <xsl:value-of select="precio"/>
          I.V.A: <xsl:value-of select="I.V.A"/>
          importe: <xsl:value-of select="importe"/>
</xsl:for-each>
      suma:
        base.imponible: <xsl:value-of select="/factura/datos.facturas/suma/base.imponible"/>
        IVA: <xsl:value-of select="/factura/datos.facturas/suma/IVA"/>
        cuotaIVA: <xsl:value-of select="/factura/datos.facturas/suma/cuotaIVA"/>
      total.factura: <xsl:value-of select="/factura/datos.facturas/total.factura"/>

</xsl:template>
</xsl:stylesheet>