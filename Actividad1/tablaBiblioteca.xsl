<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
    <html>
    <body>
        <h1>Ejemplo Plantillas</h1>
        <h2>Mi biblioteca personal</h2>
        <table>
            <tr bgcolor="#886688">
                <th>ISBN</th>
                <th>Titulo</th>
                <th>Autor</th>
                <th>Precio</th>
                <th>Numero paginas</th>
            </tr>
            <xsl:for-each select="libreria/libro">
                    <tr>
                        <td><xsl:value-of select="isbn"/></td>
                        <xsl:choose>
                            <xsl:when test="numPaginas &gt; 149">
                                <td bgcolor="#ff0000">
                                    <xsl:value-of select="titulo"/>
                                </td>
                                <td bgcolor="#ff0000">
                                    <xsl:value-of select="autor"/>
                                </td>
                            </xsl:when>
                            <xsl:when test="numPaginas &lt; 150">
                                <td bgcolor="#00ff00">
                                    <xsl:value-of select="titulo"/>
                                </td>
                                <td bgcolor="#00ff00">
                                    <xsl:value-of select="autor"/>
                                </td>
                            </xsl:when>
                            <xsl:otherwise>
                                <td bgcolor="#0000ff">
                                    <xsl:value-of select="titulo"/>
                                </td>
                                <td bgcolor="#0000ff">
                                    <xsl:value-of select="autor"/>
                                </td>
                            </xsl:otherwise>
                        </xsl:choose>
                        
                        <td><xsl:value-of select="precio"/></td>
                        <td><xsl:value-of select="numPaginas"/></td>
                    </tr>
                                       
            </xsl:for-each>
            
        </table>
    </body>
    </html>

</xsl:template>
</xsl:stylesheet>