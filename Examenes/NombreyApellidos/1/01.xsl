<?xml version="1.0" encoding="UTF-8"?>


<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="text"/>

    
    <xsl:template match="/">
        network:
        version: <xsl:value-of select="network/version"/>
        renderer: networkd
        ethernets: 
        <xsl:apply-templates select="network/interface"/>
    </xsl:template>
    <xsl:template match="network/interface">
        <xsl:value-of select="ethernets/text()"/>:
            dhcp4: <xsl:value-of select="dhcp4"/>
            address: [<xsl:value-of select="address/text()"/>/24]
            gateway4: <xsl:value-of select="gateway/text()"/>
            nameservers: [<xsl:for-each select="nameservers/address/text()">
                                <xsl:value-of select="current()"/>
                                <xsl:if test="position()!=last()">,</xsl:if>     
                      </xsl:for-each>]
        <xsl:text>
        </xsl:text>
    </xsl:template>
</xsl:stylesheet>
