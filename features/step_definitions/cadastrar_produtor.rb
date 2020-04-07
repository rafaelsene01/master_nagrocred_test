Dado("que os dados do produtor sejam {string} {string}") do |nome, estado_civil|
  @nome = nome
  @cpf = estado_civil.empty? ? CNPJ.generate : CPF.generate
  @estado_civil = estado_civil
end

Quando("cadastrar um produtor") do
  if @cpf.to_s.length > 11
    cadastrar_produtor.adicionarProdutorPJ(@nome, @cpf)
  elsif
    cadastrar_produtor.adicionarProdutorPF(@nome, @cpf, @estado_civil)
  end
end

Entao("verificar se foi cadastrado") do
  @nome_card = cadastrar_produtor.verificarNomeProdutor()
  @estado_civil_card = cadastrar_produtor.verificarEstadoCivilProdutor()

  expect(@nome).to eq @nome_card
  if @cpf.to_s.length <= 11
    expect(@estado_civil).to eq @estado_civil_card
  end
end

Quando("excluir produtor") do
  navegarProdutores()
  cadastrar_produtor.excluirProdutor()
end

Entao("verificar se o produtor foi excluido") do
  page.has_no_css?('.row div + div')
end