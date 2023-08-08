<!-- experience-position.xslt -->
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:param name="seniorExperience" select="5"/>
    <xsl:param name="midExperience" select="3"/>
    
    <xsl:template match="/">
        <html>
            <body>
                <h2>Experience-Based Positions</h2>
                <ul>
                    <xsl:apply-templates select="workers/worker"/>
                </ul>
            </body>
        </html>
    </xsl:template>
    
    <xsl:template match="worker">
        <li>
            <xsl:value-of select="name"/> - <xsl:value-of select="position"/>
            <xsl:choose>
                <xsl:when test="experience &gt;= $seniorExperience"> (Senior)</xsl:when>
                <xsl:when test="experience &gt;= $midExperience"> (Mid-Level)</xsl:when>
                <xsl:otherwise> (Junior)</xsl:otherwise>
            </xsl:choose>
        </li>
    </xsl:template>
</xsl:stylesheet>

