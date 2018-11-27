Feature: Administracao de Topicos
  As an usuario admin do sistema
  I want to criar, editar, remover e ver os topicos do sistema
  so that eu possa ver criar tópicos para que os usuários possam comentar sobre

  Scenario: Criar topico com sucesso
    Given eu estou logado como usuario admin nome "Luis Filipe", email "luisfilipe@gmail.com" e senha "12345678910"
    And eu estou na pagina de criar topicos
    When eu preencho os campos titulo "Novo Album" e texto "Iluminar vai ser o proximo album a ser lancado"
    And clico no botao criar novo topico
    Then eu vejo que o topico com titulo "Novo Album" e texto "Iluminar vai ser o proximo album a ser lancado" foi salvo

  Scenario: Criar topico sem titulo
    Given eu estou logado como usuario admin nome "Luis Filipe", email "luisfilipe@gmail.com" e senha "12345678910"
    And eu estou na pagina de criar topicos
    When eu preencho o campo texto "Iluminar vai ser o proximo album a ser lancado" e deixo o campo de titulo vazio
    And clico no botao criar novo topico
    Then eu recebo a notificacao que topico nao pode ser criado sem titulo

  Scenario: Criar topico sem texto
    Given eu estou logado como usuario admin nome "Luis Filipe", email "luisfilipe@gmail.com" e senha "12345678910"
    And eu estou na pagina de criar topicos
    When eu preencho o campo titulo "Novo Album" e deixo o campo texto vazio
    And clico no botao criar novo topico
    Then eu recebo a notificacao que topico nao pode ser criado sem texto

  Scenario: Criar topico com titulo com tamanho menor que 5
    Given eu estou logado como usuario admin nome "Luis Filipe", email "luisfilipe@gmail.com" e senha "12345678910"
    And eu estou na pagina de criar topicos
    When eu preencho o campo titulo "Oi" e o texto "Bom dia!"
    And clico no botao criar novo topico
    Then eu recebo a notificacao que o topico nao pode ser criado com titulo com tamanho menor que 5

  Scenario: Criar topico com texto com tamanho menor que 10
    Given eu estou logado como usuario admin nome "Luis Filipe", email "luisfilipe@gmail.com" e senha "12345678910"
    And eu estou na pagina de criar topicos
    When eu preencho o campo titulo "Novo Album" e o texto "Iluminar"
    And eu clico no botao criar novo topico
    Then eu recebo a notificacao que o topico nao pode ser criado com texto com tamanho menor que 10

  Scenario: Editar um topico com sucesso
    Given eu estou logado como usuario admin nome "Luis Filipe", email "luisfilipe@gmail.com" e senha "12345678910"
    And eu estou na pagina de topicos
    And eu criei um topico com titulo "Novo Album" e texto "Iluminar vai ser o proximo album a ser lancado"
    And clico no botao editar do topico com titulo "Novo Album"
    When eu preencho novo texto "Escuridao vai ser o nome do proximo album"
    And clico no botao editar topico
    Then eu vejo a notificacao que o topico com titulo "Novo Album" foi editado com sucesso

  Scenario: Deletar um topico com sucesso
    Given eu estou logado como usuario admin nome "Luis Filipe", email "luisfilipe@gmail.com" e senha "12345678910"
    And eu estou na pagina de topicos
    And eu criei um topico com titulo "Novo Album" e texto "Iluminar vai ser o proximo album a ser lancado"
    When eu clico no botao remover do topico com titulo "Novo Album"
    Then eu recebo a notificacao que o topico com titulo "Novo Album" foi deletado

  Scenario: Ver um topico
    Given eu estou logado como usuario admin nome "Luis Filipe", email "luisfilipe@gmail.com" e senha "12345678910"
    And eu estou na pagina de topicos
    And eu criei um topico com titulo "Novo Album" e texto "Iluminar vai ser o proximo album a ser lancado"
    When eu clico no titulo do topico com titulo "Novo Album"
    Then eu vejo o topico com titulo "Novo Album" e texto "Iluminar vai ser o proximo album a ser lancado"

  Scenario: Criar um topico sem estar logado
    Given eu estou na pagina de criar topicos
    When eu preencho os campos de titulo "Novo Album" e texto "Iluminar vai ser o proximo album a ser lancado"
    And clico no botao criar novo topico
    Then eu recebo um aviso solicitando login

  Scenario: Deletar um topico sem estar logado
    Given eu estou na pagina de topicos
    And eu criei um topico com titulo "Novo Album" e texto "Iluminar vai ser o proximo album a ser lancado"
    When eu clico no botao remover do topico com titulo "Novo Album"
    Then eu recebo um aviso solicitando login

  Scenario: Editar topicos com campo texto vazio
    Given eu estou logado como usuario admin nome "Luis Filipe", email "luisfilipe@gmail.com" e senha "12345678910"
    And eu estou na pagina de topicos
    And eu criei um topico com titulo "Novo Album" e texto "Iluminar vai ser o proximo album a ser lancado"
    And eu clico no botao editar topico no topico com titulo "Novo Album"
    When eu clico no botao editar topico
    Then eu recebo um aviso que topico nao pode ser editado com texto vazio

  Scenario: Editar topicos com texto com tamanho maior que 180
    Given eu estou logado como usuario admin nome "Luis Filipe", email "luisfilipe@gmail.com" e senha "12345678910"
    And eu estou na pagina de editar topicos
    And eu criei um topico com titulo "Novo Album" e texto "Iluminar vai ser o proximo album a ser lancado"
    And eu clico em editar topico no topico com titulo "Novo Album"
    When eu preencho o campo texto "Uma mensagem muito grande Uma mensagem muito grande Uma mensagem muito grande Uma mensagem muito grande Uma mensagem muito grande Uma mensagem muito grande Uma mensagem muito grande Uma mensagem muito grande Uma mensagem muito grande Uma mensagem muito grande Uma mensagem muito grande Uma mensagem muito grande"
    And clico no botao editar topico
    Then eu recebo um aviso que topico nao pode ser editado com texto com tamanho maior que 180

  Scenario: Ver topicos sem estar logado
    Given eu estou na pagina topicos
    And eu criei um topico com titulo "Novo Album" e texto "Iluminar vai ser o proximo album a ser lancado"
    When eu clico no titulo do topico com titulo "Novo Album"
    Then eu recebo um aviso solicitando login

  Scenario: Criar topico com titulo com tamanho maior que 50
    Given eu estou logado como usuario admin nome "Luis Filipe", email "luisfilipe@gmail.com" e senha "12345678910"
    And eu estou na pagina de criar topicos
    When eu preencho os campos de titulo "Novo Album super hiper mega blaster duper incredible nunca antes visto" e texto "Iluminar vai ser o proximo album a ser lancado"
    And clico no botao criar topico
    Then eu recebo um aviso que o topico nao pode ser criado com titulo com tamanho maior que 50

  Scenario: Criar topico com texto com tamanho maior que 180
    Given eu estou logado como usuario admin nome "Luis Filipe", email "luisfilipe@gmail.com" e senha "12345678910"
    And eu estou na pagina de criar topicos
    When eu preencho os campos de titulo "Novo Album" e texto "Uma mensagem muito grande Uma mensagem muito grande Uma mensagem muito grande Uma mensagem muito grande Uma mensagem muito grande Uma mensagem muito grande Uma mensagem muito grande Uma mensagem muito grande Uma mensagem muito grande Uma mensagem muito grande Uma mensagem muito grande Uma mensagem muito grande"
    And eu clico no botao criar novo topico
    Then eu recebo um aviso que o topico nao pode ser criado com titulo com tamanho maior que 180

  Scenario: Criar topico com mesmo titulo
    Given eu estou logado como usuario admin nome "Luis Filipe", email "luisfilipe@gmail.com" e senha "12345678910"
    And eu criei um topico com titulo "Novo Album" e texto "Iluminar vai ser o proximo albuma ser lancado"
    And eu estou na pagina criar topico
    When eu preencho os campos titulo "Novo Album" e texto "Outra coisa a ser feita"
    And clico no botao criar topico
    Then eu recebo um aviso que o topico nao pode ser criado um topico com titulo ja existente





