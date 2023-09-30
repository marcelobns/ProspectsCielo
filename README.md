# ProspectsCielo

## Server-Side
### Ferramentas
- Escrito na linguagem Java.
- Spring Boot.
- Postgres hospedado na AWS RDS.

Para rodar o projeto é necessário ter o Java instalado na máquina e o Maven.<br>
Basta executar o comando `mvn spring-boot:run` ou utilizar o run da IDE.<br>
O arquivo de partida é o `ProspectsApplication`.<br>
Por padrão, ele irá rodar na porta `8080` ([http://localhost:8080](http://localhost:8080)).<br>
O swagger está disponível na raiz da url `/`.<br>
Caso você precise alterar a porta, será necessário alterar no projeto de front-end também.<br>

## Client-Side
### Ferramentas
- Escrito em TypeScript.
- Angular.io.
- PrimeNG.

Para rodar o projeto é necessário ter o Node instalado na máquina.<br>
Você precisa instalar o Angular CLI com o comando `npm install -g @angular/cli`.<br>
Atendendo os requisitos acima, basta executar o comando `npm install` para instalar as dependências e `ng serve` para rodar o projeto.<br>
Por padrão, ele irá rodar na porta `4200` ([http://localhost:4200](http://localhost:4200)).<br>
Para consumir a API, é necessário que o endereço e porta estejam corretos nos arquivos de serviço.<br>
Na pasta `app/services`, altere `baseURL` para o endereço e porta corretos, se necessário.<br>

## Testes
- Teste e2e.
- Utilizando Cypress.
- cypress/e2e/addProspect.cy.ts 
- cypress/e2e/analysisProspect.cy.ts 
- cypress/e2e/editProspect.cy.ts

Após a instalação de todas as dependencias do projeto e com ele rodando, Basta executar o comando `npm run test` para gerar o relatório de testes no terminal ou `npm run cy:open` para abrir a interface do Cypress.

## Observações
- Foi decidido por implentar testes e2e usando cypress, pois a cobertura de fluxos é mais ampla.
- Tentei usar os dois projetos para mostrar como seria o meu racional de desenvolvimento, apesar do tempo e alguns requisitos terem sidos deixados no meio do caminho, me diverti com o desafio.
- Obrigado pela oportunidade!
- Qualquer dúvida, estou a disposição.