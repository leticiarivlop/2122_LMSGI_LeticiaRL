<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="html"/>
    <xsl:template match="/">
        <html>
            <head>
                <title>ExamenFinal LeticiaRiveraLópez</title>
                 <link href="../css/estilo.css" rel="stylesheet" type="text/css"/>
            </head>
            <body>
                <h1>Base de datos:<xsl:value-of select="mysqldump/database/@name"/></h1>
                <div>
                     <xsl:apply-templates select="mysqldump/database/table_data[@name='DEPART' or @name='EMPLE']"/>
                     <footer>
                         <div>Realizado por:Leticia Rivera López</div>
                     </footer>
                </div>
            </body>
        </html>
    </xsl:template>
    <xsl:template match="mysqldump/database/table_data[@name='DEPART' or @name='EMPLE']">
        <h2>Tabla:<xsl:value-of select="@name"/></h2>
        <table>
            <thead>
                <tr>
               <xsl:for-each select="row[1]/field">
                   <th><xsl:value-of select="@name"/></th>
               </xsl:for-each> 
            </tr>    
            </thead>
            <tbody>
                <xsl:for-each select="row">
                    <tr>
                        <xsl:for-each select="field">
                            <td><xsl:value-of select="current()"/></td>
                        </xsl:for-each>
                    </tr>
                </xsl:for-each>
            </tbody>
        </table>
    </xsl:template>

</xsl:stylesheet>
