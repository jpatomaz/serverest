#language: pt
#enconding: utf-8

@eficha @acordos
Funcionalidade: AcordosCorrecionais - GET /api/membros/{membroID}/acordos-correcionais

  @CT-4842 @desempenho
  Cenario: GET 200 - Verificar lista de acordos correcionais
    Dado que envio uma requisição "GET" para o endpoint "/api/membros/2327716/acordos-correcionais"
    Entao devera retornar o status 200
    E a resposta deve incluir os seguintes valores:
      | data | id=4 |

  @CT-4843 @desempenho
  Cenario: GET 404 - Verificar lista de acordos correcionais com membroID invalido
    Dado que envio uma requisição "GET" para o endpoint "/api/membros/2327789/acordos-correcionais"
    Entao devera retornar o status 404
    E a resposta deve incluir os seguintes valores:
      | detail | Membro não encontrado. |