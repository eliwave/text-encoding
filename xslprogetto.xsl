<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0"
 
 xmlns:tei="http://www.tei-c.org/ns/1.0">

<xsl:output method="html" version="4.0" indent="yes"/>


  <xsl:template match="/">
    <html>
      <head>
        <title>UDI di Piombino</title>
        <link rel="stylesheet" type="text/css" href="css/stile.css" media="screen"/>
        <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.0/jquery.min.js">&#160;</script>
        <script src="js/code.js" type="text/javascript"> &#160;</script>
        <script src="js/elevatezoom.js" type="text/javascript"> &#160;</script>
		<script src="js/jquery.elevatezoom.js" type="text/javascript">&#160;</script>  
      </head>
      <body>
        <xsl:apply-templates />
      </body>
    </html>
  </xsl:template>

<xsl:template match="tei:teiHeader">
  <main><xsl:apply-templates/></main>
</xsl:template>

 <xsl:template match="tei:titleStmt">
    <header>
      <section id="thetitle">
        <p><xsl:value-of select="tei:title"/></p>
        <p>Autore della codifica: <xsl:value-of select="tei:respStmt/tei:name"/></p>
      </section>
    </header>
  </xsl:template>
  
   <xsl:template match="tei:sourceDesc">
        <section id="subtitle">
          <p><xsl:value-of select="tei:msDesc/tei:physDesc"/></p>
        </section>
        <section id="where">
      <p><xsl:value-of select="tei:msDesc/tei:msIdentifier/tei:settlement"/></p>
      <p><xsl:value-of select="tei:msDesc/tei:msIdentifier/tei:repository"/></p>
    </section>
      </xsl:template>
  
  <xsl:template match="tei:publicationStmt">
    <section id="publ">
      <p><xsl:value-of select="tei:publisher"/></p>
      <p><xsl:value-of select="tei:date"/></p>
      </section>
  </xsl:template>
  
<xsl:template match="tei:msIdentifier">
    <section id="loco">
      <p>Testo tratto dalla <xsl:value-of select="tei:repository"/></p>
      </section>
  </xsl:template>

<xsl:template match="tei:msContents">
    <section id="title">
      <p><xsl:value-of select="tei:msItem/tei:title"/></p>
    </section>
  </xsl:template>
  
  <xsl:template match="tei:msDesc">
        <section id="wroteIn">
          <p><xsl:value-of select="tei:history"/></p>
        </section>
      </xsl:template>
  
  <xsl:template match="tei:projectDesc">
    <section id="projDescription">
      <p><xsl:apply-templates/></p></section>
  </xsl:template>

  <xsl:template match="tei:front">
    <section id="front">
      <p><xsl:value-of select="tei:pubPlace"/></p>
      <p><xsl:value-of select="tei:docDate"/></p>
    </section>
  </xsl:template>

 <xsl:template match="tei:pb[@facs]">
   <div><img class="immagine"><xsl:attribute name="src"><xsl:value-of select='@facs'/></xsl:attribute></img></div>
  </xsl:template>
  
  <xsl:template match="//tei:seg">
	<a target="_blank"><xsl:attribute name="href"><xsl:value-of select='@source'/></xsl:attribute>
		<xsl:apply-templates/>
	</a>
  </xsl:template>
  
  <xsl:template match="//tei:abbr">
    <a target="_blank"><xsl:attribute name="href"><xsl:value-of select='@source'/></xsl:attribute>
      <xsl:apply-templates/>
    </a>
  </xsl:template>
 
 <xsl:template match="//tei:body/tei:div/tei:div">
  <div class="testo"><xsl:apply-templates/></div> 
 </xsl:template>

 <xsl:template match="//tei:body/tei:div">
  <div class="pagina"><xsl:apply-templates/></div> 
 </xsl:template>
 
 <xsl:template match="//tei:div/tei:head">
  <h2 id="numPagina"><xsl:apply-templates/></h2> 
 </xsl:template>
  
  <xsl:template match="//tei:list/tei:head">
    <p><xsl:apply-templates/></p>
  </xsl:template>
 
  <xsl:template match="//tei:list">
    <ul><xsl:apply-templates/></ul>
  </xsl:template>
  
  <xsl:template match="//tei:item">
    <li><xsl:apply-templates/></li>
  </xsl:template>
 
  <xsl:template match="//tei:sic">
  </xsl:template>
  
 <xsl:template match="//tei:p">
  <p><xsl:apply-templates/></p> 
 </xsl:template>
 
  </xsl:stylesheet>
  
  
  
  
  
