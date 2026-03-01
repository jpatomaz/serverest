# language: pt
# enconding: utf-8

@eficha @us-2784 @fiscalizacoes
Funcionalidade: Fiscalizaçoes - GET /api/membros/{membroId}/fiscalizacoes/vistorias

  @SemCT @desempenho
  Cenario: Verificar retorno de fiscalização quando Id de vistoria for valido
    Dado que envio uma requisição "GET" para o endpoint "/api/membros/6849881/fiscalizacoes/vistorias/56"
    Entao devera retornar o status 200
    E a resposta deve incluir os seguintes valores:
      | id | 56 |

  @CT-3982
  Cenario: Verificar retorno de fiscalização quando Id de vistoria for invalido
    Dado que envio uma requisição "GET" para o endpoint "/api/membros/6849/fiscalizacoes/vistorias/000"
    Entao devera retornar o status 404
    E a resposta deve incluir os seguintes valores:
      | detail | Nenhuma vistoria encontrada. |