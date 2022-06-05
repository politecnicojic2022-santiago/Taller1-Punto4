<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output version="5.0" method="html" encoding="UTF-8" indent="yes"/>
    <xsl:template match="/listaventas">
        <html>
            <head>
                <meta charset="UTF-8"/>
                <meta name="viewport" content="width=device-width, initial-scale=1"/>
                
                <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous"/>

            </head>
            <body class="bg-light">
                <section>
                    <nav class="navbar bg-success mb-4 py-3">
                        <div class="container-fluid">
                            <span class="navbar-brand mb-0 h1 text-white">Ventas</span>
                        </div>
                    </nav>
                    <section class="container">
                        <section class="container p-4 bg-white rounded">
                            <table class="table table-hover">
                                <thead>
                                    <tr>
                                        <th scope="col">Código</th>
                                        <th scope="col">Importe</th>
                                        <th scope="col">Comprador</th>
                                        <th scope="col">Vendedor</th>
                                        <th scope="col">Fecha</th>
                                    </tr>
                                    <tbody class="table-group-divider">
                                        <xsl:for-each select="venta">
                                            <tr>
                                                <td><xsl:value-of select="@codigo"/></td>
                                                <td><xsl:value-of select="importe"/></td>
                                                <td><xsl:value-of select="comprador"/></td>
                                                <td><xsl:value-of select="vendedor"/></td>
                                                <td><xsl:value-of select="fecha"/></td>
                                            </tr>
                                        </xsl:for-each>
                                    </tbody>
                                </thead>
                            </table>
                        </section>

                    </section>
                </section>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>