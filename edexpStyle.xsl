<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    exclude-result-prefixes="xs"
    version="1.0">
    
    <xsl:template match="/">
        <html>
            <body>
                <h2>Direct Expenditures on Education as a Percent of GDP by Country</h2>
                <hr />
                
                    <p>I downloaded this dataset as a csv file from Kaggle, a website that contains datasets available for download.</p>
                    <p>You can view the kaggle page I downloaded the csv file at this link<a href="https://www.kaggle.com/mylesoneill/world-university-rankings">https://www.kaggle.com/mylesoneill/world-university-rankings</a></p>
                    <p>This dataset is published by the <a href="https://nces.ed.gov/programs/digest/d14/tables/dt14_605.20.asp">National Center for Education Statistics</a></p>
                    <p>The variables measured pertain to the, “Public and private direct expenditures on education institutions as a percentage of gross domestic product, by level of </p>
                    <p>education and country: Selected years, 1995 through 2011.” ( NCES website, 
                    Digest of Education Statistics <a href="https://nces.ed.gov/programs/digest/d14/tables/dt14_605.20.asp">https://nces.ed.gov/programs/digest/d14/tables/dt14_605.20.asp</a> )</p>
                    
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