#language: pt
#enconding: utf-8

@eficha @us-2784 @fiscalizacoes
Funcionalidade: Fiscalizaçoes - GET /api/membros/{membroId}/fiscalizacoes/correicoes-extraordinarias

  @CT-3587 @desempenho
  Cenario: Verificar retorno de Correições Extraordinárias de um membro com valores inválidos
    Dado que envio uma requisição "GET" para o endpoint "/api/membros/6849881/fiscalizacoes/correicoes-extraordinarias"
    Entao devera retornar o status 200
    E a resposta deve incluir os seguintes valores:
      | data | {id=62, numeroProcedimento=97.5487.03824888-3, data=2024-07-11, lotacao=Rua K, 111, Bairro Kappa, Cidade Exemplo, Estado XYZ, CEP 12345-678, Ponto de referência: próximo ao estádio municipal, ao lado da academia ao ar livre., observacao=Problemas menores encontrados, ação corretiva tomada.} |

  @CT-3588
  Cenario: Verificar retorno de Correições Extraordinárias de um membro com valores válidos
    Dado que envio uma requisição "GET" para o endpoint "/api/membros/6849/fiscalizacoes/correicoes-extraordinarias"
    Entao devera retornar o status 404
    E a resposta deve incluir os seguintes valores:
      | detail | Nenhuma correição extraordinária encontrada. |

  @CT-3589
  Cenario: Verificar retorno de Correições Extraordinárias quando não há registros
    Dado que envio uma requisição "GET" para o endpoint "/api/membros/3406660/fiscalizacoes/correicoes-extraordinarias"
    Entao devera retornar o status 404
    E a resposta deve incluir os seguintes valores:
      | detail | Nenhuma correição extraordinária encontrada. |