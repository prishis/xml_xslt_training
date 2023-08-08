<!-- workers-table.xslt -->
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <body>
                <h2>Worker Details</h2>
                <table border="1">
                    <tr>
                        <th>Name</th>
                        <th>Position</th>
                        <th>Salary</th>
                        <th>City</th>
                        <th>Department</th>
                    </tr>
                    <xsl:apply-templates select="workers/worker"/>
                </table>
            </body>
        </html>
    </xsl:template>
    
    <xsl:template match="worker">
        <tr>
            <td><xsl:value-of select="name"/></td>
            <td><xsl:value-of select="position"/></td>
            <td><xsl:value-of select="salary"/></td>
            <td><xsl:value-of select="city"/></td>
            <td><xsl:value-of select="department"/></td>
        </tr>
    </xsl:template>
</xsl:stylesheet>

