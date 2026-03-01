#language: pt
#enconding: utf-8

@eficha
Funcionalidade: Elogios - GET /api/membros/{membroId}/meritos/elogios

  @CT-3211 @desempenho
  Cenario: Listar todos os Elogios
    Dado que envio uma requisição "GET" para o endpoint "/api/membros/6849881/meritos/elogios"
    Entao devera retornar o status 200
    E a resposta deve incluir os seguintes valores:
      | data | {id=395, membroId=6849881, numeroProcedimento=24680, data=2024-03-10, origem=Automação de Testes, enquadramentoLegal=Decreto nº 7.746/2024 - Automação, resumo=Registro inserido via automação de testes de API} |