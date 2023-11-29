<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <xsl:template match="/">
    <p class="specifyResults">&#8594; all activities

  <xsl:apply-templates  select="activities/item">
    </xsl:apply-templates >
    </p>
  </xsl:template>


  <xsl:template match="date">
    <br /><br /> <!-- on commence par sauter une ligne -->
    <b><xsl:value-of select="."/></b> &#160;
  </xsl:template>
   <xsl:template match="action">
    <span class="tagAction"><xsl:value-of select="."/></span> &#160;
    <br /> <!-- saut de ligne après date et action -->
  </xsl:template>
  <!-- <xsl:template match="domain">
    <span class="tagDomain"><xsl:value-of select="."/></span> <br />
  </xsl:template>
 -->

  <xsl:template match="docType">
    <xsl:value-of select="." />
  </xsl:template>

  <xsl:template match="titre">
    <i><xsl:value-of select="." /></i>,&#160;
  </xsl:template>
  <xsl:template match="type">
    <xsl:value-of select="." />&#160;
  </xsl:template>
  <xsl:template match="nom">
    <xsl:value-of select="." />,&#160;
  </xsl:template>
  <xsl:template match="structure">
   <xsl:value-of select="." />.
  </xsl:template>
  <xsl:template match="lien">
    <xsl:value-of select="." />
    <xsl:variable name="hyperlink"><xsl:value-of select="@url" /> </xsl:variable>
    <br /><a href="{$hyperlink}" target="_blank"> <xsl:value-of select="@url"/> </a>
  </xsl:template>
  
  <xsl:template match="presentation">
    <xsl:value-of select="." /> 
    <xsl:variable name="hyperlink"><xsl:value-of select="@url" /> </xsl:variable>
    <br /><a href="{$hyperlink}" target="_blank"> <xsl:value-of select="@url"/> </a>
  </xsl:template>


</xsl:stylesheet>
