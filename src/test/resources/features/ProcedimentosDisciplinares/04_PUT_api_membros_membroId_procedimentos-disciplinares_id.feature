# language: pt
# enconding: utf-8

@eficha @procedimentos-disciplinares
Funcionalidade: ProcedimentosDisciplinares - PUT /api/membros/{membroId}/procedimentos-disciplinares/id

  @CT-4268
  Cenario: 200 - Verificar a edição de um procedimento disciplinar
    Dado que envio uma requisição "PUT" para o endpoint "/api/membros/3406660/procedimentos-disciplinares/352" com os dados:
      | numeroProcedimento | numeroAleatorio |
      | tipoProcedimento   | 1               |
      | dataInstauracao    | 2023-01-12      |
      | dataDecisao        | 2024-10-12      |
      | tipoResultado      | 2               |
      | numeroAcordo       | 123456          |
    Entao devera retornar o status 200


  @CT-4269
  Cenario: 404 - Verificar a edição de um procedimento disciplinar com ID invalido
    Dado que envio uma requisição "PUT" para o endpoint "/api/membros/3576060/procedimentos-disciplinares/0000" com os dados:
      | numeroProcedimento | numeroAleatorio |
      | tipoProcedimento   | 1               |
      | dataInstauracao    | 2023-01-12      |
      | dataDecisao        | 2024-10-12      |
      | tipoResultado      | 2               |
      | numeroAcordo       | 123456          |
    Entao devera retornar o status 404
    E a resposta deve incluir os seguintes valores:
      | detail | Procedimento Disciplinar não encontrado |

  @CT-4270
  Cenario: 400 - Verificar a edição de um procedimento disciplinar com dados invalidos
    Dado que envio uma requisição "PUT" para o endpoint "/api/membros/3576060/procedimentos-disciplinares/352" com os dados:
      | numeroProcedimento | numeroAleatorio |
      | tipoProcedimento   | 1               |
      | dataInstauracao    | 2023-00-00      |
      | dataDecisao        | 2024-10-00      |
      | tipoResultado      | 2               |
      | numeroAcordo       | 123456          |
    Entao devera retornar o status 400
    E a resposta deve incluir os seguintes valores:
      | detail | A requisição contém parâmetros inválidos ou está mal formada, resultando na impossibilidade de ser processada. |