#language: pt
#enconding: utf-8

@eficha
Funcionalidade: Estagio Probatório - PUT /api/membros/{membroId}/estagio-probatorio


  #TODO Gerar número de procedimento
  Cenario: 200 - Verificar alteração com sucesso de um estágio probatório
    Dado que envio uma requisição "PUT" para o endpoint "/api/membros/1966030/estagio-probatorio" com os dados:
      | numeroProcedimento     | 00.0123.45678441-5            |
      | orientador             | Affonso Ghizzo Neto           |
      | dataExercicio          | 2022-03-25                    |
      | dataVitaliciamento     | 2025-03-20                    |
      | confirmaVitaliciamento | true                          |
      | confirmadoNaCarreira   | false                         |
      | observacao             | Teste observação de alteração |
    Entao devera retornar o status 200
#    E a resposta deve incluir os seguintes valores:
#      | numeroProcedimento     | 00.0123.45678441-2            |
#      | orientador             | Affonso Ghizzo Neto           |
#      | dataExercicio          | 2022-03-25                    |
#      | dataVitaliciamento     | 2025-03-20                    |
#      | confirmaVitaliciamento | true                          |
#      | confirmadoNaCarreira   | true                          |
#      | observacao             | Teste observação de alteração |


  Cenario: 409 - Procedimento já cadastrado.
    Dado que envio uma requisição "PUT" para o endpoint "/api/membros/1966030/estagio-probatorio" com os dados:
      | numeroProcedimento     | 89.3783.72893783-2            |
      | orientador             | Affonso Ghizzo Neto           |
      | dataExercicio          | 2022-01-01                    |
      | dataVitaliciamento     | 2025-01-01                    |
      | confirmaVitaliciamento | true                          |
      | confirmadoNaCarreira   | true                          |
      | observacao             | Teste observação de alteração |
    Entao devera retornar o status 409
    E a resposta deve incluir os seguintes valores:
      | detail | Procedimento já cadastrado. |


  Cenario: 400 - Data de Exercicio maior que a data atual
    Dado que envio uma requisição "PUT" para o endpoint "/api/membros/1966030/estagio-probatorio" com os dados:
      | numeroProcedimento     | "99.3783.72893789-9           |
      | orientador             | Affonso Ghizzo Neto           |
      | dataExercicio          | 2030-01-01                    |
      | dataVitaliciamento     | 2025-01-01                    |
      | confirmaVitaliciamento | true                          |
      | confirmadoNaCarreira   | true                          |
      | observacao             | Teste observação de alteração |
    Entao devera retornar o status 400
    E a resposta deve incluir os seguintes valores:
      | detail | A requisição contém parâmetros inválidos ou está mal formada, resultando na impossibilidade de ser processada. |


  Cenario: 422 - MembroID inválido.
    Dado que envio uma requisição "PUT" para o endpoint "/api/membros/abc0-=0-=-0/estagio-probatorio" com os dados:
      | numeroProcedimento     | 89.3783.72893700-2            |
      | orientador             | Affonso Ghizzo Neto           |
      | dataExercicio          | 2022-01-01                    |
      | dataVitaliciamento     | 2025-01-01                    |
      | confirmaVitaliciamento | true                          |
      | confirmadoNaCarreira   | true                          |
      | observacao             | Teste observação de alteração |
    Entao devera retornar o status 422
    E a resposta deve incluir os seguintes valores:
      | detail | Ocorreram uma ou mais falhas de validação.. |