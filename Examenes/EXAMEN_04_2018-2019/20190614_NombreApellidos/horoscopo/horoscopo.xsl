<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="html"/>
    <xsl:template match="/horoscope">
    <html>
        <head>
            <link href="../css/estilos.css" type="text/css" rel="stylesheet"/>
        </head>
        <body>
            <div class="continidor">
                <figure>
                    <img src="{concat('../../images/bg-',sign/@id,'.jpg')}"/>
                </figure>
                <h3 class="title">
                    HOROSCOPO <xsl:value-of select="document('../signos.xml')/horoscopo/signo[@id=current()//sign/@id]/nombre"/>
                </h3>
                <h4 class="date">
                    Prediccion para hoy 
                    <xsl:value-of select="//date"/>
                </h4>
               <div class="mensaje">
                    <xsl:value-of select="//message"/>
                </div>
            </div>
        </body>
    </html>
</xsl:template>
</xsl:stylesheet>	
