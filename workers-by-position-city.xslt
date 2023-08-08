<!-- workers-by-position-city.xslt -->
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:key name="position-city-key" match="worker" use="concat(position, '|', city)"/>
    
    <xsl:template match="/">
        <html>
            <body>
                <h2>Workers Grouped by Position and City</h2>
                <xsl:for-each select="workers/worker[count(. | key('position-city-key', concat(position, '|', city))[1]) = 1]">
                    <h3><xsl:value-of select="position"/> - <xsl:value-of select="city"/></h3>
                    <ul>
                        <xsl:variable name="currentPosition" select="position"/>
                        <xsl:variable name="currentCity" select="city"/>
                        <xsl:for-each select="key('position-city-key', concat($currentPosition, '|', $currentCity))">
                            <li><xsl:value-of select="name"/></li>
                        </xsl:for-each>
                    </ul>
                </xsl:for-each>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>

