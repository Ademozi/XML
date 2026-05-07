<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output
method="html"
encoding="UTF-8"
indent="yes" />
    <xsl:template match="CD">
        <html>
            <head> 
                <title> 
                    <xsl:value-of select="@nom"/>
                </title>
            </head>
        <body bgcolor="#ffffff">
            <xsl:apply-templates/>
        </body>
        </html>
    </xsl:template>


    <xsl:template match="artiste">
        <h1 align="center"> 
            <xsl:value-of select="@nom"/> 
            <h2 align="center">
                Number: <xsl:value-of select="@no"/>
                City: <xsl:value-of select="@ville"/>
            </h2>
        </h1>
        
    </xsl:template>
    
    
    <xsl:template match="chansons">
        <h1 align="left"> 
            <xsl:value-of select="chanson"/> 
        </h1>
    </xsl:template>
</xsl:stylesheet>