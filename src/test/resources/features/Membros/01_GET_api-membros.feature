#language: pt
#enconding: utf-8

@eficha
Funcionalidade: Membros - GET /api/membros


  @CT-2198 @desempenho
  Cenario: Validar o consumo da API do SRH para lista membros
    Dado que envio uma requisição "GET" para o endpoint "/api/membros"
    Entao devera retornar o status 200
    E a resposta deve incluir os seguintes campos:
      | nome    |
      | cargo   |
      | lotacao |
    E o resultado deve estar ordenado alfabéticamente pelo campo "nome"


  @CT-3142
  Cenario:  Verificar busca de membros COM caracteres especiais
    Dado que envio uma requisição "GET" para o endpoint "/api/membros" com os parâmetros:
      | search | João |
    Entao devera retornar o status 200
    E a resposta deve incluir os seguintes valores:
      | data | João |


  @CT-3143
  Cenario:  Verificar busca de membros SEM caracteres especiais
    Dado que envio uma requisição "GET" para o endpoint "/api/membros" com os parâmetros:
      | search | Joao |
    Entao devera retornar o status 200
    E a resposta deve incluir os seguintes valores:
      | data | João |



