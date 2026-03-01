#language: pt
#enconding: utf-8

@eficha @procedimentos-disciplinares
Funcionalidade: ProcedimentosDisciplinares - GET /api/membros/{membroId}/procedimentos-disciplinares/id

  @CT-4254
  Cenario: 200 - Verificar a exclusão de registros - Procedimentos Disciplinares
    Dado que envio uma requisição "DELETE" para o endpoint "/api/membros/3406660/procedimentos-disciplinares/{idUltimoProcedimentoDisciplinar}"
    Entao devera retornar o status 200
    E a resposta deve incluir os seguintes valores:
      | message | Procedimento Disciplinar  excluído com sucesso. |


  @CT-4255
  Cenario: 404 - Verificar a exclusão de registro invalido - Procedimentos Disciplinares
    Dado que envio uma requisição "DELETE" para o endpoint "/api/membros/6849881/procedimentos-disciplinares/000"
    Entao devera retornar o status 404
    E a resposta deve incluir os seguintes valores:
      | detail | Não foi encontrado procedimento disciplinar para o membroId e Id informado. |