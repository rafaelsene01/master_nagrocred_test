class AnaliseCredito < SitePrism::Page

  def abrirForm()
    click_button 'Solicitar análise'
  end
  
end