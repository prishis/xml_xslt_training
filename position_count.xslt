<!-- position-count.xslt -->
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <body>
                <h2>Position Count</h2>
                <ul>
                    <xsl:for-each select="workers/worker/position[not(. = preceding-sibling::position)]">
                        <xsl:variable name="position" select="."/>
                        <li><xsl:value-of select="$position"/>: <xsl:value-of select="count(../../worker[position = $position])"/></li>
                    </xsl:for-each>
                </ul>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>

