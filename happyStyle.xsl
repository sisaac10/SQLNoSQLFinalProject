<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    exclude-result-prefixes="xs"
    version="1.0">
    
    <xsl:template match="/">
        <html>
            <body>
                <h2>World Happiness Report</h2>
               
                    <p>I originally retrieved this data from kaggle.com which can be found at the following</p>
                    <p>link <a href="https://www.kaggle.com/unsdsn/world-happiness">https://www.kaggle.com/unsdsn/world-happiness</a></p>
                
                    <p>The purpose for posting these datasets is strictly for educational reasons.</p>
               
                <table border="1">
                    <tr bgcolor="#3498DB">
                        <th>Country</th>
                        <th>Region</th>
                        <th>Happiness Rank</th>
                        <th>Happiness Score</th>
                        <th>Lower Confidence Interval</th>
                        <th>Upper Confidence Interval</th>
                        <th>Economy GDP Per Capita</th>
                        <th>Family</th>
                        <th>Health Life Expectancy</th>
                        <th>Freedom</th>
                        <th>Trust Government Corruption</th>
                        <th>Generosity</th>
                        <th>Dystopia Residual</th>
                    </tr>
                    <xsl:for-each select="root/row">
                    <tr>
                        <td><xsl:value-of select="Country"/></td>
                        <td><xsl:value-of select="Region"/></td>
                        <td><xsl:value-of select="Happiness_Rank"/></td>
                        <td><xsl:value-of select="Happiness_Score"/></td>
                        <td><xsl:value-of select="Lower_Confidence_Interval"/></td>
                        <td><xsl:value-of select="Upper_Confidence_Interval"/></td>
                        <td><xsl:value-of select="Economy__GDP_per_Capita_"/></td>
                        <td><xsl:value-of select="Family"/></td>
                        <td><xsl:value-of select="Health__Life_Expectancy_"/></td>
                        <td><xsl:value-of select="Freedom"/></td>
                        <td><xsl:value-of select="Trust__Government_Corruption_"/></td>
                        <td><xsl:value-of select="Generosity"/></td>
                        <td><xsl:value-of select="Dystopia_Residual"/></td>
                    </tr>
                </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
    
    
    
</xsl:stylesheet>