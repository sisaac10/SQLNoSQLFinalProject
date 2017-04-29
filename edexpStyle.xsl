<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    exclude-result-prefixes="xs"
    version="1.0">
    
    <xsl:template match="/">
        <html>
            <body>
                <h2>Education Expenditure</h2>
                
                    <p>I originally retrieved this data from kaggle.com which can be found at the following</p>
                    <p>link <a href="https://www.kaggle.com/mylesoneill/world-university-rankings">https://www.kaggle.com/mylesoneill/world-university-rankings</a></p>
                
                    <p>The purpose for posting these datasets is strictly for educational reasons.</p>
                
                <table border="1">
                    <tr bgcolor="#3498DB">
                        <th>Country</th>
                        <th>Institution Type</th>
                        <th>Direct Expenditure Type</th>
                        <th>Year 1995</th>
                        <th>Year 2000</th>
                        <th>Year 2005</th>
                        <th>Year 2009</th>
                        <th>Year 2010</th>
                        <th>Year 2011</th>
                    </tr>
                    <xsl:for-each select="root/row">
                        <tr>
                            <td><xsl:value-of select="country"/></td>
                            <td><xsl:value-of select="institute_type"/></td>
                            <td><xsl:value-of select="direct_expenditure_type"/></td>
                            <td><xsl:value-of select="Year1995"/></td>
                            <td><xsl:value-of select="Year2000"/></td>
                            <td><xsl:value-of select="Year2005"/></td>
                            <td><xsl:value-of select="Year2009"/></td>
                            <td><xsl:value-of select="Year2010"/></td>
                            <td><xsl:value-of select="Year2011"/></td>
                        </tr>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
    
    
</xsl:stylesheet>