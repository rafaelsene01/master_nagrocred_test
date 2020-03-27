class Navegar < SitePrism::Page

  def produtores()
    find_by_id("menu-produtores").click
  end

  def analiseCredito()
    find_by_id("menu-analise-credito").click
  end

  def primeiroProdutor()
    page.has_css?('.row div + div')
    find('.row div + div .card').click
  end
  
end