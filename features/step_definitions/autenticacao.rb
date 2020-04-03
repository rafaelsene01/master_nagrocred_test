Dado("que eu tenho um usuario") do
  autenticacao.load
end

Quando("os dados for valido, logar o usuario.") do
  autenticacao.logar($email, $senha)
end

Entao("vejo a tela de {string}") do |string|
  autenticacao.verificarTelaProdutor(string)
end

Dado("que meus dados sejam {string} {string}") do |email, senha|
  autenticacao.load
  @email = email
  @senha = senha
end

Quando("clico em acessar") do
  autenticacao.logar(@email, @senha)
end

Entao("vejo a {string}") do |mensagem|
  autenticacao.verificarMensagemLogin(mensagem)
end