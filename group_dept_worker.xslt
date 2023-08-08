<!-- workers-department.xslt -->
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    
    <xsl:key name="department-key" match="worker" use="department"/>
    
    <xsl:template match="/">
        <html>
            <body>
                <h2>Workers Grouped by Department</h2>
                <xsl:for-each select="workers/worker[count(. | key('department-key', department)[1]) = 1]">
                    <h3><xsl:value-of select="department"/></h3>
                    <ul>
                        <xsl:apply-templates select="key('department-key', department)"/>
                    </ul>
                </xsl:for-each>
            </body>
        </html>
    </xsl:template>
    
    <xsl:template match="worker">
        <li><xsl:value-of select="name"/> - <xsl:value-of select="position"/></li>
    </xsl:template>
</xsl:stylesheet>

