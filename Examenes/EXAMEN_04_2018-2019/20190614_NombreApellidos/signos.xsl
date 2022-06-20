<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="html"/>
    <xsl:template match="/horoscopo">
    <html>
        <head>
        </head>
        <body>
            <h3>HOROSCOPO/SIGNOS DEL ZODIACO</h3>
            <div class="container">
                <xsl:apply-templates select="signo"/>
            </div>
        </body>
    </html>
</xsl:template>
<xsl:template match="signo">
    <div class="caja">
        <a>
            <xsl:attribute name="href">
                <xsl:value-of select="concat('horoscopo/',nombre,'/horoscopo.xml')"/>
            </xsl:attribute>
            <img src="{concat('images/bg-',@id,'.jpg')}"/>
        </a>
        <div class="nombre">
            <xsl:value-of select="nombre"/>
        </div>
        <div class="fecha">
            <xsl:value-of select="fecha"/>
        </div>
    </div>
</xsl:template>
</xsl:stylesheet>
