<?xml version="1.0" encoding="UTF-8"?>

<!--
    Document   : boletin2.xsl
    Created on : 4 de junio de 2019, 11:12
    Author     : amor
    Description:
        Purpose of transformation follows.
-->

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
	<xsl:param name="NumExpediente" select="'001'"/>
	<xsl:output method="html" encoding="UTF-8" indent="yes"/>
    <xsl:template match="/daw">
        <html>
            <head>
                <title>Boletin de notas</title>
                <style>
                    body {width:1024px; margin:0 auto; }
                    header {background-color:#9c8c3f;color:white;text-align:center;border:5px dotted white;margin-bottom:10px;}
                    table {width:100%; border-collapse: collapse;}
                    td{padding: 5px;margin: 20px; }
                    th{background-color:#9c8c3f;color:white;height:1.5em;font-size:1.1em;}
                   
                    .total {background-color:#d1b841; color:white; font-size:1.1em;}
                    
                    .verde{color:green;}
                    .nota {text-align:center;}
                    footer div{text-align:right; width:100%;background-color:#9c8c3f;color:white;font-size:1.2em;margin-top:10px;padding-top:10px;padding-bottom:5px; }
                    
                </style>
            </head>
            <body>
                <header>
                    <h1>
                        <xsl:value-of select="@curso"/>º DAW Curso 2018/2019
                    </h1>
                </header>
                <main>

                    <table border="1">
                        <tr>
                            <th>Expediente</th>
                            <th>Nombre y apellidos</th>
                            <th>Calificaciones</th>
							

                        </tr>
						<xsl:choose>
							<xsl:when test="$NumExpediente='0'">
								 <xsl:apply-templates select="alumnos/alumno">
									<!-- <xsl:sort data-type="number" select="expediente"/> -->
								</xsl:apply-templates>
							</xsl:when>
							<xsl:otherwise>
								<xsl:apply-templates select="alumnos/alumno[expediente=$NumExpediente]"/>
							</xsl:otherwise>
						
						</xsl:choose>
                       

                    </table>

                </main>
                <footer>
                    <div>
                        <xsl:text>Tu nombre y apellidos</xsl:text>
                    </div>
                </footer>
            </body>
        </html>
    </xsl:template>
    <xsl:template match="alumno">
        <tr>

            <td >
                <xsl:value-of select="expediente"/>
            </td>
            <td >
                <xsl:value-of select="concat(nombre,' ',apellido1,' ',apellido2)"/>
            </td>
            <td>
                <table border="2">
                    <tr>
                    <th>Módulo</th>
                    <th>1º Evaluación</th>
                    <th>2º Evaluación</th>
                    <th>3º Evaluación</th>
                    </tr>
                    <xsl:apply-templates select="//calificacion[@expediente=current()/expediente]" />
                    <tr class="total">
                    <td>Número de aprobados</td>
                    <th>
                        
                    <xsl:value-of select="count(//calificacion[@expediente=current()/expediente]/nota[@evaluacion='1' and .>=5])"/>
                   
                    </th>
                     <th>
                          <xsl:value-of select="count(//calificacion[@expediente=current()/expediente]/nota[@evaluacion='2' and .>=5])"/>
                    
                    </th>
                     <th>
                          <xsl:value-of select="count(//calificacion[@expediente=current()/expediente]/nota[@evaluacion='3' and .>=5])"/>
                   
                    </th>
                    </tr>
                </table>
            </td> 
