<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:strip-space elements="*" />

  <xsl:template match="/">
    <p class="specifyResults">&#8594; <span class="tagAction">inputs</span> is selected
    
    <xsl:for-each select="activities/item">

      <xsl:if test="action= 'input' ">
        <br /><br />
        <b><xsl:value-of select="date" /> </b>&#160;
        <span class="tagDomain"><xsl:value-of select="domain"/></span> <br />

        <xsl:if test="docType">
          (<xsl:value-of select="docType" />)&#160;
        </xsl:if>
        
        <xsl:if test="titre">
          <i><xsl:value-of select="titre" /></i>,&#160;
        </xsl:if>

        <xsl:if test="type">
          <xsl:value-of select="type" /> :&#160;
        </xsl:if>

        <xsl:if test="nom">
          <xsl:value-of select="nom" />,&#160;
        </xsl:if>
        
        <xsl:value-of select="structure" />.
        <xsl:value-of select="personnes" />

        <xsl:if test="lien">
          <br /><xsl:variable name="hyperlink"><xsl:value-of select="lien/@url" /> </xsl:variable>
          <a href="{$hyperlink}" target="_blank"> <xsl:value-of select="lien/@url" /> </a>
        </xsl:if>

      </xsl:if>
    </xsl:for-each>
  </p>
  </xsl:template>
 </xsl:stylesheet>
