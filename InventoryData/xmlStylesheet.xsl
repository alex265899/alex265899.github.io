<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:template match="/itemName">
        <html>
            <head>
                <title>Hello!</title>
            </head>

            <body>>
                <h1><xsl:value-of select="text()" /></h1>
            </body>

        </html>
    </xsl:template>

</xsl:stylesheet>