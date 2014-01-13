<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

	<xsl:output method="text"
	            indent="yes"
	            encoding="iso-8859-1"
	            media-type="application/json"
	            doctype-public="-//W3C//DTD HTML 4.0//EN"/>
				
	<xsl:template match="/STYLES">
[
		<xsl:apply-templates select="*"/>
]
	</xsl:template>
		
	<xsl:template match="STYLE">
		{
			"name": "<xsl:value-of select="NAME"/>",
			"category": {
				"name": "<xsl:value-of select="CATEGORY"/>",
				"number": <xsl:value-of select="CATEGORY_NUMBER"/>,
				"letter": "<xsl:value-of select="STYLE_LETTER"/>"
			},
			"type": "<xsl:value-of select="TYPE"/>",
			<xsl:if test="OG_MIN and OG_MAX">
			"OG": {
				"min": <xsl:value-of select="OG_MIN"/>,
				"max": <xsl:value-of select="OG_MAX"/>
			},
			</xsl:if>
			<xsl:if test="FG_MIN and FG_MAX">
			"FG": {
				"min": <xsl:value-of select="FG_MIN"/>,
				"max": <xsl:value-of select="FG_MAX"/>
			},
			</xsl:if>
			<xsl:if test="IBU_MIN and IBU_MAX">
			"IBU": {
				"min": <xsl:value-of select="IBU_MIN"/>,
				"max": <xsl:value-of select="IBU_MAX"/>
			},
			</xsl:if>
			"color": {
			<xsl:choose>
				<xsl:when test="string-length(COLOR_MIN) and string-length(COLOR_MAX)">
				"min": <xsl:value-of select="COLOR_MIN"/>,
				"max": <xsl:value-of select="COLOR_MAX"/>
				</xsl:when>
				<xsl:otherwise>
				"min": <xsl:value-of select="number(COLOR_MIN)"/>
				</xsl:otherwise>
			</xsl:choose>
			},
			<xsl:if test="ABV_MIN and ABV_MAX">
			"ABV": {
				"min": <xsl:value-of select="ABV_MIN"/>,
				"max": <xsl:value-of select="ABV_MAX"/>
			},
			</xsl:if>
			"notes": "<xsl:value-of select="ABV_MAX"/>",
			"version": <xsl:value-of select="VERSION"/>
		}<xsl:if test="position()!=last()">,</xsl:if>
	</xsl:template>

</xsl:stylesheet>
