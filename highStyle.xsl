<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    exclude-result-prefixes="xs"
    version="1.0">
    
    
    <xsl:template match="/">
        <html>
            <body>
                <h2>Times Higher Education World University Rankings 2011 - 2016</h2>
                <hr />
                
                <p>I downloaded this dataset as a csv file from Kaggle, a website that contains datasets available for download.</p>
                <p>You can view the kaggle page I downloaded the csv file at this link <a href="https://www.kaggle.com/mylesoneill/world-university-rankings">https://www.kaggle.com/mylesoneill/world-university-rankings</a></p>
                <p>This dataset is published by the <a href="https://www.timeshighereducation.com/world-university-rankings">Times Higher Education World University Rankings</a></p>
                <p>This list of the world’s top ranked universities measures variables including: teaching, research, and student to staff ratio.</p>
                    
                <p>The copyright to these data files belongs to Times Higher Education</p>
                <p>The purpose for posting these datasets is strictly for educational reasons.</p>
               
                <table border="1">
                    <tr bgcolor="#3498DB">
                        <th>World Rank</th>
                        <th>University</th>
                        <th>Country</th>
                        <th>Teaching</th>
                        <th>International</th>
                        <th>Research</th>
                        <th>Citations</th>
                        <th>Income</th>
                        <th>Total Score</th>
                        <th>Number of Students</th>
                        <th>Student to Staff Ratio</th>
                        <th>International Students</th>
                        <th>Female to Male Ratio</th>
                        <th>Year</th>
                    </tr>
                    <xsl:for-each select="root/row">
                        <tr>
                            <td><xsl:value-of select="world_rank"/></td>
                            <td><xsl:value-of select="university_name"/></td>
                            <td><xsl:value-of select="country"/></td>
                            <td><xsl:value-of select="teaching"/></td>
                            <td><xsl:value-of select="international"/></td>
                            <td><xsl:value-of select="research"/></td>
                            <td><xsl:value-of select="citations"/></td>
                            <td><xsl:value-of select="income"/></td>
                            <td><xsl:value-of select="total_score"/></td>
                            <td><xsl:value-of select="num_students"/></td>
                            <td><xsl:value-of select="student_staff_ratio"/></td>
                            <td><xsl:value-of select="international_students"/></td>
                            <td><xsl:value-of select="female_male_ratio"/></td>
                            <td><xsl:value-of select="year"/></td>
                        </tr>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
    
</xsl:stylesheet>
