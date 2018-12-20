Given("eu estou na pagina do topico de titulo {string} e corpo {string}") do |string, string2|
  pending #Falta escrever
end

Given("eu estou logado como usuario com email {string} e senha {string}") do |email, senha|
  visit '/users/sign_up'
  fill_in 'user[email]', with: email
  fill_in 'user[senha]', with: senha
  fill_in 'user[confirmacao]', with: senha
  click_button "Sign up"
  expect(page).to_have_content("Welcome! You have signed up successfully.")
end

When("eu preencho os campo de texto com {string}") do |texto|
  fill_in 'comentario[texto]', with: texto
end

When("eu clico no botao de comentar") do
  click_button 'New Comentario'
end

Then("eu vejo que o topico de titulo {string} e corpo {string} agora tem o comentario de texto {string} e comentarista {string}") do |string, string2, string3, string4|
  expect(page).to have_content(string)
  expect(page).to have_content(string2)
  expect(page).to have_content(string3)
  expect(page).to have_content(string4)
end

Then("eu vejo que nao pode ser criado um comentario sem texto") do
  expect(page).to_have_content('errors prohibited this comentario from being saved')
end

Then("eu vejo que nao pode ser criado um comentario com texto menor que {int}") do |int|
  expect(page).to_have_content('errors prohibited this comentario from being saved')
end

Given("eu estou na pagina de editar comentario de texto {string} e comentarista {string} do topico de titulo {string} e corpo {string}") do |string, string2, string3, string4|
  pending # Write code here that turns the phrase above into concrete actions
end

When("eu clico no botao de concoluir edicao") do
  click_button 'Edit Comentario'
end

Then("eu vejo que o topico de titulo {string} e corpo {string} agora nao tem o comentario de texto {string} e comentarista {string}") do |string, string2, string3, string4|
  expect(page).to have_content(string)
  expect(page).to have_content(string2)
  expect(page).not_to have_content(string3)
  expect(page).not_to have_content(string4)
end

Given("vejo o meu comentario com campo de texto com {string}") do |string|
  expect(page).to have_content(string)
end

When("eu clico no botao de excluir o comentario") do
  click_button 'Destroy'
end

