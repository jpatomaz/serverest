# language: pt
# enconding: utf-8

@eficha @us-2784 @fiscalizacoes
Funcionalidade: Fiscalizaçoes - GET /api/membros/{membroId}/fiscalizacoes/inspecoes

  @CT-3981 @desempenho
  Cenario: Verificar retorno de Inspecoes de um membro com valores válidos
    Dado que envio uma requisição "GET" para o endpoint "/api/membros/6849881/fiscalizacoes/inspecoes/55"
    Entao devera retornar o status 200
    E a resposta deve incluir os seguintes valores:
      | id | 55 |

  @CT-3979
  Cenario: Verificar retorno de Inspecoes de um membro com valores válidos
    Dado que envio uma requisição "GET" para o endpoint "/api/membros/6849/fiscalizacoes/inspecoes/000"
    Entao devera retornar o status 404
    E a resposta deve incluir os seguintes valores:
      | detail | Nenhuma inspeção encontrada. |

