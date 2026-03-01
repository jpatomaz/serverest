#language: pt
#enconding: utf-8

@eficha @us-2389 @relatorios
Funcionalidade: Relatorios - GET /api/relatorios/membros/ficha-funcional/{id}

  @CT-3660
  Cenario: Verificar consulta sem elogio e sem demérito
    Dado que envio uma requisição "GET" para o endpoint "/api/relatorios/membros/ficha-funcional/3291030" com os parâmetros:
      | todos | true |
    Entao devera retornar o status 200
    E a resposta deve incluir os seguintes valores:
      | elogios   | [] |
      | demeritos | [] |

  @CT-3661
  Cenario: Verificar consulta com elogio e sem demérito
    Dado que envio uma requisição "GET" para o endpoint "/api/relatorios/membros/ficha-funcional/2204673" com os parâmetros:
      | todos | true |
    Entao devera retornar o status 200
    E a resposta deve incluir os seguintes valores:
      | elogios   | Testes Sprint 18- 01 |
      | demeritos | []                   |

  @CT-3662
  Cenario: Verificar consulta com 0 Elogio - 1 Demérito
    Dado que envio uma requisição "GET" para o endpoint "/api/relatorios/membros/ficha-funcional/3910334" com os parâmetros:
      | todos | true |
    Entao devera retornar o status 200
    E a resposta deve incluir os seguintes valores:
      | elogios   | []                  |
      | demeritos | Teste Sprint 18- 02 |

  @CT-3663
  Cenario: Verificar consulta com 1 Elogio - 1 Demérito
    Dado que envio uma requisição "GET" para o endpoint "/api/relatorios/membros/ficha-funcional/6850294" com os parâmetros:
      | todos | true |
    Entao devera retornar o status 200
    E a resposta deve incluir os seguintes valores:
      | elogios   | Teste Sprint 18- 03 |
      | demeritos | Teste Sprint 18- 04 |

  @CT-3664 @CT-3973 @desempenho
  Cenario: Verificar consulta com varios Elogios - varios Deméritos - Todos True
    Dado que envio uma requisição "GET" para o endpoint "/api/relatorios/membros/ficha-funcional/6589278" com os parâmetros:
      | todos | true |
    Entao devera retornar o status 200
    E a resposta deve incluir os seguintes valores:
      | elogios | Teste Sprint 18- 06 |
    E a resposta deve incluir os seguintes valores:
      | elogios | Teste Sprint 18- 09 |
    E a resposta deve incluir os seguintes valores:
      | elogios | Teste Sprint 18- 13 |
    E a resposta deve incluir os seguintes valores:
      | demeritos | 9876516 |
    E a resposta deve incluir os seguintes valores:
      | demeritos | 456789 |
    E a resposta deve incluir os seguintes valores:
      | demeritos | 9876516 |

  @CT-3664
  Cenario: Verificar consulta com varios Elogios - varios Deméritos - Elogios True - Demeritos False
    Dado que envio uma requisição "GET" para o endpoint "/api/relatorios/membros/ficha-funcional/6589278" com os parâmetros:
      | elogios | true |
    Entao devera retornar o status 200
    E a resposta deve incluir os seguintes valores:
      | elogios | Teste Sprint 18- 06 |
    E a resposta deve incluir os seguintes valores:
      | elogios | Teste Sprint 18- 09 |
    E a resposta deve incluir os seguintes valores:
      | elogios | Teste Sprint 18- 13 |
    E a resposta deve incluir os seguintes valores:
      | demeritos | [] |

  @CT-3664
  Cenario: Verificar consulta com varios Elogios - varios Deméritos - Elogios True - Demeritos False
    Dado que envio uma requisição "GET" para o endpoint "/api/relatorios/membros/ficha-funcional/6589278" com os parâmetros:
      | demeritos | true |
    Entao devera retornar o status 200
    E a resposta deve incluir os seguintes valores:
      | elogios | [] |
    E a resposta deve incluir os seguintes valores:
      | demeritos | 9876516 |
    E a resposta deve incluir os seguintes valores:
      | demeritos | 456789 |
    E a resposta deve incluir os seguintes valores:
      | demeritos | 9876516 |

  @CT-3664
  Cenario: Verificar consulta com varios Elogios - varios Deméritos - Elogios True - Demeritos False
    Dado que envio uma requisição "GET" para o endpoint "/api/relatorios/membros/ficha-funcional/6589278" com os parâmetros:
      | demeritos | true |
    Entao devera retornar o status 200
    E a resposta deve incluir os seguintes valores:
      | elogios | [] |
    E a resposta deve incluir os seguintes valores:
      | demeritos | 9876516 |
    E a resposta deve incluir os seguintes valores:
      | demeritos | 456789 |
    E a resposta deve incluir os seguintes valores:
      | demeritos | 9876516 |


  @CT-3665 @CT-3974
  Cenario: Verificar requisição com dados inválidos
    Dado que envio uma requisição "GET" para o endpoint "/api/relatorios/membros/ficha-funcional/teste+" com os parâmetros:
      | todos | true |
    Entao devera retornar o status 404
    E a resposta deve incluir os seguintes valores:
      | detail | Funcionário com Matrícula especificada não encontrado ou inativo no SRH. |


  @CT-3666
  Cenario: Verificar requisição com matricula inexistente
    Dado que envio uma requisição "GET" para o endpoint "/api/relatorios/membros/ficha-funcional/12321323" com os parâmetros:
      | todos | true |
    Entao devera retornar o status 404
    E a resposta deve incluir os seguintes valores:
      | detail | Funcionário com Matrícula especificada não encontrado ou inativo no SRH. |