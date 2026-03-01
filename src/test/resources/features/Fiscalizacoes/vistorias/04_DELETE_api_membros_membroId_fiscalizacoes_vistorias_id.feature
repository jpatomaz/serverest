#language: pt
#enconding: utf-8

@eficha @fiscalizacoes
Funcionalidade: Fiscalizaçoes - DELETE /api/membros/{membroId}/fiscalizacoes/correicoes-extraordinarias/id

  @CT-3994
  Cenario: Verificar a exclusão de uma fiscalização quando Id de vistoria for valido
    Dado que envio uma requisição "DELETE" para o endpoint "/api/membros/3576060/fiscalizacoes/vistorias/{idUltimaFiscalizacao}"
    Entao devera retornar o status 200
    E a resposta deve incluir os seguintes valores:
      | message | Fiscalização excluída com sucesso. |


  @CT-3995
  Cenario: Verificar a exclusão de uma fiscalização quando Id de vistoria for invalido
    Dado que envio uma requisição "DELETE" para o endpoint "/api/membros/3576060/fiscalizacoes/vistorias/000"
    Entao devera retornar o status 404
    E a resposta deve incluir os seguintes valores:
      | detail | Não foi encontrado fiscalização para o membroId e Id informado |