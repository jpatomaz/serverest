#language: pt
#enconding: utf-8

@eficha
Funcionalidade: HistoricoNavegacao - GET /api/ultimos-acessos


  @CT-3109 @desempenho
  Cenario: Verificar criação de dados de acesso (LOG)
    Dado que envio uma requisição "GET" para o endpoint "/api/ultimos-acessos" com os parâmetros:
      | usuarioId | 6849881 |
    Entao devera retornar o status 200


  @CT-3110
  Cenario: Verificar tentativa de busca na API com id inexistente
    Dado que envio uma requisição "GET" para o endpoint "/api/ultimos-acessos" com os parâmetros:
      | usuarioId | 123456 |
    Entao devera retornar o status 404