class Navegar < SitePrism::Page

  def produtores()
    find("#menu-btn button span.v-btn__content span", text: "Produtores").click
  end

  def analiseCredito()
    find("#menu-btn button span.v-btn__content span", text: "Análise de crédito").click
  end
  
end