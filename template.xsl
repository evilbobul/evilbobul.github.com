<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:template match="/">
        <html>
            <body>
                <section id="main">
                    <div id="MainContent">
                        <div id="results">
                            <ul id="cont">
                                <xsl:for-each select="//option">
                                    <li class="cont">
                                        <a class="HeadLink">
                                            <xsl:value-of select="//option/header"/>
                                        </a>
                                        <span class="adress">
                                            <xsl:value-of select="//option/adress"/>
                                        </span>
                                        <xsl:value-of select="//option/translate"/>
                                        <p class="desc">
                                            <xsl:value-of select="//option/desc"/>
                                        </p>
                                            <a class="sublink">
                                                <xsl:value-of select="//optoin/link"/>
                                            </a>
                                    </li>
                                </xsl:for-each>
                            </ul>
                        </div>
                    </div>
                </section>
            </body>
        </html>
    </xsl:template>

</xsl:stylesheet>