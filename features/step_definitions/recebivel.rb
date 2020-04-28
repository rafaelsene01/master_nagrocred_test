Entao("verificar se esta no form de recebível do produtor") do
  recebivel.paginaRecebivel()
end

Entao("preencher campo com não possui") do
  recebivel.preencherCampoNaoPossui()
end

Entao("preencher todos campos requeridos de recebível {string}") do |tipo_recebivel|
  recebivel.preencherCamposRequeridos(tipo_recebivel)
end

Entao("preencher todos campos não requeridos de recebível") do
  recebivel.preencherCamposNaoRequeridos()
end

Entao("salvar recebível criado") do
  recebivel.salvarRecebivelCriado()
end

Entao("excluir recebível criado") do
  recebivel.excluirRecebivelCriado()
end



