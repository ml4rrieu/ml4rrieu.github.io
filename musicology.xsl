<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:strip-space elements="*" />

  <xsl:template match="/">
    <p class="specifyResults">&#8594; my activities in <span class="tagDomain">musicology</span>

        <xsl:for-each select="activities/item">

      <xsl:if test="domain= 'musicology' ">
        <br /><br />
        <b><xsl:value-of select="date" /> </b>&#160;
        <span class="tagAction"><xsl:value-of select="action"/></span> <br />

        <xsl:if test="action= 'output' ">
          <xsl:if test="docType">
            (<xsl:value-of select="docType" />)&#160;
          </xsl:if>

          <i><xsl:value-of select="titre" /></i>,&#160;
        </xsl:if>

        <xsl:if test="type">
          <xsl:value-of select="type" /> :&#160;
        </xsl:if>
        <xsl:if test="nom">
          <xsl:value-of select="nom" />
        </xsl:if>
        <xsl:if test="structure">
         <span>,&#160;</span><xsl:value-of select="structure" />.
        </xsl:if>
        <xsl:if test="personnes">
          &#160;<xsl:value-of select="personnes" />.
        </xsl:if>

        <xsl:if test="lien">
          <br /><xsl:variable name="hyperlink"><xsl:value-of select="lien/@url" /> </xsl:variable>
          <a href="{$hyperlink}" target="_blank"> <xsl:value-of select="lien/@url" /> </a>
        </xsl:if>

        <xsl:if test="presentation">
          <br /><xsl:variable name="hyperlink"><xsl:value-of select="presentation/@url" /> </xsl:variable>
          <a href="{$hyperlink}" target="_blank"> <xsl:value-of select="presentation/@url" /> </a>
        </xsl:if>


      </xsl:if>
    </xsl:for-each>
    </p>
  </xsl:template>
 </xsl:stylesheet>
