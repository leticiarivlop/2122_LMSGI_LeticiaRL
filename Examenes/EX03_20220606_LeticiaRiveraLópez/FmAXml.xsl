<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="xml" indent="yes"/>
    <xsl:template match="/lfm">
<xsl:text>
</xsl:text>
        <xsl:element name="topalbums">
            <xsl:attribute name="artista"/>
            <xsl:value-of select="topalbums/@artist"/>
            <xsl:for-each select="topalbums/album">
                <xsl:element name="album">
                    <xsl:for-each select="name">
                        <xsl:element name="name"/>
                        <xsl:value-of select="current()"/>
                            <xsl:for-each select="playcount">
                                    <xsl:value-of select="current()"/>
                            </xsl:for-each>
                        <xsl:for-each select="url">
                                <xsl:element name="url"/>
                                <xsl:value-of select="current()"/>
                            </xsl:for-each>  
                    </xsl:for-each>
                </xsl:element>
            </xsl:for-each>
        </xsl:element>
    </xsl:template>
</xsl:stylesheet>
