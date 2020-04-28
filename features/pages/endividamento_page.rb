class Endividamento < SitePrism::Page

  def paginaEndividamento()
    find(".sidebar span", text: "Endividamento").click
    find(".cardAdd").click
    page.assert_text('Tipo do endividamento *')
  end

  def preencherCamposRequeridos(tipo_endividamento, credor, forma_pagamento)
    find(".v-select__selections").click
    find(".v-list-item__title", text: tipo_endividamento).click
    find(".credorCard", text: credor).click
    find_by_id("total_debt_amount").set(1)
    
    @time = Time.new
    @time = @time.to_date.next_day(30).to_time
  
    find("div[class$=v-text-field--is-booted", text: "Data de vencimento *").find("input").set (@time.strftime("%d/%m/%Y"))
    find(".v-select__slot", text: "Forma de pagamento *").click
    find(".v-list-item__content", text: forma_pagamento).click
  end

  def preencherCamposNaoRequeridos(tipo_garantia)
    find_by_id("creditor_name").set('abc')
    find_by_id("open_value").set(1)
    find_by_id("contracted_interest_rate").set(1)
    find(".v-radio.ma-0", text: "Sim, possui.").click
    find(".v-select__slot", text: "Tipo de garantia").click
    find(".v-list-item__content", text: tipo_garantia).click

    @antes_time = Time.new
    find("div[class$=v-text-field--is-booted", text: "Data de contratação").find("input").set(@antes_time.strftime("%d/%m/%Y"))
  end

  def salvarEndividamentoCriado()
    click_button "Salvar informações"
    click_button 'Ok'
  end

  def excluirEndividamentoCriado()
    begin  
      find("span", text: "Excluir").click
    rescue 
      find("span", text: "Excluir", wait: 60).click
    end 
    click_button 'Ok'
  end
end