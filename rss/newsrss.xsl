<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
  <html>
  <head>
<!--    
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
-->
<!--    <link rel="stylesheet" type="text/css" media='screen and (min-width: 961px)' href='../css/rssd.css'></link>
    <link rel="stylesheet" type="text/css" media='screen and (max-width: 960px)' href='../css/rssm.css'></link>   -->
    <link rel="stylesheet" type="text/css" media='screen and (min-width: 961px)' href='css/rssd.css'></link>
    <link rel="stylesheet" type="text/css" media='screen and (max-width: 960px)' href='css/rssm.css'></link>
  </head>
  <body>
  <h2>News to keep you in the loop</h2>
  <table>

    <tr>
      <th>Title</th>
      <th>Link</th>
      <th>Description</th>
      <th>Image</th>
      <th>Publish date</th>
    </tr>

    <xsl:for-each select="news/new">
    <tr>
      <td><xsl:value-of select="title"/></td>
      <td><xsl:value-of select="link"/></td>
      <td><xsl:value-of select="description"/></td>
      <td><xsl:value-of select="image"/></td>
      <td><xsl:value-of select="pubdate"/></td>
    </tr>
    </xsl:for-each>

  </table>
  </body>
  </html>
</xsl:template>

</xsl:stylesheet>
