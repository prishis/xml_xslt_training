<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <!-- Identity transform - copies all nodes and attributes -->
    <xsl:template match="@*|node()">
        <xsl:copy>
            <xsl:apply-templates select="@*|node()"/>
        </xsl:copy>
    </xsl:template>

    <!-- Template to match specific elements (e.g., 'name' and 'salary') -->
    <xsl:template match="name">
        <!-- Add custom processing here for 'name' elements -->
        <xsl:copy>
            <xsl:value-of select="concat('Name: ', .)"/>
        </xsl:copy>
    </xsl:template>

    <xsl:template match="salary">
        <!-- Add custom processing here for 'salary' elements -->
        <xsl:copy>
            <xsl:value-of select="concat('Salary: $', .)"/>
        </xsl:copy>
    </xsl:template>

    <!-- 
    The identity transform template (<xsl:template match="@*|node()">) copies all nodes and attributes as-is.

    Two specific templates are added to match the 'name' and 'salary' elements. Inside these templates, you can perform custom processing. In this example, I've just added a prefix to the content of these elements.

    You can add additional template matches for other elements as needed, similar to the 'name' and 'salary' templates.

    You can adjust the custom processing inside these templates based on your specific requirements for each element.Add additional template matches as needed -->
</xsl:stylesheet>