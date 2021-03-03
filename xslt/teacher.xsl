<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    exclude-result-prefixes="xs"
    version="2.0">
    
    <!-- Remove lcOpenQuestion2 elements in Data Collection -->
    <xsl:template match="*[@oid='data-collection']//*[contains(@class, ' learning2-d/lcQuestion2 ')]"/>
    
</xsl:stylesheet>