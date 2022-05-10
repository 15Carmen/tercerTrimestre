<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <body>
                <h3>COLECCI�N DE RAQUETAS</h3>
                <table border="1">
                    <tr bgcolor="#CCFFFF">
                        <th style="text-align:left">marca</th>
                        <th style="text-align:left">modelo</th>
                        <th style="text-align:left">a�o</th>
                    </tr>
                    <xsl:for-each select="tienda/raqueta">
                        <tr>
                            <td>
                                <xsl:value-of select="marca"/>
                            </td>
                            <td>
                                <xsl:value-of select="modelo"/>
                            </td>
                            <td>
                                <xsl:value-of select="a�o"/>
                            </td>
                        </tr>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>