#language: pt
#enconding: utf-8

@eficha @desempenho
Funcionalidade: Elogios - PUT /api/membros/{membroId}/meritos/elogios/{id}

  @CT-3210
  Cenario: Editar Elogio
    Dado que envio uma requisição "PUT" para o endpoint "/api/membros/6849881/meritos/elogios/{idUltimoElogioAdicionado}" com os dados:
      | numeroProcedimento | 24680                                            |
      | data               | 2024-03-10                                       |
      | origem             | Automação de Testes - Alteração                  |
      | enquadramentoLegal | Decreto nº 7.746/2012 - Alteração                |
      | resumo             | Registro alterado via automação de testes de API |
    Entao devera retornar o status 200
    E a resposta deve incluir os seguintes valores:
      | numeroProcedimento | 24680                                            |
      | data               | 2024-03-10                                       |
      | origem             | Automação de Testes - Alteração                  |
      | enquadramentoLegal | Decreto nº 7.746/2012 - Alteração                |
      | resumo             | Registro alterado via automação de testes de API |