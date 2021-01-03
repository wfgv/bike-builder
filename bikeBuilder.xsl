<?xml version="1.0" ?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0">
    <xsl:output method="html" doctype-public="XSLT-compat" omit-xml-declaration="yes" encoding="UTF-8" indent="yes" />
    <xsl:template match="/">
        <table id="bike-builder" border="1" class="indent">
            <thead>
                <tr>
                    <th colspan="6">Bike Builder</th>
                </tr>
                <tr>
                    <th>Select</th>
                    <th>Brand</th>
                    <th>Model</th>
                    <th>Colour</th>
                    <th>Rating</th>
                    <th>Price</th>
                </tr>
            </thead>
            <tbody>
                <xsl:for-each select="/bike-builder/section">
                    <tr>
                        <td colspan="6">
                            <xsl:value-of select="@component" />
                        </td>
                    </tr>
                    <xsl:for-each select="entree">
                        <tr id="{position()}">
                            <xsl:attribute name="popular">
                                <xsl:value-of select="boolean(@popular)" />
                            </xsl:attribute>
                            <td align="center">
                                <input name="item" type="checkbox" />
                            </td>
                            <td>
                                <xsl:value-of select="brand" />
                            </td>
                            <td>
                                <xsl:value-of select="model" />
                            </td>
                            <td>
                                <xsl:value-of select="colour" />
                            </td>
                            
                            <td>
                                <xsl:value-of select="rating" />
                            </td>
                            <td>
                                <xsl:value-of select="price" />
                            </td>
                        </tr>
                    </xsl:for-each>
                </xsl:for-each>
            </tbody>
        </table>
    </xsl:template>
</xsl:stylesheet>