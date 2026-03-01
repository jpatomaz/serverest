#language: pt
#enconding: utf-8

@eficha @procedimentos-administrativos
Funcionalidade: ProcedimentosAdministrativos - GET /api/membros/{membroId}/procedimentos-administrativos

  @CT-4473 @CT-4474 @desempenho
  Cenario: GET 200 - Verificar lista de procedimentos administrativos com sucesso - Sumário e Ordinário
    Dado que envio uma requisição "GET" para o endpoint "/api/membros/2327716/procedimentos-administrativos"
    Entao devera retornar o status 200
    E a resposta deve incluir os seguintes valores:
      | data | tipoProcesso=3 |
    E a resposta deve incluir os seguintes valores:
      | data | tipoProcesso=4 |


  @CT-4475 @CT-4476
  Cenario: 404 - Verificar lista de procedimentos administrativos quando não encontra encontra informação - Sumário e Ordinário
    Dado que envio uma requisição "GET" para o endpoint "/api/membros/2327710/procedimentos-administrativos"
    Entao devera retornar o status 404
    E a resposta deve incluir os seguintes valores:
      | detail | Membro não encontrado. |