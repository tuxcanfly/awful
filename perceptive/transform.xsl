<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="text"/>
    <xsl:template match="/xml_api_reply/weather/current_conditions">
        Now: <xsl:value-of select="condition/@data"/>, <xsl:value-of select="temp_c/@data"/>°C.
        <xsl:apply-templates />
    </xsl:template>
    <xsl:template match="/xml_api_reply/weather/forecast_conditions">
        <xsl:value-of select="day_of_week/@data"/>: <xsl:value-of select="condition/@data"/>, <xsl:value-of select="low/@data"/>—<xsl:value-of select="high/@data"/>°C.
    </xsl:template>
</xsl:stylesheet>
