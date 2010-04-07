<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE documentElement [
 <!ENTITY reg "">
 <!ENTITY trade "">
]>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
<xsl:output method="html"/>
<xsl:template match="/">
<html>
<head>
<title>Dungeons &amp; Dragons&trade; Online: Stormreach&trade; - Alerts</title>
<link rel="stylesheet" type="text/css" href="http://ddoeugls.com/News/style.css" />
</head>
<body>
  <div class="launcherAlertsItemsContainer">
  <xsl:apply-templates select="/rss/channel"/>
</div>
</body>
</html>
</xsl:template>

<xsl:template match="/rss/channel">
<xsl:apply-templates select="item"/>
</xsl:template>

<xsl:template match="/rss/channel/item">
<xsl:if test="(category='High') or (category='Fatal')">
    <div class="launcherAlertItemContainer">
  <div class="launcherAlertItemTitle">
    <xsl:value-of disable-output-escaping="yes" select="title"/>
  </div>
  <div class="launcherAlertItemDate">
          <xsl:value-of select='substring(pubDate, 6, 2)'/>-<xsl:value-of select='substring(pubDate, 9, 3)'/>-<xsl:value-of select='substring(pubDate, 13, 4)'/>
    </div>
  <div class="launcherAlertItemDescription">
    <xsl:value-of disable-output-escaping="yes" select="description"/>
  </div>
</div>
</xsl:if>
</xsl:template>


</xsl:stylesheet>
