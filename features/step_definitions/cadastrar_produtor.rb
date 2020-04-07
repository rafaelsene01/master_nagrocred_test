Dado("que os dados do produtor sejam {string}") do |estado_civil|
  @nome = "#{Faker::Name.first_name.gsub(/[.,']/, '')}"
  begin
    @nome = "#{Faker::Name.first_name.gsub(/[.,']/, '')}"
  end while 3 >= @nome.length

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
  @nome_card = cadastrar_produtor.verificarNomeProdutor(@nome)

  expect(@nome).to eq @nome_card
  if @cpf.to_s.length <= 11
    @estado_civil_card = cadastrar_produtor.verificarEstadoCivilProdutor(@nome)
    expect(@estado_civil).to eq @estado_civil_card
  end
end

Quando("excluir produtor") do
  navegarProdutores()
  cadastrar_produtor.excluirProdutor(@nome)
end

Entao("verificar se o produtor foi excluido") do
  cadastrar_produtor.verificarSeProdutorFoiExcluido(@nome)
end