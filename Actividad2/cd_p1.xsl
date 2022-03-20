<?xml version="1.0" encoding = "UTF-8"?>
<xsl:stylesheet version ="1.0"  xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <body>
                <h1> Mi Lista de CD's </h1>
                <table border ="5">
                    <tr bgcolor="#0000FF">
                        <th> Titulo del album</th>
                        <th> Artista </th>
                        <th> Cancion </th>
                        <th> Sello discografico </th>
                        <th> Año de publicacion</th> 
                    </tr>
                    <xsl:for-each select ="CDs/CD">
                        <tr>
                            <td>
                                <xsl:value-of select="titulo"></xsl:value-of>
                            </td>
                            <td>
                                <xsl:value-of select="artista"/>
                            </td>
                            <td>
                                <xsl:for-each select="cancion">
                                    <xsl:value-of select="."/>
                                    <br/>
                                </xsl:for-each>
                            </td>
                            <td>
                                <xsl:value-of select="sello"></xsl:value-of>
                            </td>
                            <td>
                                <xsl:value-of select="año"></xsl:value-of>
                            </td>
                            
                        </tr>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>