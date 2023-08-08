<!-- specific-department.xslt -->
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:param name="targetDepartment" select="'IT'"/>
    
    <xsl:template match="/">
        <html>
            <body>
                <h2>Workers from Department: <xsl:value-of select="$targetDepartment"/></h2>
                <ul>
                    <xsl:apply-templates select="workers/worker[department = $targetDepartment]"/>
                </ul>
            </body>
        </html>
    </xsl:template>
    
    <xsl:template match="worker">
        <li><xsl:value-of select="name"/> - <xsl:value-of select="position"/></li>
    </xsl:template>
</xsl:stylesheet>

