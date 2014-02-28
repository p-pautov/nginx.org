<?xml version="1.0" encoding="utf-8"?>
<!--
  Copyright (C) Igor Sysoev
  Copyright (C) Nginx, Inc.
  -->

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

<xsl:output method="html" version="4.0" indent="no" encoding="utf-8"/>

<xsl:strip-space elements="*"/>

<!--
  .. a current directory of a XSLT script is where the script is stored,
  .. but not where XSLT processor has been started to run the script
  -->
<xsl:param select="'../xml'" name="XML"/>
<xsl:param name="YEAR"/>
<xsl:param name="TRANS"/>

<xsl:variable select="/error/@link" name="LINK"/>
<xsl:variable select="/error/@lang" name="LANG"/>

<xsl:include href="dirname.xslt"/>
<xsl:include href="menu.xslt"/>
<xsl:include href="ga.xslt"/>


<xsl:template match="/error">
    <html><head><title> <xsl:value-of select="@name"/> </title>

    <style type="text/css"><xsl:value-of select=" normalize-space('
        body  { font-family:  Georgia, serif; }
        ') "/>
    </style>

    <xsl:call-template name="ga"/></head>

    <body>
    <table width="100%">
    <tr>
        <td width="70%"><center><h1> <xsl:value-of select="@name"/> </h1></center></td>
        <td rowspan="2" align="right" valign="top">
            <img src="/nginx.gif" alt="nginx"/><br/>

            <br/>
            <br/>

            <xsl:apply-templates select="document(concat($XML, '/menu.xml'))
                         /menus/menu[@lang = current()/@lang]/item"/>
        </td>
    </tr>
    </table>
    </body>
    </html>
</xsl:template>

</xsl:stylesheet>
