Dado("que os dados do produtor para pedido de analise sejam {string} {string}") do |cpf, estado_civil|
  @nome = "#{Faker::Name.first_name.gsub(/[.,']/, '')}"
  begin
    @nome = "#{Faker::Name.first_name.gsub(/[.,']/, '')}"
  end while 3 >= @nome.length

  @cpf = cpf
  @estado_civil = estado_civil 
end

Entao("abrir form de pedido de analise de credito") do
  analise_credito.abrirForm()
end

Entao("selecionar produtor no campo de adicionar produtor") do
  analise_credito.inputAutocompleteADDProdutor(@nome)
end

Entao("selecionar consulta basica") do
  analise_credito.selecionarConsultaBasica()
end

Entao("confirmar a solicitação de analise") do
  analise_credito.confirmarSolicitacaoAnalise()
end

Entao("ir para pagina de listagem de analises e verificar se foi criada") do
  analiseCredito()
  analise_credito.validarCriacaoAnalise(@nome)
end

Entao("selecionar analise criada e verificar os dados.") do
  analise_credito.selecionarValidarDadosAnaliseCriada(@nome, maskCpfCnpj(@cpf), @estado_civil)
end