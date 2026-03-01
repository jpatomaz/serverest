#language: pt
#enconding: utf-8

@eficha @residencia @desempenho
Funcionalidade: Residencias fora da comarca - GET /api/membro/{membroID}/residencias-fora-comarca/id

  @CT-4901
  Cenario: GET 200 - Verificar a visualização lista de residência
    Dado que envio uma requisição "GET" para o endpoint "/api/membros/3715868/residencias-fora-comarca/53"
    Entao devera retornar o status 200
    Entao devera retornar o status 200
    E a resposta deve incluir os seguintes valores:
      | id                              | 53                 |
      | numeroProcedimento              | 12.3456.78944478-9 |
      | uf                              | SC                 |
      | municipioId                     | 4201604            |
      | comarcaId                       | 10                 |
      | dataInicio                      | 2024-11-01         |
      | status                          | 2                  |
      | dataArquivamento                | 2024-11-20         |
      | resideNaComarcaAposArquivamento | 0                  |


  @CT-4902
  Cenario: GET 404 - Verificar a visualização lista de residência - Dados não encontrados
    Dado que envio uma requisição "GET" para o endpoint "/api/membros/3715868/residencias-fora-comarca/1"
    Entao devera retornar o status 404
    E a resposta deve incluir os seguintes valores:
      | detail | Residência fora da comarca não encontrada. |