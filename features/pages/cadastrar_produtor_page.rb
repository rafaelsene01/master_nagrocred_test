class CadastrarProdutor < SitePrism::Page

  def adicionarProdutorPF(nome, cpf, estado_civil)
    begin  
      find_by_id('cardAdd').click
    rescue 
      find_by_id('cardAdd', wait: 60).click
    end 
    find_by_id('cpf_cnpj').set cpf
    find_by_id('name').set nome
    find('.v-select__selections').click
    find(".v-list-item__title", text: estado_civil).click
    click_button 'Salvar'
    click_button 'Ok'
  end

  def adicionarProdutorPJ(nome, cnpj)
    begin  
      find_by_id('cardAdd').click
    rescue 
      find_by_id('cardAdd', wait: 60).click
    end 
    find_by_id('cpf_cnpj').set cnpj
    find_by_id('name').set nome
    click_button 'Salvar'
    click_button 'Ok'
  end
  
  def verificarNomeProdutor(nome)
    @changeName = nome.downcase.gsub ' ', '_'
    return first("##{@changeName} p.subtitle-1", visible: true).text
  end

  def verificarEstadoCivilProdutor(nome)
    @changeName = nome.downcase.gsub ' ', '_'
    @texto = first("##{@changeName} p", visible: true).text
    return @texto.gsub 'Pessoa Física - ', ''
  end

  def excluirProdutor(nome)
    @changeName = nome.downcase.gsub ' ', '_'
    begin  
      first("##{@changeName} button").click
      find(".v-list-item__title", text: 'Excluir').click
      click_button 'Ok'
    rescue 
      first("##{@changeName} button", wait: 60).click
      find(".v-list-item__title", text: 'Excluir').click
      click_button 'Ok'
    end 
  end

  def verificarSeProdutorFoiExcluido(nome)
    @changeName = nome.downcase.gsub ' ', '_'
    page.assert_no_selector("##{@changeName}")
  end
  
end