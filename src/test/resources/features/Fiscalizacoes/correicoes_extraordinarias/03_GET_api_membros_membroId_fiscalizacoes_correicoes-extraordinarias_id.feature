#language: pt
#enconding: utf-8

@eficha @fiscalizacoes
Funcionalidade: Fiscalizaçoes - GET /api/membros/{membroId}/fiscalizacoes/correicoes-extraordinarias/id

  @CT-3976 @desempenho
  Cenario: Verificar retorno de Correições Extraordinárias de um membro com valores válidos
    Dado que envio uma requisição "GET" para o endpoint "/api/membros/6849881/fiscalizacoes/correicoes-extraordinarias/54"
    Entao devera retornar o status 200
    E a resposta deve incluir os seguintes valores:
      | id | 54 |


  @CT-3975
  Cenario: Verificar retorno de fiscalização quando Id de correiçoes extraordinarias for invalido ou inexistente
    Dado que envio uma requisição "GET" para o endpoint "/api/membros/6849881/fiscalizacoes/correicoes-extraordinarias/000"
    Entao devera retornar o status 404
    E a resposta deve incluir os seguintes valores:
      | detail | Nenhuma correição extraordinária encontrada. |