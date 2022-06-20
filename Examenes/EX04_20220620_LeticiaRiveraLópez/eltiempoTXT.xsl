<?xml version="1.0" encoding="UTF-8"?>

<!--
    Document   : eltiempo.json.xsl
    Created on : 20 de junio de 2022, 8:46
    Author     : daw1
    Description:
        Purpose of transformation follows.
-->

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="text"/>
    <xsl:template match="/data">
       {
        "data": {
            "localidad": "<xsl:value-of select="locality/name"/>",
        "day": [
            <xsl:for-each select="day">
            {
            "temperatura_max":"<xsl:value-of select="temperature_max"/>",
            "temperatura_min":"<xsl:value-of select="temperature_min"/>"
            }<xsl:if test="position()!=last()">,</xsl:if>
           </xsl:for-each>
          ]} 
          }
    </xsl:template>
</xsl:stylesheet>
