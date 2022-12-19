<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
  <html>
    <body>
      <h2>Schools Data</h2>
      <table border="1">
        <tr>
          <th>
            School Name
          </th>
          <th>
            Year Established
          </th>
          <th>
           Students Number
          </th>
          <th>
            Teachers Number
          </th>
          <th>
            Fees P/M
          </th>
        </tr>
 <xsl:for-each select="Schools/School">
    <xsl:sort select="name"/>
    <xsl:if test="fees &gt; 3000">
    <tr>
      <td><xsl:value-of select="name"/></td>
      <td><xsl:value-of select="estab"/></td>
      <td><xsl:value-of select="studentsnum"/></td>
      <td><xsl:value-of select="numteachers"/></td>
      <xsl:choose>
        <xsl:when test="fees &gt; 6000">
          <td bgcolor="#ff00ff">
          <xsl:value-of select="fees"/></td>
        </xsl:when>
        <xsl:otherwise>
          <td bgcolor="green"><xsl:value-of select="fees"/></td>
        </xsl:otherwise>
      </xsl:choose>
    </tr>
  </xsl:if>
</xsl:for-each>
      </table>
    </body>
  </html>
</xsl:template>
</xsl:stylesheet>
