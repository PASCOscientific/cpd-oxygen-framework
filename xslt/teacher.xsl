<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    exclude-result-prefixes="xs"
    version="2.0">
       
    <!-- Remove elements with @props = 'student' -->
    <xsl:template match="*[contains(@props, 'student')]"/>
    
    <!-- Remove Procedure topics that do not contain questions -->
    <xsl:template match="*[@oid='procedure']//*[contains(@class, ' topic/topic ')][not(.//*[contains(@class, ' learningInteractionBase2-d/lcInteractionBase2 ')])]"/>
    
</xsl:stylesheet>