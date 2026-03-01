# language: pt
# enconding: utf-8

@eficha @us-2784 @fiscalizacoes
Funcionalidade: Fiscalizaçoes - GET /api/membros/{membroId}/fiscalizacoes/correicoes-ordinarias

  @CT-3591 @desempenho
  Cenario: Verificar retorno de Correições Ordinárias de um membro com valores válidos
    Dado que envio uma requisição "GET" para o endpoint "/api/membros/6849881/fiscalizacoes/correicoes-ordinarias"
    Entao devera retornar o status 200
#    E a resposta deve incluir os seguintes valores:
#      | data | {id=53, numeroProcedimento=PROC2024002, data=2024-07-02, lotacao=Rua B, 102, Bairro Alfa, Cidade Exemplo, Estado XYZ, CEP 12345-678, observacao=Verificação completa, sem irregularidades encontradas no local., validoPara=Membro}, {id=57, numeroProcedimento=PROC2024006, data=2024-07-06, lotacao=Rua F, 106, Bairro Epsilon, Cidade Exemplo, Estado XYZ, CEP 12345-678, Ponto de referência: em frente à praça principal, ao lado da igreja matriz., observacao=Verificação realizada com sucesso, sem problemas., validoPara=Membro} |

  @CT-3592
  Cenario: Verificar retorno de Correições Ordinárias de um membro com valores inválidos
    Dado que envio uma requisição "GET" para o endpoint "/api/membros/6849/fiscalizacoes/correicoes-ordinarias"
    Entao devera retornar o status 404
    E a resposta deve incluir os seguintes valores:
      | detail | Nenhuma correição ordinária encontrada. |

  @CT-3593
  Cenario: Verificar retorno de Correições Ordinárias quando não há registros
    Dado que envio uma requisição "GET" para o endpoint "/api/membros/3404226/fiscalizacoes/correicoes-ordinarias"
    Entao devera retornar o status 404
    E a resposta deve incluir os seguintes valores:
      | detail | Nenhuma correição ordinária encontrada. |