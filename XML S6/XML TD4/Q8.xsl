<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
xmlns:xs="http://www.w3.org/2001/XMLSchema"
exclude-result-prefixes="xs"
version="2.0">

    <xsl:template match="/CD">


        <xsl:variable name="artistes" select="artiste"/>

        <html>
            <head>
                <title>Liste des artistes</title>
            </head>
            <body>
                <h1>
                    Ma liste d'artistes
                </h1>

                <xsl:call-template name="afficherArtiste">
                    <xsl:with-param name="artistes" select="$artistes"/>
                </xsl:call-template>

            </body>
        </html>
    </xsl:template>


    <xsl:template name="afficherArtiste">

        <xsl:param name="artistes"/>

        <xsl:for-each select="album">
            <h1 style="color:red">
                NOM: <xsl:value-of select="$artistes[@no = current()/ref-artiste/@ref]/@nom"/>
            </h1>

            <h2>
                Ville: <xsl:value-of select="$artistes[@no = current()/ref-artiste/@ref]/@ville"/>
            </h2>

            <h2>
                Site: <xsl:value-of select="$artistes[@no = current()/ref-artiste/@ref]/site/@url"/>
            </h2>
        
            <h3>
                Productions
            </h3>

            <table border="1">
                <tr>
                    <td>NOM Album</td>
                    <td> <xsl:value-of select="titre"/> </td>
                </tr>

                <tr>
                    <td>Chanson</td>
                    <td> <xsl:value-of select="chansons/chanson"/> </td>
                </tr>
            </table>

        </xsl:for-each>

    </xsl:template>

</xsl:stylesheet>