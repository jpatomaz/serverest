#language: pt
#enconding: utf-8

@eficha
Funcionalidade: Membros - GET /api/membros/{id}


  @CT-3137 @CT-3145 @CT-3141 @desempenho
  Cenario: Validar o consumo da API do SRH para consulta de membro - Dados básicos
    Dado que envio uma requisição "GET" para o endpoint "/api/membros/6849881"
    Entao devera retornar o status 200
    E a resposta deve incluir os seguintes valores:
      | data | {id=6849881, nome=Andréia Tonin, carteiraIdentidade=1094545603, tituloEleitor=094753280485, dataNascimento=1986-07-20, orgaoExpedidor=SJS/RS, zonaEleitoral=061, sexo=F, cpf=83977511068, secao=0075, naturalidade=Farroupilha, certificadoReservista=null, nacionalidade=BRASILEIRA, estadoCivil=Casada |


  @CT-3139
  Cenario: Verificar resposta da API para quando não encontra membro - Dados básicos
    Dado que envio uma requisição "GET" para o endpoint "/api/membros/12"
    Entao devera retornar o status 404
    E a resposta deve incluir os seguintes valores:
      | detail | Nenhum membro encontrado com o ID fornecido. |


  Cenario: Validar Contato e endereço - Membro somente com 1 endereço - Sem endereço anterior
    Dado que envio uma requisição "GET" para o endpoint "/api/membros/6850421"
    Entao devera retornar o status 200
    E a resposta deve incluir os seguintes valores:
      | data | endereco={residencial={logradouro=Doutor Agripa de Castro Farias, complemento=Não informado, bairro=Coqueiros, cidade=Florianópolis, estado=SC}, anteriores=[]} |

  Cenario: Validar Contato e endereço - Membro somente com 2 endereços - Sem endereço anterior
    Dado que envio uma requisição "GET" para o endpoint "/api/membros/1796232"
    Entao devera retornar o status 200
    E a resposta deve incluir os seguintes valores:
      | data | contato={emailPessoal=basilioeliasdecaro@gmail.com, emailProfissional=bcaro@mpsc.mp.br, telefones=[{tipo=Residência, numero=48-32240036}, {tipo=Celular, numero=(48) 99969-0766}]}, endereco={residencial={logradouro=Presidente Coutinho, complemento=APTO 101, bairro=Centro, cidade=Florianópolis, estado=SC}, anteriores=[{logradouro=R: Presidente Coutinho, 349, Apto. 101 - Fpólis/sc, complemento=null, bairro=Centro, cidade=Florianópolis, estado=SC}]} |

  Cenario: Validar Contato e endereço - Membro somente com 3 endereços
    Dado que envio uma requisição "GET" para o endpoint "/api/membros/3910431"
    Entao devera retornar o status 200
    E a resposta deve incluir os seguintes valores:
      | data | contato={emailPessoal=gpcunha@mpsc.mp.br, emailProfissional=gpcunha@mpsc.mp.br, telefones=[{tipo=Celular, numero=(47) 99654-7678}, {tipo=Celular 2, numero=47996547678}]}, endereco={residencial={logradouro=Aracaju, complemento=1870, bairro=Santo Antonio, cidade=Joinville, estado=SC}, anteriores=[{logradouro=Rua Ernesto Goss, n. 100, complemento=apto 603 - Residencial Siena, bairro=Centro, cidade=Lages, estado=SC}, {logradouro=Rua Aracaju, 1870, complemento=null, bairro=Santo Antônio, cidade=Joinville, estado=SC}]} |

  Cenario: Validar Contato e endereço - Membro somente com 4 endereços
    Dado que envio uma requisição "GET" para o endpoint "/api/membros/1796194"
    Entao devera retornar o status 200
    E a resposta deve incluir os seguintes valores:
      | data | contato={emailPessoal=heloisabdalla@hotmail.com, emailProfissional=hfreire@mpsc.mp.br, telefones=[{tipo=Residência, numero=(48)999823083}, {tipo=Celular, numero=(48) 99982-3083}, {tipo=Outros, numero=(48)999009889}, {tipo=Contato Emergência, numero=(48)999720810}]}, endereco={residencial={logradouro=Wilson Luz, complemento=Apto 401, bairro=Coqueiros, cidade=Florianópolis, estado=SC}, anteriores=[{logradouro=Rua 3800, 241 - Resid. Georges Bizet, complemento=Apto. 1102, bairro=Centro, cidade=Balneário Camboriú, estado=SC}, {logradouro=Rua Waldir Tolentino Rosar, 14, complemento=null, bairro=Centro, cidade=São José, estado=SC}, {logradouro=Rua Wilson Luz, 110 - Ed. Marinas Residence, complemento=Apto. 401, bairro=Coqueiros, cidade=Florianópolis, estado=SC}]} |
