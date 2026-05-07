<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
xmlns:xs="http://www.w3.org/2001/XMLSchema"
exclude-result-prefixes="xs"
version="2.0">

    <xsl:template match="/">
        <html>
            <head>
                <title>Liste des artistes</title>
            </head>
            <body>
                <table border="1"> 
                    <tr>
                        <td>Numero</td>
                        <td>NOM</td>
                        <td>Ville</td>
                    </tr>

                    <!-- Using call-template -->
                    <xsl:for-each select="//artiste">
                        <xsl:call-template name="artiste"/>
                    </xsl:for-each>
                    
                </table>
            </body>
        </html>
    </xsl:template>


    <xsl:template name="artiste">

        <tr>
            <td> <xsl:value-of select="@no"/> </td>
            <td> <xsl:value-of select="@nom"/> </td>
            <td> <xsl:value-of select="@ville"/> </td>
        </tr>

    </xsl:template>

</xsl:stylesheet>