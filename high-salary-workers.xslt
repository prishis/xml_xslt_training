<!-- high-salary-workers.xslt -->
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:param name="minSalary" select="55000"/>
    
    <xsl:template match="/">
        <html>
            <body>
                <h2>High Salary Workers (Salary above $<xsl:value-of select="$minSalary"/>)</h2>
                <ul>
                    <xsl:apply-templates select="workers/worker[salary &gt; $minSalary]"/>
                </ul>
            </body>
        </html>
    </xsl:template>
    
    <xsl:template match="worker">
        <li><xsl:value-of select="name"/> - <xsl:value-of select="salary"/></li>
    </xsl:template>
</xsl:stylesheet>

