#language: pt
#enconding: utf-8

@eficha @fiscalizacoes
Funcionalidade: Fiscalizaçoes - DELETE /api/membros/{membroId}/fiscalizacoes/correicoes-extraordinarias/id

  @CT-3989
  Cenario: Verificar a exclusão de uma fiscalização quando Id de correições extraordinárias for valido
    Dado que envio uma requisição "DELETE" para o endpoint "/api/membros/3576060/fiscalizacoes/correicoes-extraordinarias/{idUltimaFiscalizacao}"
    Entao devera retornar o status 200
    E a resposta deve incluir os seguintes valores:
      | message | Fiscalização excluída com sucesso. |


  @CT-3988
  Cenario: Verificar a exclusão de uma fiscalização quando Id de correições extraordinárias for invalido
    Dado que envio uma requisição "DELETE" para o endpoint "/api/membros/6849881/fiscalizacoes/correicoes-extraordinarias/000"
    Entao devera retornar o status 404
    E a resposta deve incluir os seguintes valores:
      | detail | Não foi encontrado fiscalização para o membroId e Id informado |