# language: pt
# enconding: utf-8

@eficha @us-2789 @fiscalizacoes
Funcionalidade: Fiscalizaçoes - POST /api/membros/{membroId}/fiscalizacoes/correicoes-extraordinarias

  @CT-3848
  Cenario: Verificar criação de Fiscalização com sucesso - Correições Extraordinárias
    Dado que envio uma requisição "POST" para o endpoint "/api/membros/3576060/fiscalizacoes/correicoes-extraordinarias" com os dados:
      | numeroProcedimento | numeroAleatorio              |
      | data               | 2023-08-12                   |
      | lotacao            | Lotação - Teste Automação    |
      | observacao         | Observação - Teste Automação |
    Entao devera retornar o status 200

  @CT-3849
  Cenario: Verificar tentativa de criação de Fiscalização com dados inválidos - Correições Extraordinárias
    Dado que envio uma requisição "POST" para o endpoint "/api/membros/3576060/fiscalizacoes/correicoes-extraordinarias" com os dados:
      | numeroProcedimento | 1111.2222.3333.4444.5555     |
      | data               | 2023-08-12                   |
      | lotacao            | Lotação - Teste Automação    |
      | observacao         | Observação - Teste Automação |
    Entao devera retornar o status 422

  @CT-3852
  Cenario: Verificar tentativa de criação de Fiscalização com mesmo "Número de Procedimento" - Correições Extraordinárias
    Dado que envio uma requisição "POST" para o endpoint "/api/membros/3576060/fiscalizacoes/correicoes-extraordinarias" com os dados:
      | numeroProcedimento | 123456                       |
      | data               | 2023-08-12                   |
      | lotacao            | Lotação - Teste Automação    |
      | observacao         | Observação - Teste Automação |
    Entao devera retornar o status 422

  @CT-3854
  Cenario: Verificar tentativa de criação de Fiscalização sem campos obrigatório - Correições Extraordinárias
    Dado que envio uma requisição "POST" para o endpoint "/api/membros/3576060/fiscalizacoes/correicoes-extraordinarias" com os dados:
      | numeroProcedimento | numeroAleatorio              |
      | data               | 2023-08-12                   |
      | lotacao            |                              |
      | observacao         | Observação - Teste Automação |
    Entao devera retornar o status 422