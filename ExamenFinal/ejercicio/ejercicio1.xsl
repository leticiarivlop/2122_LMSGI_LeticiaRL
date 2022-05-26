<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="html"/>
    <xsl:template match="/">
        <html>
            <head>
                <link href="../css/estilo.css" rel="stylesheet" type="text/css"/>
            </head>
            <body>
                <h1>Base de datos:<xsl:value-of select="mysqldump/database/@name"/></h1>
                <h2>Tabla:<xsl:value-of select="mysqldump/database/table_structure[1]/@name"/></h2>
                
                <h2>Tabla:<xsl:value-of select="mysqldump/database/table_structure[2]/@name"/></h2>
            </body>
        </html>
    </xsl:template>

</xsl:stylesheet>
