<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

<xsl:output method="text"/>
    <xsl:template match="/CD">
        <xsl:for-each select="album">
            Titre: <xsl:value-of select="titre"/>
        </xsl:for-each>
    </xsl:template>
</xsl:stylesheet>

