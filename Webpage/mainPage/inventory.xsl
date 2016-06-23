<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:template match="/">
        <html>
            <head>
                <link rel="stylesheet" type="text/css" href="inventory.css"/>
            </head>
            <body>
                <h1>Inventory</h1>
                <p>This is your inventory</p>

                <table border="1">
                    <tr bgcolor="#228b22">
                        <th>Name</th>
                        <th>Image</th>
                        <th>Category</th>
                        <th>Size</th>
                        <th>Stitches</th>
                        <th>Colors</th>
                    </tr>
                    <xsl:for-each select="inventory/pattern">
                        <xsl:variable name="imageFile" select="image" />
                        <tr>
                            <td>
                                <xsl:value-of select="name"/>
                            </td>
                            <td>
                                <a href="{$imageFile}">
                                    <img src="{$imageFile}" alt="{$imageFile}" width="425" height="550"/>
                                </a>
                            </td>
                            <td>
                                <xsl:value-of select="category"/>
                            </td>
                            <td>
                                <xsl:value-of select="size"/>
                            </td>
                            <td>
                                <xsl:value-of select="stitches"/>
                            </td>
                            <td>
                                <xsl:value-of select="colors"/>
                            </td>
                        </tr>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>

</xsl:stylesheet>