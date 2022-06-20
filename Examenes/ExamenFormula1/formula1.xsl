<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="html"/>
    <xsl:template match="/">
        <html>
            <head>
                <title>Leticia Rivera López</title>
                 <link href="css/estilos.css" rel="stylesheet" type="text/css"/>
            </head>
            <body>
                <h1>FORMULA 1</h1>
                <xsl:apply-templates select="/formula1"/>
            </body>
        </html>
    </xsl:template>
    <xsl:template match="formula1">
        <table>
            <caption>CLASIFICACION DE PILOTO .TEMPORADA<xsl:value-of select="@temporada"/> (<xsl:value-of select="clasificacion/@carrera"/>ª Carrera)</caption>
            <thead> 
                <tr>
                    <th>Posicion</th>
                    <th colspan="2">Piloto</th>
                    <th>Escuderia</th>
                    <th>Puntos</th>
                </tr>
            </thead>     
            <tbody>
                <xsl:apply-templates select="clasificacion/clasificacionpilotos">
                    <xsl:sort select="@posicion" data-type="number" order="ascending"/>
                </xsl:apply-templates>
            </tbody>
        </table>
    </xsl:template>
    <xsl:template match="clasificacion/clasificacionpilotos">
        <tr>
            <td><xsl:value-of select="concat(@posicion,'º')"/></td>
            <td><img src="{concat('images/',piloto/@pilotoId,'.PNG')}"/></td>
            <td>
                <div>
                    <a href="{piloto/@url}"><xsl:value-of select="concat(piloto/nombre,' ',piloto/apellido)"/></a>
                </div>
                <div>
                    <xsl:value-of select="piloto/pais"/>
                </div>
            </td>
            <td>
                <div>
                    <a href="{constructor/@url}"><xsl:value-of select="constructor/nombre"/></a>
                </div>
                <div>
                    <xsl:value-of select="constructor/pais"/>
                </div>
            </td>
            <td><xsl:value-of select="@puntos"/></td>
        </tr>
    </xsl:template>
</xsl:stylesheet>
