<!-- experienced-workers.xslt -->
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:param name="minExperience" select="3"/>
    
    <xsl:template match="/">
        <html>
            <body>
                <h2>Experienced Workers ({$minExperience}+ Years)</h2>
                <ul>
                    <xsl:apply-templates select="my:filterByExperience($minExperience)"/>
                </ul>
            </body>
        </html>
    </xsl:template>
    
    <xsl:function name="my:filterByExperience">
        <xsl:param name="experience"/>
        <xsl:for-each select="workers/worker[experience &gt;= $experience]">
            <li><xsl:value-of select="name"/> - <xsl:value-of select="experience"/> years</li>
        </xsl:for-each>
    </xsl:function>
</xsl:stylesheet>

