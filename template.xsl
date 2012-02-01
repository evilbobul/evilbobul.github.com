<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:variable name="translation">
Перекласти цей текст
</xsl:variable>
        
<xsl:template match="/">
    <xsl:apply-templates/>
</xsl:template>
    
    <xsl:template match="/">
        <xsl:for-each select="//result">
            <li class="cont">
                <a class="HeadLink" href="#">
                    <xsl:copy-of select="./header"/>
                </a>
                <span class="adress">
                    <xsl:value-of select="./adress"/>
                </span>
                <xsl:if test="@translation">
                    <span> - </span><a href="#" class="sublink">
                        <xsl:value-of select="$translation"/>
                    </a>
                </xsl:if>
                <p class="desc">
                    <xsl:value-of select="./desc"/>
                </p>
                <xsl:for-each select="./links">
                    <a href="#" class="sublink">
                        <xsl:value-of select="*"/>
                    </a>
                </xsl:for-each>
            </li>
        </xsl:for-each>
    </xsl:template>

</xsl:stylesheet>