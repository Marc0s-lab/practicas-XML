<?xml version="1.0" encoding="UTF-8"?>

<!--
    Document   : simulacroxsl.xsl
    Created on : 22 de febrero de 2023, 10:27
    Author     : MarcosCabralPeralta
    Description:
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
                <title>simulacroxsl</title>
            </head>
            <body>
                <ul>
                    <li>
                        Nombre: <xsl:value-of select="/alumnos/nombre"></xsl:value-of>
                    </li>
                    <li>
                        Apellido: <xsl:value-of select="/alumnos/apellidos"></xsl:value-of>
                    </li>
                    <li>
                        DNI: <xsl:value-of select="/alumnos/dni"></xsl:value-of>
                    </li>
                </ul>
                <table>
                    <caption>Notas</caption>
                    <tr>
                        <th>Sistemas</th>
                        <th>Bases de datos</th>
                        <th>Programación</th>
                        <th>Marcas</th>
                        <th>Fol</th>
                        <th>Entornos</th>
                    </tr>
                    <tr>
                        <td><xsl:attribute name="sistemas"/></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                    </tr>
                </table>
            </body>
        </html>
    </xsl:template>

</xsl:stylesheet>
