<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE documentElement [
 <!ENTITY reg "">
 <!ENTITY trade "">
]>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="html"/>

<xsl:template match="/">
<html>
<head>
<title>Dungeons &amp; Dragons&trade; Online: Stormreach&trade; - News</title>
<link rel="stylesheet" type="text/css" href="http://ddoeugls.com/News/style.css" />
</head>
<body>
      <div class="launcherNewsItemsContainer">
       <xsl:apply-templates select="/rss/channel"/>
    </div>
</body>
</html>
</xsl:template>

<xsl:template match="/rss/channel">
<div class="launcherNewsChannelContainer">
<xsl:value-of disable-output-escaping="yes" select="title"/>
</div>
 <xsl:apply-templates select="item"/>
</xsl:template>

<xsl:template match="/rss/channel/item">
  <div class="launcherNewsItemContainer">
<div class="launcherNewsItemTitle">
<xsl:value-of disable-output-escaping="yes" select="title"/>
</div>
<div class="launcherNewsItemDate">
        <xsl:value-of select='substring(pubDate, 6, 2)'/>-<xsl:value-of select='substring(pubDate, 9, 3)'/>-<xsl:value-of select='substring(pubDate, 13, 4)'/>
  </div>
<div class="launcherNewsItemDescription">
    <xsl:value-of disable-output-escaping="yes" select="description"/>
  </div>
</div>
</xsl:template>

</xsl:stylesheet>
