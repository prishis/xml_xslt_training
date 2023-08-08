<!-- department-overview-func.xslt -->
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:key name="department-key" match="worker" use="department"/>
    
    <xsl:template match="/">
        <html>
            <body>
                <h2>Department Overview (Function)</h2>
                <ul>
                    <xsl:for-each select="workers/worker[count(. | key('department-key', department)[1]) = 1]">
                        <li>
                            <xsl:value-of select="department"/> - Total Salary: 
                            <xsl:value-of select="my:calculateTotalSalary($department)"/>
                        </li>
                    </xsl:for-each>
                </ul>
            </body>
        </html>
    </xsl:template>
    
    <xsl:function name="my:calculateTotalSalary">
        <xsl:param name="dept"/>
        <xsl:value-of select="sum(key('department-key', $dept)/salary)"/>
    </xsl:function>
</xsl:stylesheet>

