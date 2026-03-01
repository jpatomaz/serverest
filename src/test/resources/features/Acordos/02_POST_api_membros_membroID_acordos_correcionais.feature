#language: pt
#enconding: utf-8

@eficha
Funcionalidade: AcordosCorrecionais - POST /api/membros/{membroID}/acordos-correcionais

  @CT-4829
  Cenario: Inserir novo registro de acordo correcional
    Dado que envio uma requisição "POST" para o endpoint "/api/membros/2327716/acordos-correcionais" com os dados:
      | numeroAcordo       | 2024/QA                         |
      | dataHomologacao    | 2024-10-22                      |
      | procedimentoOrigem | ACORDO COM RH                   |
      | classe             | RH                              |
      | sumula             | RRECURSOS HUMANOS               |
      | dataArquivamento   | 2024-10-22                      |
      | obrigacao          | REALIZAR ACORDO COM COLABORADOR |

    Entao devera retornar o status 200
    E a resposta deve incluir os seguintes valores:
      | numeroAcordo       | 2024/QA                         |
      | dataHomologacao    | 2024-10-22                      |
      | procedimentoOrigem | ACORDO COM RH                   |
      | classe             | RH                              |
      | sumula             | RRECURSOS HUMANOS               |
      | dataArquivamento   | 2024-10-22                      |
      | obrigacao          | REALIZAR ACORDO COM COLABORADOR |

  @CT-4830
  Cenario: Inserir novo registro de acordo correcional com dados invalidos
    Dado que envio uma requisição "POST" para o endpoint "/api/membros/2327790/acordos-correcionais" com os dados:
      | numeroAcordo       | 2024/QA                         |
      | dataHomologacao    | 2024-10-22                      |
      | procedimentoOrigem | ACORDO COM RH                   |
      | classe             | RH                              |
      | sumula             | RRECURSOS HUMANOS               |
      | dataArquivamento   | 2024-10-22                      |
      | obrigacao          | REALIZAR ACORDO COM COLABORADOR |

    Entao devera retornar o status 404
    E a resposta deve incluir os seguintes valores:
      | detail | Funcionário com Matrícula especificada não encontrado ou inativo no SRH. |