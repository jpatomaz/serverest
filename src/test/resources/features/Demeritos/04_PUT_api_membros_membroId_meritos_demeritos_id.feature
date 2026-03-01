#language: pt
#enconding: utf-8

@eficha
Funcionalidade: Demeritos - PUT /api/membros/{membroId}/meritos/demeritos/{id}

  @CT-3216 @desempenho
  Cenario: Editar Demerito
    Dado que envio uma requisição "PUT" para o endpoint "/api/membros/6849881/meritos/demeritos/{idUltimoDemeritoAdicionado}" com os dados:
      | numeroProcedimento | 24680                                            |
      | data               | 2024-03-10                                       |
      | origem             | Automação de Testes - Alteração                  |
      | enquadramentoLegal | Decreto nº 7.746/2012                            |
      | resumo             | Registro alterado via automação de testes de API |
    Entao devera retornar o status 200
    E a resposta deve incluir os seguintes valores:
      | numeroProcedimento | 24680                                            |
      | data               | 2024-03-10                                       |
      | origem             | Automação de Testes - Alteração                  |
      | enquadramentoLegal | Decreto nº 7.746/2012                            |
      | resumo             | Registro alterado via automação de testes de API |