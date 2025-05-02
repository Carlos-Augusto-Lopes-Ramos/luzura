# luzura

Luzura Api é uma api desenvolvida para servir de histórico de preço no mercado livre.
<br>

### Instalação
<ol>
  <li>Baixar os arquivos</li>
  <li>Instalar o script LuzuraApi.sql no seu banco de dados mysql</li>
</ol>
<br>

## Utilização

### POST 

caminho: localhost:8080/api/luzura
<br>
{
  "url" : "link do site"
}
<br>

### Retorno

{<br>
  "id" : "id", <br>
  "nome" : "nome", <br>
  "url" : "url", <br>
  "price" : 000, <br>
  "date" : "00/00/0000" <br>
}
