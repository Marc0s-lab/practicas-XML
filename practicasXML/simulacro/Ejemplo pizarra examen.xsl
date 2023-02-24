<?xml version="1.0" encoding="UTF-8"?>



<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="html"/>

    <xsl:template match="/">
        <html>
            <head>
                <title>Ejercicio Examen Pizarra.xsl</title>
                <style>
                      
                    table{
                    border-collapse: collapse;
                      
                    border: solid;
                     
                    }
                      
                    table tr th{
                      
                    background-color:black;
                    color:white;
                    padding: 1em;
                    border: solid;
                    border-color: black;
                      
                    }
                      
                      
                    table tr td{
                    padding: 1em;
                    border: solid;
                    }
                    
                    body{
                    display: flex;
                    flex-direction: column;
                    align-items:center;
                    }
                    
                    div{
                    display: flex;
                    flex-direction: row;
                    align-items:center;
                    }
                      
                    div *{
                    padding: 5px;
                    }
                      
                    tr.top td{
                    background-color: yellow;
                    }
                    
                    h1{
                    text-align:center;
                    }
                      
                    tr.suspenso td {
                    background-color: yellow;
                    }
                </style>
            </head>
            <body>
                <xsl:for-each select="/clase/alumno">
                    <div>
                        <h1>
                            <xsl:value-of select="nombre"/>
                            <br/>
                            <xsl:value-of select="apellidos"/>
                        </h1>
                    </div>
                    <h2>
                        <xsl:value-of select="dni"/>
                    </h2>
                    <table>
                        <tr>
                            <th>Modulo</th>
                            <th>Calificaciones</th>
                        </tr>
                        <xsl:for-each select="modulos/modulo">
                            <tr>
                                <xsl:if test="nota &lt; 5">
                                    <xsl:attribute name="class">suspenso</xsl:attribute>
                                </xsl:if>
                                <td> 
                                    <xsl:value-of select="nombre_mod"/>
                                </td>
                                <td> 
                                    <xsl:value-of select="nota"/>
                                </td>                              
                            </tr>
                        </xsl:for-each>
                        <tr>
                            <td>Nota media</td>
                            <td><xsl:value-of select=" sum(modulos/modulo/nota) div count(modulos/modulo)"/></td>
                        </tr>
                    </table>
                </xsl:for-each>
            </body>
        </html>
    </xsl:template>

</xsl:stylesheet>
