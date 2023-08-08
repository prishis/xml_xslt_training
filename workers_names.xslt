<!-- workers-names.xslt -->
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <body>
                <h2>List of Worker Names</h2>
                <ul>
                    <xsl:apply-templates select="workers/worker/name"/>
                </ul>
            </body>
        </html>
    </xsl:template>
    
    <xsl:template match="name">
        <li>
            <xsl:value-of select="."/>
        </li>
    </xsl:template>
</xsl:stylesheet>

