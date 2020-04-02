Dado("que os dados do produtor para pedido de analise sejam {string} {string}") do |cpf, estado_civil|
  @nome = "#{Faker::Name.first_name.gsub(/[.,']/, '')} #{Faker::Name.first_name.gsub(/[.,']/, '')}"
  @cpf = cpf
  @estado_civil = estado_civil 
end

Entao("abrir form de pedido de analise de credito") do
  analise_credito.abrirForm()
end

Entao("selecionar produtor no campo de adicionar produtor") do
  find_by_id('selectedClients').set @nome
  find('div.v-list-item__title', text: @nome).click
end

Entao("selecionar consulta basica") do
  find('#selectedClients').native.send_keys(:tab)
  check 'tipo_analise_0', allow_label_click: true
end

Entao("confirmar a solicitação de analise") do
  first('span', text: 'Confirmar e solicitar').click
  click_button 'Ok'
end

Entao("ir para pagina de listagem de analises e verificar se foi criada") do
  analiseCredito()
end