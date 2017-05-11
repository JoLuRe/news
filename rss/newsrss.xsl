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
    <link rel="stylesheet" type="text/css" media='screen and (min-width: 881px)' href='css/newsrssd.css'></link>
    <link rel="stylesheet" type="text/css" media='screen and (max-width: 880px)' href='css/newsrssm.css'></link>
  </head>
  <body>
  <h2>News to keep you in the loop</h2>
  <table>

    <tr>
      <th>Titulo</th>
      <th>Enlace</th>
      <th>Descripción</th>
      <th>Fecha publicación</th>
      <th>Imagen</th>
      <th>Miniatura</th>
      <th>Enlace atom</th>

    </tr>

    <xsl:for-each select="channel/item">
    <tr>
      <td><xsl:value-of select="title"/></td>
      <td><xsl:value-of select="link"/></td>
      <td><xsl:value-of select="description"/></td>
      <td><xsl:value-of select="pubDate"/></td>
      <td><xsl:value-of select="guid"/></td>
      <td><xsl:value-of select="media:thumbnail"/></td>
      <td><xsl:value-of select="atom:link"/></td>

    </tr>
    </xsl:for-each>

  </table>
  </body>
  </html>
</xsl:template>

</xsl:stylesheet>
