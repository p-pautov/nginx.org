<?xml version="1.0" encoding="utf-8"?>
<!--
  Copyright (C) Igor Sysoev
  Copyright (C) Nginx, Inc.
  -->

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

<xsl:template name="style"><xsl:param name="lang"/>

    <style type="text/css"><xsl:value-of select=" normalize-space('
        body              { background:     white;
                            color:          black;
                            font-family:    Georgia, serif;
                            margin:         0;
                            padding:        .5em .5em .5em 1.5em; }
        p                 { text-align:     justify; }
        table.news p      { margin-top:     0; }
        table.news td     { vertical-align: baseline; }
        table.news .date  { text-align:     right;
                            padding-right:  0.5em;
                            white-space:    nowrap; }
        table.donors td   { vertical-align: baseline; }
        table.donors li   { text-align:     left; }
        div.directive, #banner {
                            background:     #F2F2F2;
                            margin:         1em 0 1em -1em;
                            padding:        .7em .7em .7em 1em; }
        div.directive     { border-top:     2px solid #DDD; }
        div.directive th  { padding-left:   0;
                            padding-right:  .5em;
                            vertical-align: baseline;
                            text-align:     left;
                            font-weight:    normal; }
        div.directive td  { vertical-align: baseline; }
        div.directive pre { padding:        0;
                            margin:         0; }
        div.directive p   { margin:         .5em 0 0 .1em;
                            font-size:      .8em; }
        #banner           { margin:         0 0 0 -1em; }
        a.notrans         { color:          gray;
                            text-decoration:none; }
        span.initial      { font-size:      200%;
                            float:          left;
                            padding-right:  10pt;}
        ul, ol            { margin:         .5em 0 1em 1em;
                            padding:        0 .5em; }
        ol                { list-style-position: inside; }
        li                { text-align:     justify;
                            padding:        .5em 0 0 1px; }
        .compact li       { padding-top:    0; }
        dl                { margin:         .5em 0 1em 0; }
        dt                { margin:         .5em 0; }
        .compact dt       { margin-bottom:  .2em; }
        dd                { margin-left:    1.5em;
                            padding-left:   1px;
                            text-align:     justify; }
        td.list           { background:     #F2F2F2; }
        blockquote        { margin:         1em 0 1em 1em;
                            padding:        .5em; }
        li blockquote, dd blockquote
                          { margin:         .7em 0; }
        blockquote.note   { border:         1px dotted #999;
                            text-align:     justify; }
        blockquote.example {
                            border-left:    1px solid #BBB; }
        blockquote.example pre {
                            padding:        0;
                            margin:         0; }
        sup               { font-size:      50%; }
        ') "/>

    <xsl:if test="$lang = 'he'">
        <xsl:value-of select=" normalize-space('
        pre               { text-align:     left;
                            direction:      ltr; }
        code              { direction:      ltr;
                            unicode-bidi:   embed; }
        .ltr              { direction:      ltr;
                            unicode-bidi:   embed; }
        ') "/>
    </xsl:if>

    <xsl:if test="$lang = 'cn'">
        <xsl:value-of select=" normalize-space('
        p                 { text-align:     left; }
        li                { text-align:     left; }
        dd                { text-align:     left; }
        blockquote.note   { text-align:     left; }
        ') "/>
    </xsl:if>

    </style>
</xsl:template>

</xsl:stylesheet>
