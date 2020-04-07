class CadastrarProdutor < SitePrism::Page

  def adicionarProdutorPF(nome, cpf, estado_civil)
    find_by_id('cardAdd').click
    find_by_id('cpfCnpj').set cpf
    find_by_id('name').set nome
    find('.v-select__selections').click
    find(".v-list-item__title", text: estado_civil).click
    click_button 'Salvar e completar'
    click_button 'Ok'
  end

  def adicionarProdutorPJ(nome, cpf)
    find_by_id('cardAdd').click
    find_by_id('cpfCnpj').set cpf
    find_by_id('name').set nome
    click_button 'Salvar e completar'
    click_button 'Ok'
  end
  
  def verificarNomeProdutor(nome)
    @changeName = nome.downcase.gsub ' ', '_'
    return find("##{@changeName} p.subtitle-1", visible: true).text
  end

  def verificarEstadoCivilProdutor(nome)
    @changeName = nome.downcase.gsub ' ', '_'
    @texto = first("##{@changeName} p", visible: true).text
    return @texto.gsub 'Pessoa Física - ', ''
  end

  def excluirProdutor(nome)
    sleep(1)
    @changeName = nome.downcase.gsub ' ', '_'
    find("##{@changeName} button").click
    find(".v-list-item__title", text: 'Excluir').click
    click_button 'Ok'
  end

  def verificarSeProdutorFoiExcluido(nome)
    @changeName = nome.downcase.gsub ' ', '_'
    page.assert_no_selector("##{@changeName}")
  end
  
end