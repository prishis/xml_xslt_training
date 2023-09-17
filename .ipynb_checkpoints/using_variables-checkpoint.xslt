<!-- workers-salary.xslt -->
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <body>
                <h2>Workers with High Salary</h2>
                <ul>
                    <xsl:variable name="highSalary" select="55000"/>
                    <xsl:apply-templates select="workers/worker[salary &gt;= $highSalary]"/>
                </ul>
            </body>
        </html>
    </xsl:template>
    
    <xsl:template match="worker">
        <li>
            <xsl:value-of select="name"/> - <xsl:value-of select="salary"/>
        </li>
    </xsl:template>
</xsl:stylesheet>
