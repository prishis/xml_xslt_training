<!-- transformation.xslt -->
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <!-- Identity template: copy all elements and attributes as-is -->
    <xsl:template match="@* | node()">
        <xsl:copy>
            <xsl:apply-templates select="@* | node()"/>
        </xsl:copy>
    </xsl:template>

    <!-- Match the 'id' elements to transform them -->
    <xsl:template match="id">
        <xsl:variable name="cityName" select="../city"/>
        <xsl:value-of select="concat($cityName, '-', .)"/>
    </xsl:template>

    <!-- Add the 'date' element with a random date to each 'worker' element -->
    <xsl:template match="worker">
        <xsl:copy>
            <xsl:apply-templates select="@* | node()"/>
            <date><xsl:value-of select="generate-random-date()"/></date>
        </xsl:copy>
    </xsl:template>

    <!-- Replace spaces in city names with '_' -->
    <xsl:template match="city">
        <xsl:value-of select="translate(., ' ', '_')"/>
    </xsl:template>

    <!-- Function to generate a random date -->
    <xsl:function name="generate-random-date">
        <xsl:variable name="year" select="floor(2000 + (2000 * rand:random()))"/>
        <xsl:variable name="month" select="format-number(floor(1 + (12 * rand:random())), '00')"/>
        <xsl:variable name="day" select="format-number(floor(1 + (30 * rand:random())), '00')"/>
        <xsl:value-of select="concat($year, '-', $month, '-', $day)"/>
    </xsl:function>
</xsl:stylesheet>

