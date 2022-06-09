<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="html"/>
    <xsl:template match="/lfm">
        <html>
            <head>
                <title><xsl:value-of select="topalbums/@artist"/>:LeticiaRiveraLópez</title>
                <meta charset="UTF-8"/>
                <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
                <meta name="robots" content="index,follow"/>
                <meta name="description" content="Tabla"/>
                <meta name="keywords" content="HTML, CSS,XSL"/>
                <meta name="author" content="Leticia Rivera López"/>
                <meta http-equiv="refresh" content="300"/>
                <link href="estilos.css" rel="stylesheet" type="text/css"/>
                <link rel="icon" type="image/png" href="../../images/favicon-32x32.png"/>
            </head>
            <body>
                <h1>last.fm</h1>
                <h2><xsl:value-of select="topalbums/@artist"/></h2>
                <h3>Albumes</h3>
                <xsl:apply-templates select="/topalbums/album"/>
            </body>
        </html>
    </xsl:template>
    <xsl:template match="/topalbums/album">
        <div>
            <xsl:value-of select="/@artist"/>
            <xsl:for-each select="/album">
               <xsl:value-of select="/artist/name"/>
               <img src=""><xsl:value-of select="image/@large"/></img>
               <a href=""><xsl:value-of select="@name"/></a>
        </xsl:for-each>
        </div>
        
        
    </xsl:template>
</xsl:stylesheet>
