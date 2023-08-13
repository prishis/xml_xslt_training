<!-- transformation.xslt -->
<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:xs="http://www.w3.org/2001/XMLSchema"
	exclude-result-prefixes="#all"
	version="2.0">
    
    <!-- Identity template: copy all elements and attributes as-is -->
    <xsl:template match="@* | node()">
        <xsl:copy>
            <xsl:apply-templates select="@* | node()"/>
        </xsl:copy>
    </xsl:template>

    <!-- Match the 'id' elements to transform them -->
    <xsl:template match="id">
        <xsl:variable name="cityName" select="../city"/>
        <id><xsl:value-of select="concat($cityName, '-', .)"/></id>
    </xsl:template>

    <xsl:template match="worker">
        <xsl:copy>
            <xsl:apply-templates select="@* | node()"/>
            <date>2023-08-08</date>
        </xsl:copy>
    </xsl:template>

    <!-- Replace spaces in city names with '_' -->
    <xsl:template match="city">
        <city><xsl:value-of select="translate(., ' ', '_')"/></city>
    </xsl:template>

</xsl:stylesheet>

