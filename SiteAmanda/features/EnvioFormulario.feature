Feature: Criacao de  Formulario
  As an usuario comum do sistema
  I want to enviar um formulario para contratar um show, ver meus formularios
  enviados.
  so that eu possa mandar facilmente uma proposta de show.

  Scenario: Enviar formulario com sucesso
    Given eu estou logado como usuario com nome "Daniel Henrique", email "abc@def.com" e senha "12345678910"
    And na pagina de formularios
    When preencho os campos de nome do contratante com "Nome", local "Cidade-PE Brasil", data "19-11-2019" e descricao "texto explicando a proposta"
    And clico no botao para enviar formulario
    Then vejo que o formulario de nome do contratante com "Nome", local "Cidade-PE Brasil", data "19-11-2019" e descricao "texto explicando a proposta" foi enviado

  Scenario: Enviar formulario sem descricao
    Given eu estou logado como usuario com nome "Daniel Henrique", email "abc@def.com" e senha "12345678910"
    And na pagina de formularios
    When preencho os campos de nome do contratante com "Nome", local "Cidade-PE Brasil", data "19-11-2019" e deixo o campo de descricao vazio
    And clico no botao para enviar formulario
    Then recebo a notificacao de que o formulario nao pode ser enviado sem descricao

  Scenario: Enviar formulario sem local
    Given eu estou logado como usuario com nome "Daniel Henrique", email "abc@def.com" e senha "12345678910"
    And na pagina de formularios
    When preencho os campos de nome do contratante com "Nome", data "19-11-2019", descricao "texto explicando a proposta" e local deixo vazio
    And clico no botao para enviar formulario
    Then recebo a notificacao de que o formulario nao pode ser enviado sem local

  Scenario: Enviar formulario sem data
    Given eu estou logado como usuario com nome "Daniel Henrique", email "abc@def.com" e senha "12345678910"
    And na pagina de formularios
    When preencho os campos de nome do contratante com "Nome", descricao "texto explicando a proposta" e local "Cidade" e data deixo vazio
    And clico no botao para enviar formulario
    Then recebo a notificacao de que o formulario nao pode ser enviado sem data

  Scenario: Enviar formulario sem nome do contratante
    Given eu estou logado como usuario com nome "Daniel Henrique", email "abc@def.com" e senha "12345678910"
    And na pagina de formularios
    When preencho os campos de descricao "texto explicando a proposta" e local "Cidade" e data "11-02-2000" e deixo o campo de nome do contratante vazio vazio
    And clico no botao para enviar formulario
    Then recebo a notificacao de que o formulario nao pode ser enviado sem nome do contratante

  Scenario: Enviar formulario com formato de data errado
    Given eu estou logado como usuario com nome "Daniel Henrique", email "abc@def.com" e senha "12345678910"
    And na pagina de formularios
    When preencho os campos de nome do contratante com "Nome", descricao "texto explicando a proposta" e local "Cidade" e data de forma invalida com "21/11"
    And clico no botao para enviar formulario
    Then recebo a notificacao de que o formulario nao pode ser enviado com data no formato errado

  Scenario: Enviar formulario com local de tamanho menor que 5
    Given eu estou logado como usuario com nome "Daniel Henrique", email "abc@def.com" e senha "12345678910"
    And na pagina de formularios
    When preencho os campos de nome do contratante com "Nome", data "19-11-2019", descricao "texto da proposta" e local com "Pato"
    And clico no botao para enviar formulario
    Then recebo a notificacao de que o formulario nao pode ser enviado com local de tamanho invalido

  Scenario: Enviar formulario sem estar logado
    Given estou na pagina de formularios
    When preencho os campos de nome do contratante com "Nome", local "Cidade-PE Brasil", data "19-11-2019" e descricao "texto explicando a proposta"
    And clico no botao para enviar formulario
    Then vejo uma aviso solicitando o login

  Scenario: Ver meus formularios enviados
    Given eu estou logado como usuario com nome "Daniel Henrique", email "abc@def.com" e senha "12345678910"
    And estou na pagina de formularios
    And enviei um formulario com o nome do contratante "Nome", local "Cidade-PE Brasil", data "19-11-2019" e descricao "texto explicando a proposta"
    When clico em ver formularios
    Then vejo o formulario com nome do contratante "Nome", local "Cidade-PE Brasil", data "19-11-2019" e descricao "texto explicando a proposta" aparecendo na pagina sem mostrar a descricao dos formulario.

  Scenario: Ver meus formularios enviados sem estar logado
    Given estou na pagina de formularios
    And enviei um formulario com nome do contratante "Nome", local "Cidade-PE Brasil", data "19-11-2019" e descricao "texto explicando a proposta"
    When clico em ver formularios
    Then vejo uma aviso solicitando o login

  Scenario: Enviar formulario com local de tamanho maior que 100
    Given eu estou logado como usuario com nome "Daniel Henrique", email "abc@def.com" e senha "12345678910"
    And na pagina de formularios
    When preencho os campos de nome do contratante com "Nome", data "19-11-2019", descricao "texto da proposta" e local com "Garanhuns Pernambuco Nordeste Brasil America do sul America Mundo Garanhuns Pernambuco Nordeste Brasil America do sul America Mundo"
    And clico no botao para enviar formulario
    Then recebo a notificacao de que o formulario nao pode ser enviado com local de tamanho invalido

  Scenario: Enviar formulario com nome do contratante maior que 100 caracteres
    Given eu estou logado como usuario com nome "Daniel Henrique", email "abc@def.com" e senha "12345678910"
    And na pagina de formularios
    When preencho os campos de nome do contratante com "Nome maior que 100 caracteres Nome maior que 100 caracteres Nome maior que 100 caracteres Nome maior que 100 caracteres", descricao "texto explicando a proposta" e local "Cidade" e data "19-10-2021"
    And clico no botao para enviar formulario
    Then recebo a notificacao de que o formulario nao pode ser enviado com nome do contratante maior que 100

  Scenario: Enviar formulario com descricao de tamanho maior que o permitido
    Given eu estou logado como usuario com nome "Daniel Henrique", email "abc@def.com" e senha "12345678910"
    And na pagina de formularios
    When preencho os campos de nome do contratante com "Nome", local "Cidade-PE Brasil", data "19-11-2019" e o campo de descricao com "STRING GIGANTE" maior que 1000 caracteres
    And clico no botao para enviar formulario
    Then recebo a notificacao de que o formulario nao pode ser enviado com descricao maior que 2000 caracteres

  Scenario: Enviar formulario com descricao de tamanho menor que o permitido
    Given eu estou logado como usuario com nome "Daniel Henrique", email "abc@def.com" e senha "12345678910"
    And na pagina de formularios
    When preencho os campos de nome do contratante com "Nome", local "Cidade-PE Brasil", data "19-11-2019" e o campo de descricao com "abc" menor que 10 caracteres
    And clico no botao para enviar formulario
    Then recebo a notificacao de que o formulario nao pode ser enviado com descricao menor que 10 caracteres

  Scenario: Ver um formulario enviado completo
    Given eu estou logado como usuario com nome "Daniel Henrique", email "abc@def.com" e senha "12345678910"
    And estou na pagina de formularios
    And enviei um formulario com "Nome", local "Cidade-PE Brasil", data "19-11-2019" e descricao "texto explicando a proposta"
    And clico em ver formularios
    When eu clico no botao corresponder a ver o formulario de nome do contratante "Nome", local "Cidade-PE Brasil", data "19-11-2019" e descricao "texto explicando a proposta"
    Then vejo o formulario com nome do contratante "Nome", local "Cidade-PE Brasil", data "19-11-2019" e descricao "texto explicando a proposta" e o status (aceito para negociacao ou negado) do formulario na pagina
