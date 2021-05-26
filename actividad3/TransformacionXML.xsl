<?xml version="1.0"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
<xsl:output method="xml" version="1.0" encoding="UTF-8" indent="yes"/>
    <xsl:template match="ite">
    <InstitutoEdix>
        <profesorado>
        <xsl:for-each select="profesores/profesor">
            <profesor>
                <xsl:value-of select="nombre"/>
                <xsl:value-of select="id"/>
            </profesor>
        </xsl:for-each>
    </profesorado>
        <director>
            <xsl:attribute name="despacho">
                <xsl:value-of select="director/despacho"></xsl:value-of>
            </xsl:attribute>
            <nombre>
                <xsl:value-of select="director/nombre"/>
            </nombre>
        </director>
        <jefe_estudios>
            <xsl:attribute name="despacho">
                <xsl:value-of select="jefe_estudios/despacho"/>
            </xsl:attribute>
            <nombre>
                <xsl:value-of select="jefe_estudios/nombre"/>
            </nombre>
        </jefe_estudios>
        <ciclos>
            <xsl:for-each select="ciclos/ciclo">
                <id>
                    <xsl:value-of select="@id"/>
                    <xsl:attribute name="decreto_Titulo">
                        <xsl:value-of select="decretoTitulo/@año"></xsl:value-of>
                    </xsl:attribute>
                    <nombre><xsl:value-of select="nombre"/></nombre>
                    <grado><xsl:value-of select="grado"/></grado>
                </id>
            </xsl:for-each>
        </ciclos>
       
    </InstitutoEdix>
</xsl:template>
</xsl:stylesheet>