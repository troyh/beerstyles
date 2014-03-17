<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

	<xsl:output method="text"
	            indent="yes"
	            encoding="UTF-8"
	            media-type="application/json"
	            doctype-public="-//W3C//DTD HTML 4.0//EN"/>
				
	<xsl:template match="/styleguide">
[
		<xsl:apply-templates select="*"/>
]
	</xsl:template>
		
	<xsl:template match="revision" />
	<xsl:template match="name" />
	<xsl:template match="notes" />
	<xsl:template match="introduction" />
	
	<xsl:template match="subcategory">
		{
			"name": "<xsl:value-of select="name"/>"
			"category":
				"id": "<xsl:value-of select="@id"/>"
			<xsl:if test="stats/og/low and stats/og/high">
			"OG":
				"min": <xsl:value-of select="stats/og/low"/>
				"max": <xsl:value-of select="stats/og/high"/>
			</xsl:if>
			<xsl:if test="stats/fg/low and stats/fg/high">
			"FG":
				"min": <xsl:value-of select="stats/fg/low"/>
				"max": <xsl:value-of select="stats/fg/high"/>
			</xsl:if>
			<xsl:if test="stats/ibu/low and stats/ibu/high">
			"IBU":
				"min": <xsl:value-of select="stats/ibu/low"/>
				"max": <xsl:value-of select="stats/ibu/high"/>
			</xsl:if>
			<xsl:if test="stats/ibu/low and stats/srm/high">
			"color":
				"min": <xsl:value-of select="stats/srm/low"/>
				"max": <xsl:value-of select="stats/srm/low"/>
			</xsl:if>
			<xsl:if test="stats/ibu/low and stats/abv/high">
			"ABV":
				"min": <xsl:value-of select="stats/abv/low"/>
				"max": <xsl:value-of select="stats/abv/high"/>
			</xsl:if>
			"aroma": """<xsl:value-of select="aroma"/>"""
			"appearance": """<xsl:value-of select="appearance"/>"""
			"flavor": """<xsl:value-of select="flavor"/>"""
			"mouthfeel": """<xsl:value-of select="mouthfeel"/>"""
			"impression": """<xsl:value-of select="impression"/>"""
			"comments": """<xsl:value-of select="comments"/>"""
			"ingredients": """<xsl:value-of select="ingredients"/>"""
			"examples": """<xsl:value-of select="examples"/>"""
		}
	</xsl:template>

</xsl:stylesheet>
