<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:template match="/">
        <html>
            <head>
                <link rel="stylesheet" type="text/css" href="inventory.css" />
            </head>
            <body>
                <h1>Inventory</h1>
                <p>This is your inventory</p>

                <table border="1">
                    <tr bgcolor="#228b22">
                        <th>ID</th>
                        <th>Item Name</th>
                        <th>Type</th>
                        <th>Description</th>
                        <th>Value</th>
                        <th>Date Added</th>
                    </tr>
                    <xsl:for-each select="inventory/item">
                        <tr>
                            <td><xsl:value-of select="id"/></td>
                            <td><xsl:value-of select="name"/></td>
                            <td><xsl:value-of select="type"/></td>
                            <td><xsl:value-of select="description"/></td>
                            <td><xsl:value-of select="value"/></td>
                            <td><xsl:value-of select="date"/></td>
                        </tr>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>

</xsl:stylesheet>