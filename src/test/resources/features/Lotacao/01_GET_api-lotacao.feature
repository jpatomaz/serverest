#language: pt
#enconding: utf-8

@eficha @lotacaoo @desempenho
Funcionalidade: Lotacao - GET /api/lotacao


  @CT-3715
  Cenario: 200 - Listar todas os Orgãos Correicionados
#    Dado que envio uma requisição "GET" para o endpoint "/api/lotacao"
    Dado que envio uma requisição "GET" para o endpoint "/api/orgao-correicionado"
    Entao devera retornar o status 200
    E a resposta deve incluir os seguintes valores:
      | data | {nome=Comarca da Capital, tipo=Comarca, items=[01ª PJ da Comarca da Capital, 02ª PJ da Comarca da Capital, 03ª PJ da Comarca da Capital, 04ª PJ da Comarca da Capital, 05ª PJ da Comarca da Capital, 06ª PJ da Comarca da Capital, 07ª PJ da Comarca da Capital, 08ª PJ da Comarca da Capital, 09ª PJ da Comarca da Capital, 10ª PJ da Comarca da Capital, 11ª PJ da Comarca da Capital, 12ª PJ da Comarca da Capital, 13ª PJ da Comarca da Capital, 14ª PJ da Comarca da Capital, 15ª PJ da Comarca da Capital, 16ª PJ da Comarca da Capital, 17ª PJ da Comarca da Capital, 18ª PJ da Comarca da Capital, 19ª PJ da Comarca da Capital, 20ª PJ da Comarca da Capital, 21ª PJ da Comarca da Capital, 22ª PJ da Comarca da Capital, 23ª PJ da Comarca da Capital, 24ª PJ da Comarca da Capital, 25ª PJ da Comarca da Capital, 26ª PJ da Comarca da Capital, 27ª PJ da Comarca da Capital, 28ª PJ da Comarca da Capital, 29ª PJ da Comarca da Capital, 30ª PJ da Comarca da Capital, 31ª PJ da Comarca da Capital, 32ª PJ da Comarca da Capital, 33ª PJ da Comarca da Capital, 34ª PJ da Comarca da Capital, 35ª PJ da Comarca da Capital, 36ª PJ da Comarca da Capital, 37ª PJ da Comarca da Capital, 38ª PJ da Comarca da Capital, 39ª PJ da Comarca da Capital - 1º PJ, 39ª PJ da Comarca da Capital - 2º PJ, 40ª PJ da Comarca da Capital, 41ª PJ da Comarca da Capital, 42ª PJ da Comarca da Capital, 43ª PJ da Comarca da Capital, Especial - 1º Promotor de Justiça da Comarca da Capital, Especial - 3º Promotor de Justiça da Comarca da Capital, Especial - 4º Promotor de Justiça da Comarca da Capital, Especial - 5º Promotor de Justiça da Comarca da Capital, Especial - 6º Promotor de Justiça da Comarca da Capital, Sec PJ Capital Des Eduardo Luz, Sec PJ Capital Ed C Salles, Sec PJ Capital Ed Vintage, Sec PJ Capital Fórum Central, Sec PJ Capital Fórum Continente, Sec PJ Capital Fórum N Ilha, 100ª Zona Eleitoral, 12ª Zona Eleitoral, 13ª Zona Eleitoral]}, {nome=Comarca de Abelardo Luz, tipo=Comarca, items=[PJ da Comarca de Abelardo Luz, Sec PJ de Ab Luz, 71ª Zona Eleitoral]}, {nome=Comarca de Anchieta, tipo=Comarca, items=[PJ da Comarca de Anchieta, Sec PJ de Anchieta]}, {nome=Comarca de Anita Garibaldi, tipo=Comarca, items=[PJ da Comarca de Anita Garibaldi, Sec PJ de Anita Garibaldi, 52ª Zona Eleitoral]}, {nome=Comarca de Araquari, tipo=Comarca, items=[01ª PJ da Comarca de Araquari, 02ª PJ da Comarca de Araquari, Sec PJ de Araquari]} |


  @CT-4456 @CT-4457 @CT-4458 @CT-4459 @CT-4460 @CT-4461
  Esquema do Cenario: 200 - Listar todas os Orgãos Correicionados com filtro
    Dado que envio uma requisição "GET" para o endpoint "/api/orgao-correicionado" com os parâmetros:
      | search | <orgaoCorreicionado> |
    Entao devera retornar o status 200
    Exemplos:
      | orgaoCorreicionado |
      | zona eleitoral     |
      | GEAC               |
      | sec pj             |
      | GAECO              |


  @CT-4462
  Cenario: 404- Verificar tentativa de busca de orgao correicionado não encontrado
    Dado que envio uma requisição "GET" para o endpoint "/api/orgao-correicionado?search=INEXISTENTE" com os parâmetros:
      | search | <orgaoCorreicionado> |
    Entao devera retornar o status 404