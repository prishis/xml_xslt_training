<!-- workers-filter.xslt -->
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <body>
                <h2>Managers</h2>
                <ul>
                    <xsl:apply-templates select="workers/worker[position='Manager']"/>
                </ul>
            </body>
        </html>
    </xsl:template>
    
    <xsl:template match="worker">
        <li>
            <xsl:value-of select="name"/>
        </li>
    </xsl:template>
</xsl:stylesheet>

