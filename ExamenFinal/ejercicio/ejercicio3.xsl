<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="text"/>
    <xsl:template match="/mysqldump">
        <xsl:value-of select="concat('CREATE DATABASE IF NOT EXISTS ',database/@name,';')"/>
        
    </xsl:template>

</xsl:stylesheet>
