class Recebivel < SitePrism::Page

  def paginaRecebivel()
    find(".sidebar span", text: "Recebíveis").click
    find(".cardAdd").click
    page.assert_text('Sobre recebíveis')
  end

  def preencherCampoNaoPossui() 
    find(".v-select__selections").click
    find(".v-list-item__title", text: 'Não possui').click
  end

  def preencherCamposRequeridos(tipo_recebivel)
    find(".v-select__selections").click
    find(".v-list-item__title", text: tipo_recebivel).click
    find_by_id("credit_description").set('aaaa')
    find_by_id("total_credit").set(1)
    
    @time = Time.new
    @time = @time.to_date.next_day(30).to_time
    
    find("div[class$=v-text-field--is-booted", text: "Data de vencimento *").find("input").set (@time.strftime("%d/%m/%Y"))
  end

  def preencherCamposNaoRequeridos()
    find_by_id("debtor_name").set('aaa')
  end

  def salvarRecebivelCriado()
    click_button "Salvar informações"
    click_button 'Ok'
  end

  def excluirRecebivelCriado()
    begin  
      find("span", text: "Excluir").click
    rescue 
      find("span", text: "Excluir", wait: 60).click
    end 
    click_button 'Ok'
  end
end