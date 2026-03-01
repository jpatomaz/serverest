# language: pt
# enconding: utf-8

@eficha @us-2784 @fiscalizacoes
Funcionalidade: Fiscalizaçoes - GET /api/membros/{membroId}/fiscalizacoes/vistorias

  @CT-3599 @desempenho
  Cenario: Verificar retorno de Vistorias de um membro com valores válidos
    Dado que envio uma requisição "GET" para o endpoint "/api/membros/6849881/fiscalizacoes/vistorias"
    Entao devera retornar o status 200
#    E a resposta deve incluir os seguintes valores:
#      | data | {id=56, numeroProcedimento=PROC2024005, data=2024-07-05, lotacao=Rua E, 105, Bairro Delta, Cidade Exemplo, Estado XYZ, CEP 12345-678, Ponto de referência: próximo à escola estadual, em frente ao mercado popular., observacao=Anomalias detectadas, notificações emitidas.}, {id=60, numeroProcedimento=PROC2024009, data=2024-07-09, lotacao=Rua I, 109, Bairro Theta, Cidade Exemplo, Estado XYZ, CEP 12345-678, Ponto de referência: próximo à universidade federal, ao lado do restaurante popular., observacao=Problemas encontrados e relatados.} |

  @CT-3600
  Cenario: Verificar retorno de Vistorias de um membro com valores inválidos
    Dado que envio uma requisição "GET" para o endpoint "/api/membros/6849/fiscalizacoes/vistorias"
    Entao devera retornar o status 404
    E a resposta deve incluir os seguintes valores:
      | detail | Nenhuma vistoria encontrada. |

  @CT-3601
  Cenario: Verificar retorno de Vistorias quando não há registros
    Dado que envio uma requisição "GET" para o endpoint "/api/membros/3406660/fiscalizacoes/vistorias"
    Entao devera retornar o status 404
    E a resposta deve incluir os seguintes valores:
      | detail | Nenhuma vistoria encontrada. |