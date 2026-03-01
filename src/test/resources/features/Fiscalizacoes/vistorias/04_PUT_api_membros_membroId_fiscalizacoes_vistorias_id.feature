# language: pt
# enconding: utf-8

@eficha @fiscalizacoes
Funcionalidade: Fiscalizaçoes - PUT /api/membros/{membroId}/fiscalizacoes/vistorias/id

  @CT-4048
  Cenario: Verificar a edição de uma fiscalização quando Id de vistorias for valido
    Dado que envio uma requisição "PUT" para o endpoint "/api/membros/3576060/fiscalizacoes/vistorias/{idUltimaFiscalizacao}" com os dados:
      | numeroProcedimento | numeroAleatorio                          |
      | data               | 2024-10-12                               |
      | lotacao            | Lotação - Teste Automação - Alteração    |
      | observacao         | Observação - Teste Automação - Alteração |
    Entao devera retornar o status 200


  @CT-4047
  Cenario:  Verificar a edição de uma fiscalização quando Id de vistorias for invalido
    Dado que envio uma requisição "PUT" para o endpoint "/api/membros/3576060/fiscalizacoes/vistorias/0000" com os dados:
      | numeroProcedimento | numeroAleatorio     |
      | data               | 2023-08-12                   |
      | lotacao            | Lotação - Teste Automação    |
      | observacao         | Observação - Teste Automação |
    Entao devera retornar o status 404

  @SemCT
  Cenario: Verificar tentativa de edição de Fiscalização com dados inválidos - vistorias
    Dado que envio uma requisição "PUT" para o endpoint "/api/membros/3576060/fiscalizacoes/vistorias/736" com os dados:
      | numeroProcedimento | 1111.2222.3333.4444.5555     |
      | data               | 2023-08-12                   |
      | lotacao            | Lotação - Teste Automação    |
      | observacao         | Observação - Teste Automação |
    Entao devera retornar o status 422

  @SemCT
  Cenario: Verificar tentativa de edição de Fiscalização com mesmo "Número de Procedimento" - vistorias
    Dado que envio uma requisição "PUT" para o endpoint "/api/membros/3576060/fiscalizacoes/vistorias/736" com os dados:
      | numeroProcedimento | 123456                       |
      | data               | 2023-08-12                   |
      | lotacao            | Lotação - Teste Automação    |
      | observacao         | Observação - Teste Automação |
    Entao devera retornar o status 422

  @SemCT
  Cenario: Verificar tentativa de edição de Fiscalização sem campo obrigatório - vistorias
    Dado que envio uma requisição "PUT" para o endpoint "/api/membros/3576060/fiscalizacoes/vistorias/736" com os dados:
      | numeroProcedimento | numeroAleatorio              |
      | data               | 2023-08-12                   |
      | lotacao            |                              |
      | observacao         | Observação - Teste Automação |
    Entao devera retornar o status 422