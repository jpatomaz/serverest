#language: pt
#enconding: utf-8

@eficha @fiscalizacoes
Funcionalidade: Fiscalizaçoes - DELETE /api/membros/{membroId}/fiscalizacoes/correicoes-extraordinarias/id

  @CT-3992
  Cenario: Verificar a exclusão de uma fiscalização quando Id de inspeção for valido
    Dado que envio uma requisição "DELETE" para o endpoint "/api/membros/3576060/fiscalizacoes/inspecoes/{idUltimaFiscalizacao}"
    Entao devera retornar o status 200
    E a resposta deve incluir os seguintes valores:
      | message | Fiscalização excluída com sucesso. |


  @CT-3993
  Cenario: Verificar a exclusão de uma fiscalização quando Id de inspeção for invalido
    Dado que envio uma requisição "DELETE" para o endpoint "/api/membros/3576060/fiscalizacoes/inspecoes/000"
    Entao devera retornar o status 404
    E a resposta deve incluir os seguintes valores:
      | detail | Não foi encontrado fiscalização para o membroId e Id informado |