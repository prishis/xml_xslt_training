<!-- workers-salary.xslt -->
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:param name="minSalary" select="50000"/>
    <xsl:param name="maxSalary" select="60000"/>
    
    <xsl:template match="/">
        <html>
            <body>
                <h2>Workers with Salary Range: $<xsl:value-of select="$minSalary"/> - $<xsl:value-of select="$maxSalary"/></h2>
                <ul>
                    <xsl:apply-templates select="workers/worker[salary &gt;= $minSalary and salary &lt;= $maxSalary]"/>
                </ul>
            </body>
        </html>
    </xsl:template>
    
    <xsl:template match="worker">
        <li><xsl:value-of select="name"/> - <xsl:value-of select="salary"/></li>
    </xsl:template>
</xsl:stylesheet>

