<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:template match="/">
        <xsl:for-each select="//result">
            <li class="cont">
                <a class="HeadLink" href="#">
                    <xsl:value-of select="header"/>
                </a>
                <span class="adress">
                    <xsl:value-of select="./adress"/>
                </span>
                <p class="desc">
                    <xsl:value-of select="./desc"/>
                </p>
                <a class="sublink">
                    <xsl:value-of select="./links"/>
                </a>
            </li>
        </xsl:for-each>
    </xsl:template>

</xsl:stylesheet>