<!-- highest-salary.xslt -->
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <body>
                <h2>Highest Salary Worker</h2>
                <xsl:variable name="highestSalary" select="max(workers/worker/salary)"/>
                <xsl:variable name="highestSalaryWorker" select="workers/worker[salary = $highestSalary]"/>
                <p>Name: <xsl:value-of select="$highestSalaryWorker/name"/></p>
                <p>Position: <xsl:value-of select="$highestSalaryWorker/position"/></p>
                <p>Salary: <xsl:value-of select="$highestSalaryWorker/salary"/></p>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>

