# language: pt
# enconding: utf-8

@eficha @us-2784 @fiscalizacoes
Funcionalidade: Fiscalizaçoes - GET /api/membros/{membroId}/fiscalizacoes/inspecoes

  @CT-3595 @desempenho
  Cenario: Verificar retorno de Inspecoes de um membro com valores válidos
    Dado que envio uma requisição "GET" para o endpoint "/api/membros/6849881/fiscalizacoes/inspecoes"
    Entao devera retornar o status 200
#    E a resposta deve incluir os seguintes valores:
#      | data | {id=55, numeroProcedimento=PROC2024004, data=2024-07-04, lotacao=Rua D, 104, Bairro Gama, Cidade Exemplo, Estado XYZ, CEP 12345-678, Ponto de referência: ao lado do hospital municipal, próximo ao terminal rodoviário., observacao=Verificação completa, nenhuma anormalidade.}, {id=59, numeroProcedimento=PROC2024008, data=2024-07-08, lotacao=Rua H, 108, Bairro Eta, Cidade Exemplo, Estado XYZ, CEP 12345-678, Ponto de referência: próximo ao parque municipal, ao lado do centro cultural., observacao=Tudo em conformidade, sem irregularidades.} |

  @CT-3596
  Cenario: Verificar retorno de Inspecoes de um membro com valores inválidos
    Dado que envio uma requisição "GET" para o endpoint "/api/membros/6849/fiscalizacoes/inspecoes"
    Entao devera retornar o status 404
    E a resposta deve incluir os seguintes valores:
      | detail | Nenhuma inspeção encontrada. |

  @CT-3597
  Cenario: Verificar retorno de Inspecoes quando não há registros
    Dado que envio uma requisição "GET" para o endpoint "/api/membros/3406660/fiscalizacoes/inspecoes"
    Entao devera retornar o status 404
    E a resposta deve incluir os seguintes valores:
      | detail | Nenhuma inspeção encontrada. |