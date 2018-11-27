Feature: Administracao de Formularios
  as an usuario admin do sistema
  i want to criar, aceitar, recusar e ver os formularios do sistema
  so that eu possa administrar facilmente as propostas de shows

  Scenario: Ver formularios recebidos pendentes
    Given estou na pagina de formularios
    And recebi um formulario com "Nome", local "Cidade-PE Brasil", data "19-11-2019" e descricao "texto explicando a proposta"
    When clico no botao de ver formularios
    Then vejo o formulario com nome de contratante "Nome", local "Cidade-PE Brasil", data "19-11-2019" e descricao "texto explicando a proposta" na pagina sem ver a descricao

  Scenario: Recusar um formulario recebido
    Given estou na pagina do formulario com nome do contratante "Nome", local "Cidade-PE Brasil", data "19-11-2019" e descricao "texto explicando a proposta"
    When preencho o campo de mensagem "Resposta"
    And clico no botao de recusar proposta
    Then vejo uma mensagem que a proposta foi recusada

  Scenario: Aceitar formulario recebido para iniciar negociacao
    Given estou na pagina do formulario com nome do contratante "Nome", local "Cidade-PE Brasil", data "19-11-2019" e descricao "texto explicando a proposta"
    When preencho o campo de mensagem "Resposta"
    And clico no botao de aceitar proposta
    Then vejo uma mensagem que a proposta foi aceita para negociacoes

  Scenario: Ver formularios recebidos pendentes sem estar logado
    Given estou na pagina de formularios
    And recebi um formulario com "Nome", local "Cidade-PE Brasil", data "19-11-2019" e descricao "texto explicando a proposta"
    When clico no botao de ver formularios
    Then vejo uma aviso solicitando o login

  Scenario: Recusar um formulario sem enviar mensagem
    Given estou na pagina do formulario com nome do contratante "Nome", local "Cidade-PE Brasil", data "19-11-2019" e descricao "texto explicando a proposta"
    When clico no botao de recusar proposta
    Then vejo uma mensagem solicitando o preenchimento do campo de mensagem

  Scenario: Aceitar um formulario sem enviar mensagem
    Given estou na pagina do formulario com nome do contratante "Nome", local "Cidade-PE Brasil", data "19-11-2019" e descricao "texto explicando a proposta"
    When clico no botao de aceitar proposta
    Then vejo uma mensagem solicitando o preenchimento do campo de mensagem

  Scenario: Ver formularios recebidos aceitos
    Given estou na pagina de ver fumularios
    And aceitei um formulario com "Nome", local "Cidade-PE Brasil", data "19-11-2019" e descricao "texto explicando a proposta"
    When clico no botao de ver formularios aceitos
    Then vejo o formulario com nome de contratante "Nome", local "Cidade-PE Brasil", data "19-11-2019" e descricao "texto explicando a proposta" na pagina sem ver a descricao

  Scenario: Ver formularios recebidos recusados
    Given estou na pagina de ver fumularios
    And recusei um formulario com "Nome", local "Cidade-PE Brasil", data "19-11-2019" e descricao "texto explicando a proposta"
    When clico no botao de ver formularios recusados
    Then vejo o formulario com nome de contratante "Nome", local "Cidade-PE Brasil", data "19-11-2019" e descricao "texto explicando a proposta" na pagina sem ver a descricao

  Scenario: Ver um formulario pendente completo
    Given eu estou estou logado como usuario admin nome "Luis Filipe", email "luisfilipe@gmail.com" e senha "12345678910"
    And estou na pagina de ver formularios
    And recebi um formulario com "Nome", local "Cidade-PE Brasil", data "19-11-2019" e descricao "texto explicando a proposta"
    When eu clico no botao correspondente a ver o formulario de nome do contratante "Nome", local "Cidade-PE Brasil", data "19-11-2019" e descricao "texto explicando a proposta"
    Then vejo o formulario com nome do contratante "Nome", local "Cidade-PE Brasil", data "19-11-2019" e descricao "texto explicando a proposta" na pagina

  Scenario: Ver um formulario aceito completo
    Given eu estou estou logado como usuario admin nome "Luis Filipe", email "luisfilipe@gmail.com" e senha "12345678910"
    And estou na pagina de ver formularios aceitos
    And aceitei um formulario com "Nome", local "Cidade-PE Brasil", data "19-11-2019" e descricao "texto explicando a proposta"
    When eu clico no botao correspondente a ver o formulario de nome do contratante "Nome", local "Cidade-PE Brasil", data "19-11-2019" e descricao "texto explicando a proposta"
    Then vejo o formulario com nome do contratante "Nome", local "Cidade-PE Brasil", data "19-11-2019" e descricao "texto explicando a proposta" na pagina

  Scenario: Ver um formulario recusado completo
    Given eu estou estou logado como usuario admin nome "Luis Filipe", email "luisfilipe@gmail.com" e senha "12345678910"
    And estou na pagina de ver formularios recusados
    And recusado um formulario com "Nome", local "Cidade-PE Brasil", data "19-11-2019" e descricao "texto explicando a proposta"
    When eu clico no botao correspondente a ver o formulario de nome do contratante "Nome", local "Cidade-PE Brasil", data "19-11-2019" e descricao "texto explicando a proposta"
    Then vejo o formulario com nome do contratante "Nome", local "Cidade-PE Brasil", data "19-11-2019" e descricao "texto explicando a proposta" na pagina

  Scenario: Recusar um formulario com uma mensagem com tamanho menor que 10
    Given estou na pagina do formulario com nome do contratante "Nome", local "Cidade-PE Brasil", data "19-11-2019" e descricao "texto explicando a proposta"
    When preencho o campo de mensagem "Resposta"
    And clico no botao de recusar proposta
    Then eu vejo um aviso que o tamanho da mensagem nao pode ser menor que 10

  Scenario: Aceitar um formulario com uma mensagem com tamanho menor que 10
    Given estou na pagina do formulario com nome do contratante "Nome", local "Cidade-PE Brasil", data "19-11-2019" e descricao "texto explicando a proposta"
    When preencho o campo de mensagem "Resposta"
    And clico no botao de aceitar proposta
    Then eu vejo um aviso que o tamanho da mensagem nao pode ser menor que 10

  Scenario: Recusar um formulario com uma mensagem com tamanho maior que 180
    Given estou na pagina do formulario com nome do contratante "Nome", local"Cidade-PE Brasil", data "19-11-2019" e descricao "texto explicando a proposta"
    When preencho o campo de mensagem "Resposta do problema que temos qasdaeagseugeusguhseuuseesseuhesueshuehushesuhsuhuseueshuseuhuheushushrushrsuhsushusheusehuhseusheuhesusheuhseuhesuhesuhesuehsuesushuehussehuhesuhesuhesueshuhesusheusheusheusehusheueshuhseushhsusehuhesuw"
    And clico no botao de recusar proposta
    Then eu vejo um aviso que o tamanho da mensagem nao pode ser maior que 180


  Scenario: Aceitar um formulario com uma mensagem com tamanho maior que 180
    Given estou na pagina do formulario com nome do contratante "Nome", local "Cidade-PE Brasil", data "19-11-2019" e descricao "texto explicando a proposta"
    When preencho o campo de mensagem "Resposta do problema que temos qasdaeagseugeusguhseuuseesseuhesueshuehushesuhsuhuseueshuseuhuheushushrushrsuhsushusheusehuhseusheuhesusheuhseuhesuhesuhesuehsuesushuehussehuhesuhesuhesueshuhesusheusheusheusehusheueshuhseushhsusehuhesuw"
    And clico no botao de aceitar proposta
    Then eu vejo um aviso que o tamanho da mensagem nao pode ser maior que 180