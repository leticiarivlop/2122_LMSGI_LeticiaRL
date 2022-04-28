<?xml version="1.0" encoding="UTF-8"?>

<!--
    Document   : 01.xsl
    Created on : 28 de marzo de 2022, 9:51
    Author     : Leticia Rivera López
    Description: Ejercicio Viviendas
        Purpose of transformation follows.
-->

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="html"/>

    <!-- TODO customize transformation rules 
         syntax recommendation http://www.w3.org/TR/xslt 
    -->
    <xsl:template match="/">
        <html>
            <head>
                <title>XSLT 01 Leticia Rivera López</title>
            </head>
            <body>
                <h1>Informacion de las viviendas</h1>
               <xsl:apply-templates select="edificio/vivienda"/>
               <div>
                   <div>Numero de viviendas<xsl:value-of select="count(//vivienda)"/></div>
                   <div>Total vecinos:<xsl:value-of select="count(//nombre)"/></div>
               </div>
            </body>
        </html>
    </xsl:template>
    <xsl:template match="edificio/vivienda">
        <div>
            <xsl:value-of select="concat('Piso:',piso,' Puerta:',puerta)"/>
        <ol>
            <xsl:apply-templates select="vecinos/nombre"/>
        </ol>
        </div>
    </xsl:template>
  <xsl:template match="vecinos/nombre">
     <li>
         <xsl:value-of select="current()"/>
     </li>
     
    </xsl:template>
</xsl:stylesheet>
