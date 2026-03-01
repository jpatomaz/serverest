#language: pt
#enconding: utf-8

@eficha @fiscalizacoes
Funcionalidade: ProcedimentosDisciplinares - GET /api/membros/{membroId}/procedimentos-disciplinares/id

  @CT-4237 @desempenho
  Cenario: 200 - Verificar a exibição de procedimentos-disciplinares
    Dado que envio uma requisição "GET" para o endpoint "/api/membros/3406660/procedimentos-disciplinares/88"
    Entao devera retornar o status 200
    E a resposta deve incluir os seguintes valores:
      | id | 88 |


  @CT-4238
  Cenario: 404 - Verificar a exibição de Procedimentos Disciplinares quando membroId for invalido
    Dado que envio uma requisição "GET" para o endpoint "/api/membros/3406660/procedimentos-disciplinares/000"
    Entao devera retornar o status 404
    E a resposta deve incluir os seguintes valores:
      | detail | Nenhum procedimento disciplinar encontrado. |