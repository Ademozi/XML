<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:output method="xml" indent="yes" encoding="ISO-8859-1"/>

    <xsl:template match="/">
        <liste>
            <xsl:for-each select="//artiste[@ville='Constantine']">

                <artiste>
                    <nom>
                        <xsl:value-of select="@nom"/>
                    </nom>

                    <biography>
                        <xsl:value-of select="biography"/>
                    </biography>
                </artiste>

            </xsl:for-each>
        </liste>
    </xsl:template>

</xsl:stylesheet>