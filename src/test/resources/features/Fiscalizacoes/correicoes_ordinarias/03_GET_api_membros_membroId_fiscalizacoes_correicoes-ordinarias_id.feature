# language: pt
# enconding: utf-8

@eficha @fiscalizacoes
Funcionalidade: Fiscalizaçoes - GET /api/membros/{membroId}/fiscalizacoes/correicoes-ordinarias/id

  @CT-3978 @desempenho
  Cenario: Verificar retorno de fiscalização quando Id de correiçoes ordinaria for valido
    Dado que envio uma requisição "GET" para o endpoint "/api/membros/6849881/fiscalizacoes/correicoes-ordinarias/53"
    Entao devera retornar o status 200
    E a resposta deve incluir os seguintes valores:
      | id | 53 |


  @CT-3977
  Cenario:  Verificar retorno de fiscalização quando Id de correições ordinária for invalido ou inexistente
    Dado que envio uma requisição "GET" para o endpoint "/api/membros/3404226/fiscalizacoes/correicoes-ordinarias/000"
    Entao devera retornar o status 404
    E a resposta deve incluir os seguintes valores:
      | detail | Nenhuma correição ordinária encontrada. |