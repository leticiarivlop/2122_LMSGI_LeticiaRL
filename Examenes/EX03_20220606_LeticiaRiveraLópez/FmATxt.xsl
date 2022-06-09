<?xml version="1.0" encoding="UTF-8"?>

<!--
    Document   : FmATxt.xsl
    Created on : 6 de junio de 2022, 9:56
    Author     : daw1
    Description:
        Purpose of transformation follows.
-->

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="text"/>

    <!-- TODO customize transformation rules 
         syntax recommendation http://www.w3.org/TR/xslt 
    -->
    <xsl:template match="/lfm">
        "Artista": "<xsl:value-of select="topalbums/@artist"/>",
        "Albunes": [<xsl:for-each select="topalbums/album">
            {
            "Nombre":"<xsl:value-of select="name"/>",<text></text>
            "Url":"<xsl:value-of select="url"/>"
            }<xsl:apply-templates select="topalbums/album"/>
        </xsl:for-each>
        }]
    </xsl:template>
    <xsl:template match="topalbums/album">
      {​​​​​​​
          <xsl:apply-templates select="*"/>
      }​
    </xsl:template>
    <xsl:template match="*">
        "<xsl:value-of select="url"/>":"<xsl:value-of select="current()"/>"<xsl:if test="position()!=last()">,</xsl:if>
    </xsl:template>
</xsl:stylesheet>
