#language: pt
#enconding: utf-8

@eficha @procedimentos-administrativos
Funcionalidade: ProcedimentosAdministrativos - GET /api/membros/{membroId}/procedimentos-administrativos/id

  @CT-4485 @desempenho
  Cenario: 200 - Verificar visualização de procedimentos administrativo com sucesso - Sumário
    Dado que envio uma requisição "GET" para o endpoint "/api/membros/2327716/procedimentos-administrativos/6"
    Entao devera retornar o status 200
    E a resposta deve incluir os seguintes valores:
      | id | 6 |
    E a resposta deve incluir os seguintes valores:
      | tipoProcesso | 3 |

  @CT-4486 @desempenho
  Cenario: 200 - Verificar visualização de procedimentos administrativo com sucesso - Ordinário
    Dado que envio uma requisição "GET" para o endpoint "/api/membros/2327716/procedimentos-administrativos/7"
    Entao devera retornar o status 200
    E a resposta deve incluir os seguintes valores:
      | id | 7 |
    E a resposta deve incluir os seguintes valores:
      | tipoProcesso | 4 |


  @CT-4487 @CT-4488
  Cenario: 404 - Verificar visualização de procedimentos administrativos quando não encontra encontra informação - Sumário e Ordinário
    Dado que envio uma requisição "GET" para o endpoint "/api/membros/2327716/procedimentos-administrativos/1"
    Entao devera retornar o status 404
    E a resposta deve incluir os seguintes valores:
      | detail | Membro ou procedimento não encontrado. |