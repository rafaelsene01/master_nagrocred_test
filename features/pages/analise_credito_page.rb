class AnaliseCredito < SitePrism::Page

  def abrirForm()
    click_button 'Solicitar análise'
  end

  def inputAutocompleteADDProdutor(nome)
    find_by_id('selectedClients').set nome
    find('div.v-list-item__title', text: nome).click
  end

  def selecionarConsultaBasica()
    find('#selectedClients').native.send_keys(:tab)
    check 'tipo_analise_0', allow_label_click: true
  end

  def confirmarSolicitacaoAnalise()
    first('span', text: 'Confirmar e solicitar').click
    click_button 'Ok'
  end

  def validarCriacaoAnalise(nome)
    first('.row div', text: nome)
  end

  def selecionarValidarDadosAnaliseCriada(nome, cpf, estado_civil)
    find('.row button').click

    begin  
      first('.row p', text: nome, wait: 60)
    rescue 
      first('.row span', text: 'ver relatório')
      find('.row button').click
    ensure 
      first('.row p', text: nome, wait: 60)
      first('.row p', text: cpf)
      first('.row p', text: '28/12/1971')
      @birthDate = Time.new(1971,12,28)
      @date = Time.now()
      @age = ((@birthDate - @date).abs / (3600 * 24) / 365.25).floor()
      first('.row p', text: "#{@age} anos")
      first('.row p', text: estado_civil)
    end 
  end
  
end