<!-- salary-category.xslt -->
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:param name="lowThreshold" select="40000"/>
    <xsl:param name="highThreshold" select="60000"/>
    
    <xsl:template match="/">
        <html>
            <body>
                <h2>Salary Categories</h2>
                <ul>
                    <xsl:apply-templates select="workers/worker"/>
                </ul>
            </body>
        </html>
    </xsl:template>
    
    <xsl:template match="worker">
        <li>
            <xsl:value-of select="name"/> - <xsl:value-of select="salary"/>
            <xsl:choose>
                <xsl:when test="salary &lt; $lowThreshold"> (Low)</xsl:when>
                <xsl:when test="salary &gt;= $lowThreshold and salary &lt;= $highThreshold"> (Medium)</xsl:when>
                <xsl:otherwise> (High)</xsl:otherwise>
            </xsl:choose>
        </li>
    </xsl:template>
</xsl:stylesheet>

