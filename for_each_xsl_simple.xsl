<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <xsl:output method="text"/>

  <!-- Start processing when 'workers' element is encountered -->
  <xsl:template match="workers">
    <xsl:text>List of Workers' Names:&#10;</xsl:text>
    
    <!-- Use 'xsl:for-each' to iterate through 'worker' elements -->
    <xsl:for-each select="worker">
      <!-- Output the name of each worker -->
      <xsl:value-of select="name"/>
      <xsl:text>&#10;</xsl:text> <!-- Add a newline after each name -->
    </xsl:for-each>
  </xsl:template>

</xsl:stylesheet>

<xsl:template match="items">
    <output>
        <xsl:apply-templates select="item"/>
    </output>
</xsl:template>

<xsl:template match="item">
    <item>
        <xsl:value-of select="."/>
    </item>
</xsl:template>


<xsl:template match="items">
    <output>
        <xsl:for-each select="item">
            <item>
                <xsl:value-of select="."/>
            </item>
        </xsl:for-each>
    </output>
</xsl:template>

<!-- Xml data -->
<items>
    <item>Item 1</item>
    <item>Item 2</item>
    <item>Item 3</item>
</items>