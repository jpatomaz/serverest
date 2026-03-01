#language: pt
#enconding: utf-8

@eficha @relatorios @relatorioEstagioProbatorio @estagioProbatorio
Funcionalidade: Relatorios - GET /api/relatorios/membros/ficha-funcional/{membroId}}?estagioProbatorio=true


  Cenario: Verificar consulta de estágio probatório - confirma_aprovacao = 0 - confirma_vitaliciamento = 0
    Dado que envio uma requisição "GET" para o endpoint "/api/relatorios/membros/ficha-funcional/3910342" com os parâmetros:
      | estagioProbatorio | true |
    Entao devera retornar o status 200
    E a resposta deve incluir os seguintes valores:
      | estagioProbatorio | {dataExercicio=null, dataVitaliciamento=null, confirmadoNaCarreira=false, observacoes=Teste Observacao} |

  Cenario: Verificar consulta de estágio probatório - confirma_aprovacao = 0 - confirma_vitaliciamento = 1
    Dado que envio uma requisição "GET" para o endpoint "/api/relatorios/membros/ficha-funcional/3051463" com os parâmetros:
      | estagioProbatorio | true |
    Entao devera retornar o status 200
    E a resposta deve incluir os seguintes valores:
      | estagioProbatorio | {dataExercicio=null, dataVitaliciamento=null, confirmadoNaCarreira=false, observacoes=Teste Observação do estágio probatório} |

  Cenario: Verificar consulta de estágio probatório - confirma_aprovacao = 1 - confirma_vitaliciamento = 0
    Dado que envio uma requisição "GET" para o endpoint "/api/relatorios/membros/ficha-funcional/2745160" com os parâmetros:
      | estagioProbatorio | true |
    Entao devera retornar o status 200
    E a resposta deve incluir os seguintes valores:
      | estagioProbatorio | {dataExercicio=2024-03-05, dataVitaliciamento=null, confirmadoNaCarreira=true, observacoes=null} |

  Cenario: Verificar consulta de estágio probatório - confirma_aprovacao = 1 - confirma_vitaliciamento = null
    Dado que envio uma requisição "GET" para o endpoint "/api/relatorios/membros/ficha-funcional/3578836" com os parâmetros:
      | estagioProbatorio | true |
    Entao devera retornar o status 200
    E a resposta deve incluir os seguintes valores:
      | estagioProbatorio | {dataExercicio=2024-01-01, dataVitaliciamento=null, confirmadoNaCarreira=true, observacoes=null} |

  Cenario: Verificar consulta de estágio probatório - confirma_aprovacao = 1 - confirma_vitaliciamento = 1
    Dado que envio uma requisição "GET" para o endpoint "/api/relatorios/membros/ficha-funcional/3575926" com os parâmetros:
      | estagioProbatorio | true |
    Entao devera retornar o status 200
    E a resposta deve incluir os seguintes valores:
      | estagioProbatorio | {dataExercicio=2024-01-05, dataVitaliciamento=2026-01-01, confirmadoNaCarreira=true, observacoes=null} |

  Cenario: Verificar consulta de estágio probatório - confirma_aprovacao = null - confirma_vitaliciamento = 0
    Dado que envio uma requisição "GET" para o endpoint "/api/relatorios/membros/ficha-funcional/3581870" com os parâmetros:
      | estagioProbatorio | true |
    Entao devera retornar o status 200
    E a resposta deve incluir os seguintes valores:
      | estagioProbatorio | {dataExercicio=2025-03-05, dataVitaliciamento=null, confirmadoNaCarreira=null, observacoes=null} |

  Cenario: Verificar consulta de estágio probatório - confirma_aprovacao = null - confirma_vitaliciamento = null
    Dado que envio uma requisição "GET" para o endpoint "/api/relatorios/membros/ficha-funcional/3575861" com os parâmetros:
      | estagioProbatorio | true |
    Entao devera retornar o status 200
    E a resposta deve incluir os seguintes valores:
      | estagioProbatorio | {dataExercicio=2025-03-01, dataVitaliciamento=null, confirmadoNaCarreira=null, observacoes=null} |

  Cenario: Verificar consulta de estágio probatório - confirma_aprovacao = null - confirma_vitaliciamento = 1
    Dado que envio uma requisição "GET" para o endpoint "/api/relatorios/membros/ficha-funcional/3120139" com os parâmetros:
      | estagioProbatorio | true |
    Entao devera retornar o status 200
    E a resposta deve incluir os seguintes valores:
      | estagioProbatorio | {dataExercicio=2024-03-05, dataVitaliciamento=2026-01-01, confirmadoNaCarreira=null, observacoes=null} |

  Cenario: Verificar consulta de estágio probatório - ID do Membro inválido
    Dado que envio uma requisição "GET" para o endpoint "/api/relatorios/membros/ficha-funcional/invalido" com os parâmetros:
      | estagioProbatorio | true |
    Entao devera retornar o status 404
    E a resposta deve incluir os seguintes valores:
      | detail | Funcionário com Matrícula especificada não encontrado ou inativo no SRH. |
