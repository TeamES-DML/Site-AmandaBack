Feature: Comentario
  As an usuario do sistema
  I want to criar, editar e excluir comentarios em topicos
  so that eu possa interegir sobre os topicos publicados pela cantora

  Scenario: Criar comentario com sucesso
    Given eu estou na pagina do topico de titulo "Show do Natal" e corpo "Topico para comentar sobre o show do Natal 2018’
    And eu estou logado como usuario com email "daniel@def.com" e senha "12345678910"
    When eu preencho os campo de texto com "Comentando o topico"
    And eu clico no botao de comentar
    Then eu vejo que o topico de titulo "Show do Natal" e corpo "Topico para comentar sobre o show do Natal 2018’ agora tem o comentario de texto "Comentando o topico" e comentarista "daniel@def.com"

  Scenario: Criar comentario sem texto
    Given eu estou na pagina do topico de titulo "Show do Natal" e corpo "Topico para comentar sobre o show do Natal 2018’
    And eu estou logado como usuario com email "daniel@def.com" e senha "12345678910"
    When eu clico no botao de comentar
    Then eu vejo que nao pode ser criado um comentario sem texto

  Scenario: Criar comentario com texto menor que 3
    Given eu estou na pagina do topico de titulo "Show do Natal" e corpo "Topico para comentar sobre o show do Natal 2018’
    And eu estou logado como usuario com email "daniel@def.com" e senha "12345678910"
    When eu preencho os campo de texto com "Bo"
    And eu clico no botao de comentar
    Then eu vejo que nao pode ser criado um comentario com texto menor que 3

  Scenario: Editar comentario com sucesso
    Given eu estou na pagina de editar comentario de texto "Comentando o topico editado" e comentarista "daniel@def.com" do topico de titulo "Show do Natal" e corpo "Topico para comentar sobre o show do Natal 2018’
    And eu estou logado como usuario com email "daniel@def.com" e senha "12345678910"
    When eu preencho os campo de texto com "Comentando o topico editado"
    And eu clico no botao de concoluir edicao
    Then eu vejo que o topico de titulo "Show do Natal" e corpo "Topico para comentar sobre o show do Natal 2018’ agora tem o comentario de texto "Comentando o topico editado" e comentarista "daniel@def.com"

  Scenario: Excluir comentario com sucesso
    Given eu estou na pagina do topico de titulo "Show do Natal" e corpo "Topico para comentar sobre o show do Natal 2018’
    And eu estou logado como usuario com email "daniel@def.com" e senha "12345678910"
    And vejo o meu comentario com campo de texto com "Comentando o topico"
    When eu clico no botao de excluir o comentario
    Then eu vejo que o topico de titulo "Show do Natal" e corpo "Topico para comentar sobre o show do Natal 2018’ agora nao tem o comentario de texto "Comentando o topico" e comentarista "daniel@def.com"
