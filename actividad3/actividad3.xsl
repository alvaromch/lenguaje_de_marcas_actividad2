<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:template match="ite">
        <html>
          <link rel="stylesheet" href="css/estilo.css" />
          <div class="div">
            <head>
                <title>Instituto Edix</title>
                <h2 class="h2"><xsl:value-of select= "@nombre"/></h2>
                  
                  <nav class="a">
                    <a  href="https://institutotecnologico.edix.com" alt="logo_Edix" title="Página de Edix" target="_blank">
                    <img src="imagenes/logo_Edix.jpg"/>
                    </a>
                    <a class="t" href="telefono.html" alt="Telefono" title="Telefono de Edix" target="_blank">
                    <img src="imagenes/llamar.png"/>
                    </a>
                  </nav>
                <br/>
            </head>
          </div>
            <body>
                <div class="profesores">
                  <table border="1">
                    <caption>Profesores</caption>
                        <tr>
                           <th>id</th>
                            <th>Nombre</th>
                        </tr>
                     <xsl:for-each select="profesores/profesor">
                        <tr>
                            <td><xsl:value-of select ="id"/></td>
                            <td><xsl:value-of select ="nombre"/></td>

                        </tr>
                      </xsl:for-each>
                    </table>
                 </div>
                 <div class="ciclos">
                    <table border="1">
                      <caption>Ciclos</caption>
                       
                            <tr>
                                <th>ID</th>
                                <th>Nombre</th>
                                <th>Curso</th>
                                <th>Grado</th>
                            </tr>
                          
                       <xsl:for-each select="/ite/ciclos/ciclo">
                          <tr>
                              <td><xsl:value-of select ="@id"/></td>
                              <td><xsl:value-of select ="nombre"/></td>
                              <td><xsl:value-of select ="grado"/></td>
                              <td><xsl:value-of select ="decretoTitulo/@año"/></td>
                          </tr>
                        </xsl:for-each>
                      </table>
                   </div>
                   <div class ="lista">
                     <h2>Lista de los jefes</h2>
                   <ul>
                     <li>Director
                       <ul>
                        <br/>
                         <li ><xsl:value-of select="director/nombre"/></li>
                         <li><xsl:value-of select="director/despacho"/></li>
                          <br/>
                       </ul>
                     </li>
                     <li>Jefe de Estudios
                       <ul>
                        <br/>
                         <li><xsl:value-of select="jefe_estudios/nombre"/></li>
                         <li><xsl:value-of select="jefe_estudios/despacho"/></li>
                       </ul>
                     </li>
                   </ul>
                   </div>
                 <form action="procesarpeticion.jsp" method="post">
                   <fieldset><legend>Formulario contacto</legend>
                    <div class="divformulario">
                    <label class="celdaetiqueta" for="nombre">Nombre: </label>
                    <input  id="nombre" name="nombre" type="text" placeholder="Escribe tu nombre"/><br/>
                    <br/>
                    <label class="celdaetiquetaedad" for="edad">Edad: </label>
                    <input id="edad" name="edad" type="number" step="1"/><br/>
                    <br/>
                    <label name="curso">Curso: </label><br/>
                    <input checked="" name="curso" type="radio" value="DAM" />DAM <br/>
                    <input name="curso" type="radio" value="DAW"/>DAW <br/>
                    <input name="curso" type="radio" value="ASIR"/>ASIR <br/>
                    <br/>
                    <label for="fecha_nacimiento">Fecha de nacimiento: </label>
                    <input name="fecha_nacimiento" type="date"/><br/>
                    <br/>
                    </div>
                    <div class="divformulario1">
                      <label class="celdaetiqueta" for="email" >Email: </label>
                      <input id="email" name="email" type="email"/><br/>
                      <br/>
                      <label for="telefono">Telefono: </label>
                      <input id="telefono" name="telefono" type="tel"/><br/> 
                      <br/>
                      <label for="texto">Observaciones: </label>
                      <br/>
                      <textarea class="textarearesponsive" id="texto" name="texto" style="resize:none" rows="5" cols="80" 
                      placeholder="Escribe aquí lo que quieras trasnmitirnos"></textarea>
                    </div>
                    <div class="divbotones">
                      <label for="terminos"></label>
                      <input name="terminos" type="submit" value="enviar datos"/><br/>
                      <br/>
                      <input name="borrar" type="reset" value="borrar datos"/>
                    </div>
                  </fieldset>
                 </form>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>