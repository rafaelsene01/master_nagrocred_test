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
  
  def verificarNomeProdutor()
    return find(".row div + div > p.subtitle-1").text
  end

  def verificarEstadoCivilProdutor()
    @texto = first(".row div + div > p").text
    return @texto.gsub! 'Pessoa Física - ', ''
  end

  def excluirProdutor()
    find('.row div + div button').click
    find(".v-list-item__title", text: 'Excluir').click
    click_button 'Ok'
  end
  
end