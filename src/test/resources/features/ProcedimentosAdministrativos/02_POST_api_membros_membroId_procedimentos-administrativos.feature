# language: pt
# enconding: utf-8

@eficha @procedimentos-administrativos @inserir_procedimentos-administrativos @US-3248
Funcionalidade: ProcedimentosAdministrativos - POST /api/membros/{membroId}/procedimentos-administrativos


  @CT-4665
  Esquema do Cenario: Inserir Procedimentos Administrativos com diferentes Tipos de Resultado (Ordinário)
    Dado que envio uma requisição "POST" para o endpoint "/api/membros/3575250/procedimentos-administrativos" com os dados:
      | tipoProcesso          | 4                   |
      | numeroProcesso        | 5434543555          |
      | dataInstauracao       | 2024-10-10          |
      | numeroPortaria        | 123                 |
      | descritivoCapitulacao | Automação de Testes |
      | dataDecisao           | 2024-10-10          |
      | tipoResultado         | <tipoResultado>     |
      | numeroDias            | 1                   |
      | parteDispositiva      |                     |
      | observacoes           |                     |
      | numeroAcordo          |                     |
      | dataTransito          |                     |
      | houveRecurso          | false               |
      | houveReexame          | false               |
      | houveAlteracao        | false               |
    Entao devera retornar o status 200
    Exemplos: Tipos de Resultados
      | tipoResultado |
      | 0             |
      | 1             |
      | 2             |
      | 3             |
      | 16            |
      | 17            |
      | 18            |
      | 19            |
      | 32            |
      | 33            |
      | 34            |
      | 35            |
      | 48            |
      | 49            |
      | 50            |
      | 51            |
      | 64            |
      | 65            |
      | 66            |
      | 67            |
      | 80            |
      | 81            |
      | 82            |
      | 83            |
      | 96            |
      | 97            |
      | 98            |
      | 99            |
      | 112           |
      | 113           |
      | 114           |
      | 115           |
      | 128           |
      | 129           |
      | 130           |
      | 131           |
      | 144           |
      | 145           |
      | 146           |
      | 147           |
      | 160           |
      | 161           |
      | 162           |
      | 163           |
      | 176           |
      | 177           |
      | 178           |
      | 179           |
      | 192           |
      | 193           |
      | 194           |
      | 195           |
      | 208           |
      | 209           |
      | 210           |
      | 211           |
      | 224           |
      | 225           |
      | 226           |
      | 227           |
      | 240           |
      | 241           |
      | 242           |
      | 243           |


  @CT-4664
  Esquema do Cenario: Inserir Procedimentos Administrativos com diferentes Tipos de Resultado (Sumária)
    Dado que envio uma requisição "POST" para o endpoint "/api/membros/3575250/procedimentos-administrativos" com os dados:
      | tipoProcesso          | 3                   |
      | numeroProcesso        | 5434543555          |
      | dataInstauracao       | 2024-10-10          |
      | numeroPortaria        | 123                 |
      | descritivoCapitulacao | Automação de Testes |
      | dataDecisao           | 2024-10-10          |
      | tipoResultado         | <tipoResultado>     |
      | numeroDias            | 1                   |
      | parteDispositiva      |                     |
      | observacoes           |                     |
      | numeroAcordo          |                     |
      | dataTransito          |                     |
      | houveRecurso          | false               |
      | houveReexame          | false               |
      | houveAlteracao        | false               |
    Entao devera retornar o status 200
    Exemplos: Tipos de Resultados
      | tipoResultado |
      | 0             |
      | 1             |
      | 2             |
      | 3             |
      | 4             |
      | 5             |
      | 6             |
      | 7             |
      | 8             |
      | 9             |
      | 10            |
      | 11            |
      | 12            |
      | 13            |
      | 14            |
      | 15            |
      | 16            |
      | 17            |
      | 18            |
      | 19            |
      | 20            |
      | 21            |
      | 22            |
      | 23            |
      | 24            |
      | 25            |
      | 26            |
      | 27            |
      | 28            |
      | 29            |
      | 30            |
      | 31            |


  @CT-4664
  Esquema do Cenario: Inserir Procedimentos Administrativos - Diferentes possibilidades de Recurso, Reexames e Alteração (Sumário)
    Dado que envio uma requisição "POST" para o endpoint "/api/membros/3051358/procedimentos-administrativos" com os dados:
      | tipoProcesso          | 3                |
      | numeroProcesso        | 5434543555       |
      | dataInstauracao       | 2024-10-10       |
      | numeroPortaria        | 123              |
      | descritivoCapitulacao | testes           |
      | dataDecisao           | 2024-10-10       |
      | tipoResultado         | 1                |
      | numeroDias            | 1                |
      | parteDispositiva      |                  |
      | observacoes           |                  |
      | numeroAcordo          |                  |
      | dataTransito          |                  |
      | houveRecurso          | <houveRecurso>   |
      | houveReexame          | <houveReexame>   |
      | houveAlteracao        | <houveAlteracao> |
    Entao devera retornar o status 200
    Exemplos: Tipos de Resultados
      | houveRecurso | houveReexame | houveAlteracao |
      |              |              |                |
      |              |              | false          |
      |              | true         |                |
      |              | true         | false          |
      |              | true         | true           |
      |              | false        |                |
      | true         |              |                |
      | true         |              | false          |
      | true         |              | true           |
      | true         | true         |                |
      | true         | true         | false          |
      | true         | true         | true           |
      | true         | false        |                |
      | true         | false        | false          |
      | true         | false        | true           |
      | false        |              |                |
      | false        | true         |                |
      | false        | true         | false          |
      | false        | true         | true           |
      | false        | false        |                |
      | false        | false        | false          |


  @CT-4665
  Esquema do Cenario: Inserir Procedimentos Administrativos - Diferentes possibilidades de Recurso, Reexames e Alteração (Ordinário)
    Dado que envio uma requisição "POST" para o endpoint "/api/membros/3051358/procedimentos-administrativos" com os dados:
      | tipoProcesso          | 4                |
      | numeroProcesso        | 5434543555       |
      | dataInstauracao       | 2024-10-10       |
      | numeroPortaria        | 123              |
      | descritivoCapitulacao | testes           |
      | dataDecisao           | 2024-10-10       |
      | tipoResultado         | 1                |
      | numeroDias            | 1                |
      | parteDispositiva      |                  |
      | observacoes           |                  |
      | numeroAcordo          |                  |
      | dataTransito          |                  |
      | houveRecurso          | <houveRecurso>   |
      | houveReexame          | <houveReexame>   |
      | houveAlteracao        | <houveAlteracao> |
    Entao devera retornar o status 200
    Exemplos: Tipos de Resultados
      | houveRecurso | houveReexame | houveAlteracao |
      |              |              |                |
      |              |              | false          |
      |              | true         |                |
      |              | true         | false          |
      |              | true         | true           |
      |              | false        |                |
      | true         |              |                |
      | true         |              | false          |
      | true         |              | true           |
      | true         | true         |                |
      | true         | true         | false          |
      | true         | true         | true           |
      | true         | false        |                |
      | true         | false        | false          |
      | true         | false        | true           |
      | false        |              |                |
      | false        | true         |                |
      | false        | true         | false          |
      | false        | true         | true           |
      | false        | false        |                |
      | false        | false        | false          |