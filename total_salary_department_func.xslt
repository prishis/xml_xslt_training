<!-- total-salary-department.xslt -->
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:key name="department-key" match="worker" use="department"/>
    
    <xsl:template match="/">
        <html>
            <body>
                <h2>Total Salary by Department</h2>
                <ul>
                    <xsl:for-each select="workers/worker[count(. | key('department-key', department)[1]) = 1]">
                        <xsl:variable name="currentDepartment" select="department"/>
                        <li>
                            <xsl:value-of select="$currentDepartment"/> - Total Salary: 
                            <xsl:value-of select="my:calculateTotalSalary($currentDepartment)"/>
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

