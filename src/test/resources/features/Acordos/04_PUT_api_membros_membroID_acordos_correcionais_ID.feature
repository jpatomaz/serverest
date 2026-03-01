#language: pt
#enconding: utf-8

@eficha
Funcionalidade: AcordosCorrecionais - PUT /api/membros/{membroID}/acordos-correcionais

  @CT-4826
  Cenario: Editar Acordo correcional
    Dado que envio uma requisição "PUT" para o endpoint "api/membros/2327716/acordos-correcionais/47" com os dados:
      | numeroAcordo       | 2024/QA                         |
      | dataHomologacao    | 2024-10-22                      |
      | procedimentoOrigem | ACORDO COM RH                   |
      | classe             | QA Teste                        |
      | sumula             | QUALITY                         |
      | dataArquivamento   | 2024-10-22                      |
      | obrigacao          | REALIZAR ACORDO COM COLABORADOR |

    Entao devera retornar o status 200
    E a resposta deve incluir os seguintes valores:
      | numeroAcordo       | 2024/QA                         |
      | dataHomologacao    | 2024-10-22                      |
      | procedimentoOrigem | ACORDO COM RH                   |
      | classe             | QA Teste                        |
      | sumula             | QUALITY                         |
      | dataArquivamento   | 2024-10-22                      |
      | obrigacao          | REALIZAR ACORDO COM COLABORADOR |

  @CT-4827
  Cenario: Editar Acordo correcional com ID invalido
    Dado que envio uma requisição "PUT" para o endpoint "api/membros/2327716/acordos-correcionais/000" com os dados:
      | numeroAcordo       | 2024/QA                         |
      | dataHomologacao    | 2024-10-22                      |
      | procedimentoOrigem | ACORDO COM RH                   |
      | classe             | QA Teste                        |
      | sumula             | QUALITY                         |
      | dataArquivamento   | 2024-10-22                      |
      | obrigacao          | REALIZAR ACORDO COM COLABORADOR |

    Entao devera retornar o status 404
    E a resposta deve incluir os seguintes valores:
      | detail | Acordo Correcional não encontrado. |


  @CT-4828
  Cenario: Editar Acordo correcional com membroID invalido
    Dado que envio uma requisição "PUT" para o endpoint "api/membros/2327790/acordos-correcionais/47" com os dados:
      | numeroAcordo       | 2024/QA                         |
      | dataHomologacao    | 2024-10-22                      |
      | procedimentoOrigem | ACORDO COM RH                   |
      | classe             | QA Teste                        |
      | sumula             | QUALITY                         |
      | dataArquivamento   | 2024-10-22                      |
      | obrigacao          | REALIZAR ACORDO COM COLABORADOR |

    Entao devera retornar o status 404
    E a resposta deve incluir os seguintes valores:
      | detail | Acordo Correcional não encontrado. |