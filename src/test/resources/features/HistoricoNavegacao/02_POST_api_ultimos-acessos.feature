#language: pt
#enconding: utf-8

@eficha
Funcionalidade: HistoricoNavegacao - POST /api/ultimos-acessos


  @CT-3261
  Cenario: Verificar criação de dados de acesso (LOG)
    Dado que envio uma requisição "POST" para o endpoint "/api/ultimos-acessos" com os dados:
      | usuarioId          | 6849881                                         |
      | dataAcesso         | 2024-06-20T14:46:58                             |
      | tipoDocumento      | Prontuário                                      |
      | descricaoDocumento | João Paulo Bianchi Beal - Procurador de Justiça |
      | urlDocumento       | /membros/3579212                                |
    Entao devera retornar o status 201
    E a resposta deve incluir os seguintes valores:
      | message | Acesso registrado com sucesso |

  @CT-3265
  Cenario: Verificar inclusão para mesmo usuário e mesma data
    Dado que envio uma requisição "POST" para o endpoint "/api/ultimos-acessos" com os dados:
      | usuarioId          | 6849881                                     |
      | dataAcesso         | 2024-06-20T14:46:58                         |
      | tipoDocumento      | Prontuário                                  |
      | descricaoDocumento | Nilton Exterkoetter - Procurador de Justiça |
      | urlDocumento       | /membros/3051382                            |
    Entao devera retornar o status 201
    E a resposta deve incluir os seguintes valores:
      | message | Acesso registrado com sucesso |

  @CT-3264
  Cenario: Verificar inclusão de mesmo usuário com datas diferentes
    Dado que envio uma requisição "POST" para o endpoint "/api/ultimos-acessos" com os dados:
      | usuarioId          | 6849881                                     |
      | dataAcesso         | 2024-07-20T14:46:58                         |
      | tipoDocumento      | Prontuário                                  |
      | descricaoDocumento | Nilton Exterkoetter - Procurador de Justiça |
      | urlDocumento       | /membros/3051382                            |
    Entao devera retornar o status 201
    E a resposta deve incluir os seguintes valores:
      | message | Acesso registrado com sucesso |

  @CT-3262
  Cenario: Verificar tentativa de inserção com valores inválidos - Data inválida
    Dado que envio uma requisição "POST" para o endpoint "/api/ultimos-acessos" com os dados:
      | usuarioId          | 6849881                                         |
      | dataAcesso         | 2024-06-31T14:46:58.872Z                        |
      | tipoDocumento      | Prontuário                                      |
      | descricaoDocumento | João Paulo Bianchi Beal - Procurador de Justiça |
      | urlDocumento       | /membros/3579212                                |
    Entao devera retornar o status 400
    E a resposta deve incluir os seguintes valores:
      | error | Os dados da requisição são inválidos ou estão ausentes. |