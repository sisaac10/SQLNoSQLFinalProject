<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    exclude-result-prefixes="xs"
    version="1.0">
    
    <xsl:template match="/">
        <html>
            <body>
                <h2>World Happiness Report Data 2016</h2>
                <hr />
                    <p>I downloaded the 2016 version of the World Happiness Report as a csv file from Kaggle, a website that contains datasets available for download.</p>
                    <p>You can view the kaggle page I downloaded the csv file at this link <a href="https://www.kaggle.com/unsdsn/world-happiness">https://www.kaggle.com/unsdsn/world-happiness</a></p>
                    <p>The World Happiness Report is published by the <a href="http://unsdsn.org/">United Nations Sustainable Development Solutions Network</a></p>
                    <p>The data comes from over 150 countries and the variables measured include: GDP, health/life expectancy, freedom, and trust/government corruption.</p>
                
                    <p>The copyright to these data files belongs to United Nation Sustainable Development Solutions Network</p>
                    <p>Helliwell, J., Layard, R., and Sachs, J. (2016). World Happiness Report 2016, Update (Vol. I). New York: Sustainable</p> 
                    <p>Development Solutions Network.</p> 
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
