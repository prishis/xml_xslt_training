<!-- position-specific.xslt -->
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:param name="targetPosition" select="'Manager'"/>
    
    <xsl:template match="/">
        <html>
            <body>
                <h2>Position-Specific Details</h2>
                <ul>
                    <xsl:apply-templates select="workers/worker[position = $targetPosition]"/>
                </ul>
            </body>
        </html>
    </xsl:template>
    
    <xsl:template match="worker">
        <li>
            <xsl:value-of select="name"/> - <xsl:value-of select="position"/>
            <xsl:if test="position = $targetPosition">
                <p>Department: <xsl:value-of select="department"/></p>
            </xsl:if>
        </li>
    </xsl:template>
</xsl:stylesheet>

