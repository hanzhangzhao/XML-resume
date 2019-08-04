<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:template match="/">
    <html>
      <head>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous"/>
          <link rel="stylesheet" type="text/css" href="../shared/tma1.css"/>
            <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
            <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
            <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
        <title>TMA1 Part 1</title>
      </head>
      <body>
        <nav class="navbar navbar-default">
          <div class="container-fluid">
            <div class="navbar-header">
              <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar-collapse" aria-expanded="false">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
              </button>
              <a class="navbar-brand" href="../tma1.html">TMA1 Homepage</a>
            </div>

            <div class="collapse navbar-collapse" id="navbar-collapse">
              <ul class="nav navbar-nav">
                <li><a href="#">Part 1</a></li>
                <li><a href="../part2/welcomepage.html">Part 2</a></li>
                <li><a href="../part3/index.html">Part 3</a></li>
                <li><a href="../part4/index.html">Part 4</a></li>
              </ul>
            </div>
          </div>
        </nav>

        <div class="container center">
          <h2>
            <xsl:value-of select="resume/name/firstname"/>
            <xsl:text> </xsl:text>
            <xsl:value-of select="resume/name/lastname"/>
          </h2>
          <ul class="resume">
            <xsl:for-each select="resume">
              <li>
                <xsl:attribute name="style">
                  <xsl:text>text-align: right;</xsl:text>
                </xsl:attribute>
                <p>
                  <xsl:value-of select="address/street"/>
                </p>
                <p>
                  <xsl:value-of select="address/city"/>
                  <xsl:value-of select="address/province"/>
                  <xsl:text>|</xsl:text>
                  <xsl:value-of select="address/zipcode"/>
                </p>
                <p>
                  <xsl:text>Ph: </xsl:text>
                  <xsl:value-of select="contact/phone"/>
                </p>
                <p>
                  <xsl:value-of select="contact/email"/>
                </p>
              </li>
            </xsl:for-each>
          </ul>
          <h3>Education</h3>
          <div class="degrees">
            <ul class="resume">
              <xsl:for-each select="resume/bodypart/education/degree">
                <div class="degree">
                  <div class="school">
                    <li>
                      <xsl:value-of select="./program"/>,
                      <xsl:value-of select="./major"/>
                    </li>
                  </div>
                  <div class="duration">
                    <xsl:value-of select="./duration/startdate"/>
                    <xsl:text> -- </xsl:text>
                    <xsl:value-of select="./duration/enddate"/>
                  </div>
                </div>
                <div class="location">
                  <xsl:for-each select=".">
                    <xsl:value-of select="./university"/>,<xsl:value-of select="./city"/>,<xsl:value-of select="./province"/>
                  </xsl:for-each>
                </div>
              </xsl:for-each>
            </ul>
          </div>
          <h3>Technical Skill</h3>
          <div>
            <ul class="resume">
              <xsl:for-each select="resume/bodypart/skills/skill">
                <li>
                  <span class="skillcat">
                    <xsl:value-of select="@name"/>
                    <xsl:text>: </xsl:text>
                  </span>
                  <span>
                    <xsl:value-of select="."/>
                  </span>
                </li>
              </xsl:for-each>
            </ul>
          </div>
          <h3>Personal Projects</h3>
          <ul class="resume">
            <xsl:for-each select="resume/bodypart/projects/project">
              <li>
                <h4>
                  <xsl:value-of select="./title"/>
                </h4>
              </li>
              <li>
                <xsl:for-each select="./description">
                  <li>
                    <xsl:value-of select="."/>
                  </li>
                </xsl:for-each>
              </li>
            </xsl:for-each>
          </ul>
        </div>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>
