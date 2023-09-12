<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <xsl:output method="text"/>

  <!-- Template to process items with price > 50 -->
  <xsl:template match="item[price > 50]">
    <xsl:text>High-Priced: </xsl:text>
    <xsl:value-of select="name"/>
    <xsl:text> ($</xsl:text>
    <xsl:value-of select="price"/>
    <xsl:text>)&#10;</xsl:text>
  </xsl:template>

  <!-- Template to process items with price <= 50 -->
  <xsl:template match="item[price &lt;= 50]">
    <xsl:text>Low-Priced: </xsl:text>
    <xsl:value-of select="name"/>
    <xsl:text> ($</xsl:text>
    <xsl:value-of select="price"/>
    <xsl:text>)&#10;</xsl:text>
  </xsl:template>

  <xsl:template match="items">
    <xsl:apply-templates select="item[price > 50]" />
    <xsl:apply-templates select="item[price &lt;= 50]" />
  </xsl:template>

</xsl:stylesheet>