<!-- worker-details-id.xslt -->
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:param name="targetId" select="4"/>
    
    <xsl:template match="/">
        <html>
            <body>
                <h2>Worker Details by ID: <xsl:value-of select="$targetId"/></h2>
                <xsl:variable name="workerDetails" select="my:getWorkerDetails($targetId)"/>
                <p>Name: <xsl:value-of select="$workerDetails/name"/></p>
                <p>Position: <xsl:value-of select="$workerDetails/position"/></p>
                <p>Salary: <xsl:value-of select="$workerDetails/salary"/></p>
            </body>
        </html>
    </xsl:template>
    
    <xsl:function name="my:getWorkerDetails">
        <xsl:param name="id"/>
        <xsl:copy-of select="workers/worker[id = $id]"/>
    </xsl:function>
</xsl:stylesheet>

