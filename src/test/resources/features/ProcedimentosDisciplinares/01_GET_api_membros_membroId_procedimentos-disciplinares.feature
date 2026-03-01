#language: pt
#enconding: utf-8

@eficha @procedimentos-disciplinares
Funcionalidade: ProcedimentosDisciplinares - GET /api/membros/{membroId}/procedimentos-disciplinares

  @CT-4051 @desempenho
  Cenario: Verificar retorno de Procedimentos Disciplinares quando membroId for valido
    Dado que envio uma requisição "GET" para o endpoint "/api/membros/3406660/procedimentos-disciplinares"
    Entao devera retornar o status 200

  @CT-4050
  Cenario: Verificar retorno de Procedimentos Disciplinares quando membroId for invalido
    Dado que envio uma requisição "GET" para o endpoint "/api/membros/666666/procedimentos-disciplinares"
    Entao devera retornar o status 404
    E a resposta deve incluir os seguintes valores:
      | detail | Nenhum procedimento disciplinar encontrada. |