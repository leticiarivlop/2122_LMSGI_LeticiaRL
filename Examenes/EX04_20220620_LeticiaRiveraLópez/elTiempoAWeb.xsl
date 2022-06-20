<?xml version="1.0" encoding="UTF-8"?>

<!--
    Document   : elTiempoAWeb.xsl
    Created on : 20 de junio de 2022, 8:39
    Author     : daw1
    Description:
        Purpose of transformation follows.
-->

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="html"/>
    <xsl:template match="/data">
        <xsl:text disable-output-escaping="yes">&lt;!DOCTYPE html&gt;
        </xsl:text>
        <xsl:apply-templates select="comment()"/>
        <xsl:text> 
        </xsl:text>
        <html>
            <head>
                <title>Madrid.LeticiaRiveralópez</title>
                <link href="css/estilos.css" rel="stylesheet" type="text/css"/>
            </head>
            <body>
                <table>
                    <caption>El tiempo en <xsl:value-of select="locality/name"/>
                    <xsl:text></xsl:text>
                    Pronostico 7 dias|El tiempo por Tutiempo.net</caption>
                    <thead>
                        
                            <tr>
                                <th>Fecha</th>
                                <th colspan="2">temperatura()</th>
                                <th colspan="2">Velocidad()</th>
                                <th>Humedad()</th>
                                <th><img src="images/sol.png" alt="sol"/></th>
                                <th >Fase lunar</th>
                                <th colspan="2"><img src="images/luna.png" alt="luna"/></th>
                            </tr>
                    </thead>
                    <tbody>
                        <xsl:for-each select="day">
                            <tr>
                                <td><xsl:value-of select="date"/></td>
                                <td  colspan="2"><img src="{concat('https://v5i.tutiempo.net/wi/01/60/',icon,'.png')}" alt="luna"/><xsl:value-of select="concat(temperature_max,../information/temperature,temperature_min,../information/temperature)"/></td>
                                <td colspan="2"><img src="{concat(' https://v5i.tutiempo.net/wd/big/black/',icon_wind,'.png')}" alt="luna"/><xsl:value-of select="concat(wind,../information/wind)"></xsl:value-of></td>
                                <td><xsl:value-of select="concat(humidity,../information/humidity)"/></td>
                                <td>Salida sol:<xsl:value-of select="sunrise"/>
                                    Puesta sol:<xsl:value-of select="sunset"/>
                                </td>
                            <td><img src="{concat('https://v5i.tutiempo.net/wmi/01/',moon_phases_icon,'.png')}" alt="luna"/></td>
                            <td>Salida luna:<xsl:value-of select="moonrise"/> 
                                Puesta luna: <xsl:value-of select="moonset"/>
                            </td>
                            </tr>
                        </xsl:for-each>
                    </tbody>
                </table>
                <footer>
                     <xsl:value-of select="copyright"/>
                    <xsl:value-of select="use"/>
                </footer>
            </body>
        </html>
    </xsl:template>
    <xsl:template match="comment()">
        <xsl:text xml:space="preserve">
        <xsl:comment>
            <xsl:value-of select="."/>
        </xsl:comment>
        </xsl:text>
    </xsl:template>
</xsl:stylesheet>
