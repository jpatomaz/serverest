#language: pt
#enconding: utf-8

@eficha
Funcionalidade: AcordosCorrecionais - DELETE /api/membros/{membroID}/acordos-correcionais/{id}

  @CT-4845 @desempenho
  Cenario: Excluir acordo correcional por ID
    Dado que envio uma requisição "DELETE" para o endpoint "/api/membros/2327716/acordos-correcionais/3"
    Entao devera retornar o status 200

  @CT-4846 @desempenho
  Cenario: Excluir acordo correcional com ID invalido
    Dado que envio uma requisição "DELETE" para o endpoint "/api/membros/2327716/acordos-correcionais/17"
    Entao devera retornar o status 404
    E a resposta deve incluir os seguintes valores:
      | detail | Não foi encontrado acordo correcional para o membroId e Id informado. |


  @CT-4847 @desempenho
  Cenario: Excluir acordo correcional com MembroID inexistente
    Dado que envio uma requisição "DELETE" para o endpoint "/api/membros/2327716/acordos-correcionais/17"
    Entao devera retornar o status 404
    E a resposta deve incluir os seguintes valores:
      | detail | Não foi encontrado acordo correcional para o membroId e Id informado.|

  @desempenho
  Cenario: Excluir acordo correcional com ID inexistente ou MembroID
    Dado que envio uma requisição "DELETE" para o endpoint "/api/membros/2327716/acordos-correcionais/17"
    Entao devera retornar o status 404
    E a resposta deve incluir os seguintes valores:
      | detail | Não foi encontrado acordo correcional para o membroId e Id informado. |