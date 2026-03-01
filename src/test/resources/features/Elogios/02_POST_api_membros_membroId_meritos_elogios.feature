#language: pt
#enconding: utf-8

@eficha
Funcionalidade: Elogios - POST /api/membros/{membroId}/meritos/elogios

  @CT-3212
  Cenario: Inserir novo registro de Elogio
    Dado que envio uma requisição "POST" para o endpoint "/api/membros/6849881/meritos/elogios" com os dados:
      | numeroProcedimento | 24680                                            |
      | data               | 2024-03-10                                       |
      | origem             | Automação de Testes                              |
      | enquadramentoLegal | Decreto nº 7.746/2024 - Automação                |
      | resumo             | Registro inserido via automação de testes de API |
    Entao devera retornar o status 201
    E a resposta deve incluir os seguintes valores:
      | numeroProcedimento | 24680                                            |
      | data               | 2024-03-10                                       |
      | origem             | Automação de Testes                              |
      | enquadramentoLegal | Decreto nº 7.746/2024 - Automação                |
      | resumo             | Registro inserido via automação de testes de API |