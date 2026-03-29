# Testes de API do ServeRest #
ServeRest 3.2.0 
https://serverest.dev/swagger.json?lang=pt-BR
O ServeRest é uma API REST gratuita que simula uma loja virtual com intuito de servir de material de estudos de testes de API.

Obs: Por enquanto está automatizado somente os testes do módulo de Usuários.

# Configurações #

## Pré-Requisitos: ##
- Java 11
- Maven 3.9.12

### Execução do projeto e geração de relatórios ###
O projeto está configurado na esteira de CI/CD do GitHub e gerando os relatórios ao final dos testes.

Para executar o projeto localmente, basta acessar a pasta do projeto e executar o comando 'mvn clen verify'.
Os testes serão executados e o relatório será gerado no diretório do projeto, na diretório 'target/site/serenity/index.html'
