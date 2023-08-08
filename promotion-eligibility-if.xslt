<!-- promotion-eligible.xslt -->
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:param name="minSalaryForPromotion" select="55000"/>
    <xsl:param name="eligiblePositions" select="'Manager Developer'"/>
    
    <xsl:template match="/">
        <html>
            <body>
                <h2>Promotion Eligibility</h2>
                <ul>
                    <xsl:apply-templates select="workers/worker"/>
                </ul>
            </body>
        </html>
    </xsl:template>
    
    <xsl:template match="worker">
        <li>
            <xsl:value-of select="name"/> - <xsl:value-of select="position"/>
            <xsl:if test="contains($eligiblePositions, position) and salary &gt;= $minSalaryForPromotion">
                <p>Eligible for Promotion</p>
            </xsl:if>
        </li>
    </xsl:template>
</xsl:stylesheet>

