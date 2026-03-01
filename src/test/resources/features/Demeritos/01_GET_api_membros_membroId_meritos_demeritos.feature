#language: pt
#enconding: utf-8

@eficha @demeritos
Funcionalidade: Demeritos - GET /api/membros/{membroId}/meritos/demeritos

  @CT-3214 @desempenho
  Cenario: Listar todos os deméritos
    Dado que envio uma requisição "GET" para o endpoint "/api/membros/6849881/meritos/demeritos"
    Entao devera retornar o status 200
    E a resposta deve incluir os seguintes valores:
      | data | {id=8, membroId=6849881, numeroProcedimento=44556, data=2024-01-12, origem=Gabinete da Presidência, enquadramentoLegal=Lei Complementar nº 101/2000, resumo=Revisão de metas fiscais e orçamento.}      |
    E a resposta deve incluir os seguintes valores:
      | data | {id=11, membroId=6849881, numeroProcedimento=13579, data=2024-07-05, origem=Secretaria de Educação, enquadramentoLegal=Lei nº 13.005/2014, resumo=Estudo de impacto das novas diretrizes educacionais.} |