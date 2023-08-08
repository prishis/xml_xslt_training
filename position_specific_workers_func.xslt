<!-- position-specific-workers.xslt -->
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:param name="targetPosition" select="'Developer'"/>
    
    <xsl:template match="/">
        <html>
            <body>
                <h2>Position-Specific Workers</h2>
                <ul>
                    <xsl:apply-templates select="my:filterByPosition($targetPosition)"/>
                </ul>
            </body>
        </html>
    </xsl:template>
    
    <xsl:function name="my:filterByPosition">
        <xsl:param name="position"/>
        <xsl:for-each select="workers/worker[position = $position]">
            <li><xsl:value-of select="name"/> - <xsl:value-of select="position"/></li>
        </xsl:for-each>
    </xsl:function>
</xsl:stylesheet>

