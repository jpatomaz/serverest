#language: pt
#enconding: utf-8

@eficha
Funcionalidade: Elogios - DELETE /api/membros/{membroId}/meritos/elogios/{id}

  @CT-3213
  Cenario: Excluir Elogio
    Dado que envio uma requisição "DELETE" para o endpoint "/api/membros/6849881/meritos/elogios/{idUltimoElogioAdicionado}"
    Entao devera retornar o status 200