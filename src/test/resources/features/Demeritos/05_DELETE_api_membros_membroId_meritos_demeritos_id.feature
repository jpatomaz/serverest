#language: pt
#enconding: utf-8

@eficha
Funcionalidade: Demeritos - DELETE /api/membros/{membroId}/meritos/demeritos/{id}

  @CT-3217
  Cenario: Excluir Demerito
    Dado que envio uma requisição "DELETE" para o endpoint "/api/membros/6849881/meritos/demeritos/{idUltimoDemeritoAdicionado}"
    Entao devera retornar o status 200