class UploadDocumento < SitePrism::Page

  def paginaDocumento()
    find(".sidebar span", text: "Documentação").click
    page.assert_text('Documentos do Produtor')
  end

  def paginaEndividamento()
    find(".sidebar span", text: "Endividamento").click
    page.assert_text('Lista de endividamento')
  end

  #personalDocPic #cardFile
  def verificarCamposDocumento(estado_civil)
    # estado_civil
    page.assert_selector('#personalDocPic')
    page.assert_selector('#addressDocPic')
    page.assert_selector('#irpfPic')
    page.assert_selector('#scrPic')
    page.assert_selector('#marriageCertificatePic')
    page.assert_selector('#spousePersonalDocPic')
    page.assert_selector('#spouseIrpfPic')
    
  end
  
end