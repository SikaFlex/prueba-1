<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0" xmlns:content="http://purl.org/rss/1.0/modules/content/"
  xmlns:dcterms="http://purl.org/dc/terms/"
  xmlns:atom="http://www.w3.org/2005/Atom"
  xmlns:media="http://search.yahoo.com/mrss/"
  xmlns:dc="http://purl.org/dc/elements/1.1/"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:template match="/">
    <html>

      <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1" />
        <link rel="stylesheet" href="Style.css" />
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css"
          rel="stylesheet" />
        <link href="https://getbootstrap.com/docs/5.3/assets/css/docs.css" rel="stylesheet" />
        <title>EL Pais</title>
        <script
          src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
          <link rel="shortcut icon" href="logo/ico.ico" />
      </head>
      <body>
        <header>
          <div class="text-center" >
            <a href="https://elpais.com/">
          <img src="logo/logo.png" alt="" />
        </a>
        </div>
          <xsl:for-each select="rss/channel">
            <h6 class="text-center">
              <xsl:value-of select="description"></xsl:value-of>
            </h6>
            <p>
              <xsl:value-of
                select="lastBuildDate"></xsl:value-of>
            </p>
          </xsl:for-each>
          <nav class="navbar bg-body-tertiary border">
            <div class="container-fluid">
              <a href="https://elpais.com/internacional/" class="navbar-brand">INTERNACIONAL</a>
              <a href="https://elpais.com/opinion/" class="navbar-brand">OPINIÓN</a>
              <a href="https://elpais.com/espana/" class="navbar-brand">ESPAÑA</a>
              <a href="https://elpais.com/economia/" class="navbar-brand">ECONOMÍA</a>
              <a href="https://elpais.com/sociedad/" class="navbar-brand">SOCIEDAD</a>
              <a href="https://elpais.com/educacion/" class="navbar-brand">EDUCACIÓN</a>
              <a href="https://elpais.com/ciencia/" class="navbar-brand">CIENCIA</a>
              <a href="https://elpais.com/salud-y-bienestar/" class="navbar-brand">SALUD</a>
              <a href="https://elpais.com/cultura/" class="navbar-brand">CULTURA</a>
              <a href="https://elpais.com/deportes/" class="navbar-brand">DEPORTES</a>
              <a href="https://elpais.com/television/" class="navbar-brand">TELEVISION</a>
              <a href="https://elpais.com/gente/" class="navbar-brand">GENTE</a>
              <a href="https://elpais.com/eps/" class="navbar-brand">EL PAÍS SEMANAL</a>
            </div>
          </nav>

        </header>

        <xsl:for-each select="rss/channel/item">

          <div class="card d-inline-flex p-3" style="width: 30rem;">
            <a href="{link}">
            <img src="{media:content/@url}" class="card-img-top" alt="Foto de la noticia" />
          </a>
            <div class="card-body">
              <h5 class="card-title">
                <xsl:value-of select="title"></xsl:value-of>
              </h5>
              <p class="card-text">
                <xsl:value-of select="description"></xsl:value-of>
              </p>
            </div>
            <ul class="list-group list-group-flush">
              <li class="list-group-item">
                <xsl:value-of select="pubDate"></xsl:value-of>
              </li>
              <li class="list-group-item">
                <xsl:value-of select="dc:creator"></xsl:value-of>
              </li>
            </ul>
          </div>


        </xsl:for-each>

        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"
          integrity="sha384-oBqDVmMz9ATKxIep9tiCxS/Z9fNfEXiDAYTujMAeBAsjFuCZSmKbSSUnQlmh/jp3"
          crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.min.js"
          integrity="sha384-mQ93GR66B00ZXjt0YO5KlohRA5SY2XofN4zfuZxLkoj1gXtW8ANNCe9d5Y3eG5eD"
          crossorigin="anonymous"></script>
        <script
          src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"
          integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN"
          crossorigin="anonymous"></script>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>