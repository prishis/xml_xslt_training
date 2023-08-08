<!-- workers-position-city.xslt -->
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <body>
                <h2>Worker List with Position and City</h2>
                <ul>
                    <xsl:apply-templates select="workers/worker"/>
                </ul>
            </body>
        </html>
    </xsl:template>
    
    <xsl:template match="worker">
        <li><xsl:value-of select="name"/> - <xsl:value-of select="position"/> (City: <xsl:value-of select="city"/>)</li>
    </xsl:template>
</xsl:stylesheet>

