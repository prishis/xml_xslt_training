<!-- workers.xslt -->
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <body>
                <h2>Employee List</h2>
                <ul>
                    <xsl:apply-templates select="workers/worker"/>
                </ul>
            </body>
        </html>
    </xsl:template>
    
    <xsl:template match="worker">
        <li>
            <xsl:value-of select="name"/> - <xsl:value-of select="position"/>
        </li>
    </xsl:template>
</xsl:stylesheet>
