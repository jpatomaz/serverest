#language: pt
#enconding: utf-8

@eficha @desempenho
Funcionalidade: Elogios - GET /api/membros/{membroId}/meritos/elogios/{id}

  @CT-3211
  Cenario: Consultar Elogio por ID
    Dado que envio uma requisição "GET" para o endpoint "/api/membros/6849881/meritos/elogios/{idUltimoElogioAdicionado}"
    Entao devera retornar o status 200
    E a resposta deve incluir os seguintes valores:
      | numeroProcedimento | 24680                                            |
      | data               | 2024-03-10                                       |
      | origem             | Automação de Testes                              |
      | enquadramentoLegal | Decreto nº 7.746/2024 - Automação                |
      | resumo             | Registro inserido via automação de testes de API |