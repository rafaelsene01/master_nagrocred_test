Entao("verificar se esta no form de endividamento do produtor") do
  find(".sidebar span", text: "Endividamento").click
  find(".cardAdd").click
  page.assert_text('Tipo do endividamento *')
end

Entao("preencher todos campos requeridos de endividamentos {string} {string} {string}") do |tipo_endividamento, credor, forma_pagamento|
  find(".v-select__selections").click
  find(".v-list-item__title", text: tipo_endividamento).click
  find(".credorCard", text: credor).click
  # find("#creditor-name").set()
  find("#total_debt_amount").set(1)
  # find("#openValue").set()
  # find("#contractedInterestRate").set()
  # find(".v-radio.ma-0", text: "Não possui").click
  # find("div[class$=v-text-field--is-booted", text: "Data de contratação").find("input").set ()
  @time = Time.new
  @time = @time.to_date.next_day(30).to_time

  find("div[class$=v-text-field--is-booted", text: "Data de vencimento *").find("input").set (@time.strftime("%d/%m/%Y"))
  find(".v-select__slot", text: "Forma de pagamento *").click
  find(".v-list-item__content", text: forma_pagamento).click
  click_button "Salvar informações"
  click_button 'Ok'
end

Entao("excluir endividamento criado") do
  find("span", text: "Excluir").click
  click_button 'Ok'
end



