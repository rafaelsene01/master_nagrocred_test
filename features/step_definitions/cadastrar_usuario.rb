Dado("que meus dados sejam {string} {string} {string}") do |nome, cpf, estado_civil|
  @nome = nome
  @cpf = cpf
  @estado_civil = estado_civil
end

Quando("cadastrar um produtor") do
  if @cpf.to_s.length > 11
    cadastrar_usuario.adicionarProdutorPJ(@nome, @cpf)
  elsif
    cadastrar_usuario.adicionarProdutorPF(@nome, @cpf, @estado_civil)
  end
end

Entao("verificar se foi cadastrado") do
  @nome_card = cadastrar_usuario.verificarNomeProdutor()
  @estado_civil_card = cadastrar_usuario.verificarEstadoCivilProdutor()

  expect(@nome).to eq @nome_card
  if @cpf.to_s.length <= 11
    expect(@estado_civil).to eq @estado_civil_card
  end
end

Entao("excluir o cadastro e verificar.") do
  cadastrar_usuario.excluirProdutor()
  page.has_no_css?('.row div + div')
end