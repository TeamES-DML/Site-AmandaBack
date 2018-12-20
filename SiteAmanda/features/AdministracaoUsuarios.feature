Feature: Administracao de Usuarios
  As an usuario do sistema
  I want to criar, editar uma conta no site
  so that eu possa utilizar o sistema

  Scenario: Criar usuario com sucesso
    Given eu estou na pagina de criacao de usuario
    When eu preencho os campos de email com "abc@def.com", senha com "senha123" e confirmacao com "senha123"
    And eu clico no botao de criar usuario
    Then eu recebo uma notificacao avisando que "Welcome! You have signed up successfully." foi criado com sucesso

  Scenario: Criar usuario sem email
    Given eu estou na pagina de criacao de usuario
    When eu preencho os campos de senha com "senha123" e confirmacao com "senha123"
    And eu clico no botao de criar usuario
    Then eu recebo uma notificacao avisando que faltam informacoes necessarias para a criacao de usuario

  Scenario: Criar usuario sem senha
    Given eu estou na pagina de criacao de usuario
    When eu preencho os campos de email com "abc@def.com" e confirmacao com "senha123"
    And eu clico no botao de criar usuario
    Then eu recebo uma notificacao avisando que faltam informacoes necessarias para a criacao de Usuario

  Scenario: Criar usuario sem confirmacao
    Given eu estou na pagina de criacao de usuario
    When eu preencho os campos de email com "abc@def.com" e senha com "senha123"
    And eu clico no botao de criar usuario
    Then eu recebo uma notificacao avisando que faltam informacoes necessarias para a criacao de usuario

  Scenario: Criar usuario com nome com tamanho maior que 100
    Given eu estou na pagina de criar usuario
    When eu preencho os campos de nome com "string maior que 100 caracteres" e email com "abc@def.com" e senha "123456"
    And eu clico no botao criar usuario
    Then eu recebo um aviso que nome nao pode ter tamanho maior que 100

  Scenario: Criar usuario com email formatacao incorreta
    Given eu estou na pagina de criar usuario
    When eu preencho os campos de email com "abc.def.com", senha com "senha123" e confirmacao com "senha123"
    And eu clico no botao criar usuario
    Then eu recebo um aviso que email esta com a formatacao incorreta

  Scenario: Criar usuario com senha com tamanho maior que 50
    Given eu estou na pagina de criar usuario
    When eu preencho os campos de email com "abc.def.com", senha com "12345678910111213141516171819202122232425262728293031323334353637383940" e confirmacao com "12345678910111213141516171819202122232425262728293031323334353637383940"
    And eu clico no botao criar usuario
    Then eu recebo um aviso que senha nao pode ter tamanho maior que cinquenta

  Scenario: Criar usuario com nome com tamanho menor que 10
    Given eu estou na pagina de criar usuario
    When eu preencho os campos de email com "abc@def.com", senha com "123456" e confirmacao com "123456"
    And eu clico no botao criar usuario
    Then eu recebo um aviso que o nome nao pode ter tamanho menor que 10

  Scenario: Criar usuario com senha com tamanho menor que 6
    Given eu estou na pagina de criar usuario
    When eu preencho os campos de nome "Daniel Henrique" e email "abc@def.com" e senha  "12345"
    And eu clico no botao criar usuario
    Then eu recebo um aviso que a senha nao pode ter tamanho menor que 6

  Scenario: Editar nome do usuario com sucesso
    Given eu estou logado como usuario com nome "Daniel Sales", email "daniel@gmail.com" e senha "246810"
    And eu estou na pagina da minha conta
    When eu clico no botao editar nome
    And eu preencho o campo novo nome "Daniel Henrique"
    And clico no botao confirmar novo nome
    Then eu recebo a notificacao que o nome foi editado com sucesso

  Scenario: Editar senha com sucesso
    Given eu estou logado como usuario com nome "Daniel Sales", email "daniel@gmail.com" e senha "246810"
    And eu estou na pagina da minha conta
    When eu clico no botao editar senha
    And eu preencho o campo nova senha "123456"
    And eu clico no botao confirmar nova senha
    Then eu recebo a notificacao que a senha foi editada com sucesso

  Scenario: Editar email com sucesso
    Given eu estou logado como usuario com nome "Daniel Sales", email "daniel@gmail.com" e senha "246810"
    And eu estou na pagina da minha conta
    When eu clico no botao editar email
    And eu preencho o campo novo email "abc@def.com"
    And eu clico no botao confirmar novo email
    Then eu recebo a notificacao que o email foi editado com sucesso

  Scenario: Editar nome com campo nome com tamanho maior que 100
    Given eu estou logado como usuario com nome "Daniel Sales", email "daniel@gmail.com" e senha "246810"
    And eu estou na pagina da minha conta
    When eu clico no botao editar nome
    And eu preencho o campo novo nome "String maior que 100 caracteres"
    And eu clico no botao confirmar novo nome
    Then eu recebo o aviso que o nome nao pode ter tamanho maior que 100

  Scenario: Editar senha com campo senha com tamanho maior que 50
    Given eu estou logado como usuario com nome "Daniel Sales", email "daniel@gmail.com" e senha "246810"
    And eu estou na pagina da minha conta
    When eu clico no botao editar senha
    And eu preencho o campo nova senha "12345678910111213141516171819202122232425262728293031323334353637383940"
    And eu clico no botao confirmar nova senha
    Then eu recebo o aviso que o senha nao pode ter tamanho maior que 50

  Scenario: Editar email com campo email com formatacao incorreta
    Given eu estou logado como usuario com nome "Daniel Sales", email "daniel@gmail.com" e senha "246810"
    And eu estou na pagina minha conta
    When eu clico no botao editar email
    And eu preencho o campo novo email "abcdef.com"
    And eu clico no botao confirmar novo email
    Then eu recebo o aviso que o email esta com a formatacao incorreta

  Scenario: Criar usuario com mesmo email
    Given eu criei um usuario com email "abc@def.com" e nome "Daniel Henrique" e senha  "123456"
    And eu estou na pagina criar usuario
    When eu preencho os campos nome "Marcio Ferreira" email "abc@def.com" e senha  "654321"
    And eu clico no botao criar usuario
    Then eu recebo um aviso que ja existe um usuario com esse email








