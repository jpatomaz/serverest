# language: pt
# enconding: utf-8

@eficha @procedimentos-disciplinares
Funcionalidade: ProcedimentosDisciplinares - POST /api/membros/{membroId}/procedimentos-disciplinares


  @CT-4095
  Esquema do Cenario: 200 - Verificar a inserção de Procedimentos Disciplinares (Reclamação) com sucesso
    Dado que envio uma requisição "POST" para o endpoint "/api/membros/3406660/procedimentos-disciplinares" com os dados:
      | numeroProcedimento | numeroAleatorio      |
      | tipoProcedimento   | 1                    |
      | dataInstauracao    | 2024-08-12           |
      | dataDecisao        | 2024-08-12           |
      | tipoResultado      | <tipoResultado>      |
      | numeroSindEvolucao | <numeroSindEvolucao> |
      | numeroPasEvolucao  | <numeroPasEvolucao>  |
      | numeroPaoEvolucao  | <numeroPaoEvolucao>  |
    Entao devera retornar o status 200
    Exemplos:
      | tipoResultado | numeroSindEvolucao | numeroPasEvolucao | numeroPaoEvolucao |
      | 1             |                    |                   |                   |
      | 2             |                    |                   |                   |
      | 4             | 123456             |                   |                   |
      | 8             |                    | 123456            |                   |
      | 16            |                    |                   | 123456            |
      | 3             |                    |                   |                   |
      | 5             | 123456             |                   |                   |
      | 9             |                    | 123456            |                   |
      | 17            |                    |                   | 123456            |
      | 6             | 123456             |                   |                   |
      | 10            |                    | 123456            |                   |
      | 18            |                    |                   | 123456            |
      | 12            | 123456             | 123456            |                   |
      | 20            | 123456             |                   | 123456            |
      | 24            |                    | 123456            | 123456            |
      | 7             | 123456             |                   |                   |
      | 11            |                    | 123456            |                   |
      | 19            |                    |                   | 123456            |
      | 13            | 123456             | 123456            |                   |
      | 21            | 123456             |                   | 123456            |
      | 25            |                    | 123456            | 123456            |
      | 14            | 123456             | 123456            |                   |
      | 22            | 123456             |                   | 123456            |
      | 26            |                    | 123456            | 123456            |
      | 28            | 123456             | 123456            | 123456            |
      | 15            | 123456             | 123456            |                   |
      | 29            | 123456             | 123456            | 123456            |
      | 27            |                    | 123456            | 123456            |
      | 23            | 123456             |                   | 123456            |
      | 30            | 123456             | 123456            | 123456            |
      | 31            | 123456             | 123456            | 123456            |
      | 0             |                    |                   |                   |


  @CT-4095
  Esquema do Cenario: 200 - Verificar a inserção de Procedimentos Disciplinares (Sindicância) com sucesso
    Dado que envio uma requisição "POST" para o endpoint "/api/membros/3406660/procedimentos-disciplinares" com os dados:
      | numeroProcedimento | numeroAleatorio     |
      | tipoProcedimento   | 2                   |
      | dataInstauracao    | 2024-08-12          |
      | dataDecisao        | 2024-08-12          |
      | numeroPortaria     | 123456              |
      | tipoResultado      | <tipoResultado>     |
      | numeroPasEvolucao  | <numeroPasEvolucao> |
      | numeroPaoEvolucao  | <numeroPaoEvolucao> |
    Entao devera retornar o status 200
    Exemplos:
      | tipoResultado | numeroPasEvolucao | numeroPaoEvolucao |
      | 8             | 123456            |                   |
      | 16            |                   | 123456            |
      | 32            |                   |                   |
      | 24            | 123456            | 123456            |
      | 40            | 123456            |                   |
      | 48            |                   | 123456            |
      | 56            | 123456            | 123456            |
      | 0             |                   |                   |


  @CT-4096
  Cenario: Verificar a inserção de Procedimentos Disciplinares quando membroId for invalido
    Dado que envio uma requisição "POST" para o endpoint "/api/membros/8876766/procedimentos-disciplinares" com os dados:
      | numeroProcedimento | numeroAleatorio |
      | tipoProcedimento   | 1               |
      | dataInstauracao    | 2023-08-12      |
      | dataDecisao        | 2024-08-12      |
      | tipoResultado      | 1               |
      | numeroAcordo       | 123             |
    Entao devera retornar o status 404
    E a resposta deve incluir os seguintes valores:
      | detail | Funcionário com Matrícula especificada não encontrado ou inativo no SRH. |

  @CT-4097
  Cenario: Verificar a inserção de Procedimentos Disciplinares com dados inválidos
    Dado que envio uma requisição "POST" para o endpoint "/api/membros/3576060/procedimentos-disciplinares" com os dados:
      | numeroProcedimento | numeroAleatorio |
      | tipoProcedimento   | 1               |
      | dataInstauracao    | 2024/jun/01     |
      | dataDecisao        | 2024-08-12      |
      | tipoResultado      | 1               |
      | numeroAcordo       | 123             |
    Entao devera retornar o status 400
    E a resposta deve incluir os seguintes valores:
      | detail | A requisição contém parâmetros inválidos ou está mal formada, resultando na impossibilidade de ser processada. |

  @SemCT
  Cenario: Verificar a inserção de Procedimentos Disciplinares sem campo obrigatório preenchido
    Dado que envio uma requisição "POST" para o endpoint "/api/membros/3576060/procedimentos-disciplinares" com os dados:
      | tipoProcedimento | 1          |
      | dataInstauracao  | 2023-08-12 |
      | dataDecisao      | 2024-08-12 |
      | tipoResultado    | 1          |
      | numeroAcordo     | 123        |
    Entao devera retornar o status 422
    E a resposta deve incluir os seguintes valores:
      | errors | O campo Numero Procedimento precisa ser passado. |