Given("eu estou na pagina de criacao de usuario") do
  visit '/users/sign_up'
  expect(page).to have_content('Sign up')
end

When("eu preencho os campos de email com {string}, senha com {string} e confirmacao com {string}") do |email, senha, confirmacao|
  fill_in 'user[email]', with: email
  fill_in 'user[senha]', with: senha
  fill_in 'user[confirmacao]', with: confirmacao
end

When("eu clico no botao de criar usuario") do
  click_button 'Sign up'
end

Then("eu recebo uma notificacao avisando que {string} foi criado com sucesso") do |cadastrado|
  expect(page).to_have_content(cadastrado)
end

When("eu preencho os campos de senha com {string} e confirmacao com {string}") do |senha, confirmacao|
  fill_in 'user[senha]', with: senha
  fill_in 'user[confirmacao]', with: confirmacao
end

Then("eu recebo uma notificacao avisando que faltam informacoes necessarias para a criacao de usuario") do
  expect(page).to_have_content('errors prohibited this user from being saved')
end

When("eu preencho os campos de email com {string} e confirmacao com {string}") do |email, confirmacao|
  fill_in 'user[email]', with: email
  fill_in 'user[confirmacao]', with: confirmacao
end

Then("eu recebo uma notificacao avisando que faltam informacoes necessarias para a criacao de Usuario") do
  expect(page).to_have_content('errors prohibited this user from being saved')
end

When("eu preencho os campos de email com {string} e senha com {string}") do |email, senha|
  fill_in 'user[email]', with: email
  fill_in 'user[confirmacao]', with: senha
end

Given("eu estou na pagina de criar usuario") do
  visit '/users/sign_up'
  expect(page).to have_content('Sign up')
end

When("eu preencho os campos de nome com {string} e email com {string} e senha {string}") do |string, string2, string3|
  pending # Write code here that turns the phrase above into concrete actions
end

When("eu clico no botao criar usuario") do
  click_button 'Sign up'
end

Then("eu recebo um aviso que nome nao pode ter tamanho maior que {int}") do |int|
  pending # Write code here that turns the phrase above into concrete actions
end

When("eu preencho os campos de email {string} e senha {string} e confirmacao {string}") do |email, senha, confirmacao|
  fill_in 'user[email]', with: email
  fill_in 'user[senha]', with: senha
  fill_in 'user[confirmacao]', with: confirmacao
end

Then("eu recebo um aviso que email esta com a formatacao incorreta") do
  pending # Write code here that turns the phrase above into concrete actions
end

Then("eu recebo um aviso que senha nao pode ter tamanho maior que cinquenta") do
  expect(page).to_have_content('errors prohibited this user from being saved')
end

Then("eu recebo um aviso que o nome nao pode ter tamanho menor que {int}") do |int|
  pending # Write code here that turns the phrase above into concrete actions
end

When("eu preencho os campos de nome {string} e email {string} e senha  {string}") do |string, string2, string3|
  pending # Write code here that turns the phrase above into concrete actions
end

Then("eu recebo um aviso que a senha nao pode ter tamanho menor que {int}") do |int|
  pending # Write code here that turns the phrase above into concrete actions
end

Given("eu estou logado como usuario com nome {string}, email {string} e senha {string}") do |string, string2, string3|
  pending # Write code here that turns the phrase above into concrete actions
end

Given("eu estou na pagina da minha conta") do
  pending # Write code here that turns the phrase above into concrete actions
end

When("eu clico no botao editar nome") do
  pending # Write code here that turns the phrase above into concrete actions
end

When("eu preencho o campo novo nome {string}") do |string|
  pending # Write code here that turns the phrase above into concrete actions
end

When("clico no botao confirmar novo nome") do
  pending # Write code here that turns the phrase above into concrete actions
end

Then("eu recebo a notificacao que o nome foi editado com sucesso") do
  pending # Write code here that turns the phrase above into concrete actions
end

When("eu clico no botao editar senha") do
  pending # Write code here that turns the phrase above into concrete actions
end

When("eu preencho o campo nova senha {string}") do |string|
  pending # Write code here that turns the phrase above into concrete actions
end

When("eu clico no botao confirmar nova senha") do
  pending # Write code here that turns the phrase above into concrete actions
end

Then("eu recebo a notificacao que a senha foi editada com sucesso") do
  pending # Write code here that turns the phrase above into concrete actions
end

When("eu clico no botao editar email") do
  pending # Write code here that turns the phrase above into concrete actions
end

When("eu preencho o campo novo email {string}") do |string|
  pending # Write code here that turns the phrase above into concrete actions
end

When("eu clico no botao confirmar novo email") do
  pending # Write code here that turns the phrase above into concrete actions
end

Then("eu recebo a notificacao que o email foi editado com sucesso") do
  pending # Write code here that turns the phrase above into concrete actions
end

When("eu clico no botao confirmar novo nome") do
  pending # Write code here that turns the phrase above into concrete actions
end

Then("eu recebo o aviso que o nome nao pode ter tamanho maior que {int}") do |int|
  pending # Write code here that turns the phrase above into concrete actions
end

Then("eu recebo o aviso que o senha nao pode ter tamanho maior que {int}") do |int|
  pending # Write code here that turns the phrase above into concrete actions
end

Given("eu estou na pagina minha conta") do
  pending # Write code here that turns the phrase above into concrete actions
end

Then("eu recebo o aviso que o email esta com a formatacao incorreta") do
  pending # Write code here that turns the phrase above into concrete actions
end

Given("eu criei um usuario com email {string} e nome {string} e senha  {string}") do |string, string2, string3|
  pending # Write code here that turns the phrase above into concrete actions
end

Given("eu estou na pagina criar usuario") do
  pending # Write code here that turns the phrase above into concrete actions
end

When("eu preencho os campos nome {string} email {string} e senha  {string}") do |string, string2, string3|
  pending # Write code here that turns the phrase above into concrete actions
end

Then("eu recebo um aviso que ja existe um usuario com esse email") do
  pending # Write code here that turns the phrase above into concrete actions
end

