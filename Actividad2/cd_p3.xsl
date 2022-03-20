<?xml version="1.0" encoding = "UTF-8"?>
<xsl:stylesheet version ="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <body>
                <h1> Mi Lista de CD's </h1>
                <table border ="5">
                    <tr bgcolor="#0000FF">
                        <th> Sello Discografico </th>
                        <th> Canciones </th>
                    </tr>
                    <xsl:for-each select="CDs/CD[sello =' Sony ']">
                        <tr>
                            <td>
                                <xsl:value-of select="sello"/>
                            </td>
                            <td>
                                <xsl:for-each select="cancion">
                                    <xsl:value-of select="."/>
                                    <br/>
                                </xsl:for-each>
                            </td>
                        </tr>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>