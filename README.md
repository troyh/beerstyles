Beer styles guidelines in machine-readable formats:

# Brewer's Association Styles

BA2011-final.xml: An XML version of the 2011 [Brewer's Association Style Guide](http://www.brewersassociation.org/pages/business-tools/publications/beer-style-guidelines) that was [hand-entered by Jean-Luc](http://www.beersmith.com/forum/index.php?topic=1125.15)

BA2json.xsl: An XSLT that transforms the BA XML file into a [JSON](http://json.org) format.

# BJCP Styles

The [BJCP Styles Guide](http://www.bjcp.org/stylecenter.php) is already [published in XML](http://www.bjcp.org/docs/xmlstyleguide.zip).

# GABF Styles

# HOW TO

    xmlstarlet tr BA2coffee.xsl BA2011-final.xml | coffee -b -c -s --no-header > BA2011-final.json
	