<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <body>
                <h3>MOVIMIENTOS</h3>
                <table border="1">
                    <tr bgcolor="#CCFFFF">
                        <th style="text-align:center">Concepto</th>
                        <th style="text-align:center">Cantidad</th>
                    </tr>
                    <xsl:for-each select="movimientos/movimiento">
                        <tr>
                            <td>
                                <xsl:value-of select="Concepto"/>
                            </td>
                            <xsl:choose>
                                <xsl:when test="Cantidad>0">
                                    <td bgcolor="#00FF7F"><xsl:value-of select="Cantidad"/></td>
                                </xsl:when>
                                <xsl:otherwise>
                                    <td bgcolor="#FF0000"><xsl:value-of select="Cantidad"/></td>
                                </xsl:otherwise>
                            </xsl:choose>

                        </tr>
                    </xsl:for-each>
                </table>
            </body>
        </html>

    </xsl:template>
</xsl:stylesheet>